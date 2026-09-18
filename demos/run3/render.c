/*
 * render.c - framebuffer rendering with proper sprite animation.
 *
 * Character sprites use the original Run 3 frame-by-frame animation system.
 * Each character has a sprite atlas (90-130 frames) with a JSON metadata file
 * that defines exact frame positions. The animation system uses:
 *   - run: 18-frame cycle (center/left/right wall variants)
 *   - jump: single frame
 *   - fall: 8-frame cycle
 *   - land: 5-frame cycle
 *
 * Animation direction (left/center/right) depends on which wall the character
 * is on relative to the camera. State (run/jump/fall/land) depends on whether
 * the player is airborne and what happened before.
 *
 * Frame indices are stored in the assets_data.h header, baked from the
 * original SWF's JSON atlas metadata by bake_assets.py.
 */
#include <stdint.h>
#include <stddef.h>
#include "render_int.h"
/* the star sphere's raw table (baked from the original's skybox faces) */
#include "levels/skybox_data.h"
/* the baked art (tile textures, character atlases, animation ranges): a
   multi-megabyte generated header, so it is included once, here */
#include "levels/assets_data.h"

/* ==================== THE VIEWPORT (see run3.h) ====================
   Defaults are the 1280x720 the engine has always rendered, so anything that
   never calls run3_resize (the verify suites, a host that has not measured its
   canvas yet) keeps exactly the old geometry: base 960x720 at x 160..1120,
   FOCAL 495.497, centre (640, 360). */
int W = 1280, H = 720;
int BASE_W = 960, BASE_H = 720;
int BASE_X0 = 160, BASE_Y0 = 0;
int CX = 640, CY = 360;
double FOCAL = 720.0 * 0.5 / TAN_HALF_FOV; /* 495.497 */

/* Set the render target to the window's size, in pixels. The composition is
   re-derived here and NOWHERE else, so the base box, the projection centre and
   the focal length can never disagree with each other. */
void run3_resize(int w, int h) {
  if (w < 320) w = 320;
  if (h < 240) h = 240;
  if (w > MAXW) w = MAXW;
  if (h > MAXH) h = MAXH;
  W = w;
  H = h;
  /* The composition is the largest 4:3 box that fits in HALF the frame on each
     axis, i.e. the main viewport covers half the screen in x and y — a quarter
     of its area — centred, with everything outside it periphery. Height-limited
     on a wide window (the common case, so the periphery is extra WIDTH at the
     sides); width-limited on a tall one, where the periphery is extra HEIGHT.

     Because the bound is halved on BOTH axes, this is exactly half the box the
     full frame would give, so the base keeps presenting the same 72-degree
     view: the periphery is world the old frame never showed, not a rescale. */
  int halfW = W / 2, halfH = H / 2;
  if ((double)halfW * 3.0 / 4.0 <= (double)halfH) {
    BASE_W = halfW;
    BASE_H = (halfW * 3) / 4;
  } else {
    BASE_H = halfH;
    BASE_W = (halfH * 4) / 3;
  }
  BASE_X0 = (W - BASE_W) / 2;
  BASE_Y0 = (H - BASE_H) / 2;
  CX = W / 2;
  CY = H / 2;                     /* the axis is the frame centre (was H/2-2) */
  FOCAL = (double)BASE_H * 0.5 / TAN_HALF_FOV;
}
int32_t run3_base_w(void) { return BASE_W; }
int32_t run3_base_h(void) { return BASE_H; }
int32_t run3_base_x0(void) { return BASE_X0; }
int32_t run3_base_y0(void) { return BASE_Y0; }

/* ==================== PALETTE ==================== */

/* depth (rotated view space) at which a node is too close to the view plane
   for its projection to mean anything. A quad is dropped only when one of its
   corners reaches this, so the cutoff decides how far a tile may run *towards*
   the camera and still draw: a pitched and rolled camera (the staged cutscene
   angles) swings the near end of a wall tile right up to the plane, and a
   tight cutoff drops that whole tile, leaving background showing through the
   wall down the rolled side. The huge coordinates a near-plane projection
   produces are clamped to the framebuffer when the quad is filled, so only
   cull nodes sitting essentially on the plane. */
#define VIEWPLANE_EPS 25.0

static const uint32_t PAL[5][4] = {
  { rgb(10,12,26),  rgb(130,185,255), rgb(64,100,165), rgb(36,58,98) },
  { rgb(24,8,26),   rgb(255,150,235), rgb(170,84,152), rgb(104,48,94) },
  { rgb(6,20,22),   rgb(96,235,195),  rgb(48,145,120), rgb(28,92,76) },
  { rgb(26,16,8),   rgb(255,196,110), rgb(176,122,60), rgb(110,74,38) },
  { rgb(8,22,14),   rgb(150,235,110), rgb(88,152,62),  rgb(54,96,40) },
};
static const uint32_t LPAL[4] = {
  rgb(6,8,20), rgb(80,110,180), rgb(40,60,110), rgb(22,36,66)
};

/* ==================== CAMERA ==================== */
/* The chase camera is PLACED BY THE ENGINE (run3.c — see camera-spec.md): it is
   bolted to the runner, rolled so the flat facet under them is horizontal and
   panned laterally onto their own spot, so the runner never moves on screen
   and is always upright on their floor — it is the TUNNEL that rotates, pans,
   rises and morphs around them.

   This file consumes the placement. cam_x/cam_y are the camera's position in
   the ROLLED view frame (the same frame corner()/row_pt() produce), so the
   projection SUBTRACTS them instead of assuming a camera on the axis; a camera
   left on the axis would turn the tunnel into a pure spin about the screen
   centre. cam_back/cam_off are distances set by the engine — multiples of the
   facet APOTHEM, because every level carries its own tile width (0.30..3.00)
   and the framing must not zoom along a side or between checkpoints. The
   runner's own sprite is a fixed pixel size and never scales with any of this.

   tan(pitch) = (h + t*cam_back)/(t*h - cam_back), t = (CY - low)/FOCAL,
   low = the BASE box's lower third (the runner's screen line, measured from the
   4:3 base rather than the window, so it holds at every aspect),
   h = cam_off = how far the runner's wall is below the camera. */
#define VIEW_ROWS 28.0 /* rows drawn ahead: tile width must not decide it */
double cam_pitch = 0.0;
double cam_back = DCAM;  /* world units; refreshed every frame */
double cam_out = 0.0;    /* runner's distance below the camera (= h) */
double cam_x = 0.0;      /* camera x in the rolled view frame (the pan) */
double cam_y = 0.0;      /* camera y in the rolled view frame (jump follow) */
double view_z = VIEW;
double near_z = NEARZ;

/* ==================== SKY (baked star sphere) ==================== */
/* The original wraps the camera in a 6-face skybox cube (skybox0..5.png) and
   renders it into a texture behind everything. Every face is a point
   starfield, so bake_assets.py bakes each star texel as a unit direction plus
   its brightness (skybox_data.h) and we project the points here.

   Why points and not a per-pixel cube sample: the tube covers all but the far
   opening and the holes, so a megapixel of cube sampling would be thrown away
   almost every frame. Projecting one point per star costs a rotation and a
   divide each, and gives the real star pattern with true roll/pitch parallax.
   The sphere also rotates once per run so the sky is not identical every time;
   the pattern itself is the original's. */
static double sky_yaw = 0.0;
void render_init_stars(uint32_t seed) {
  sky_yaw = (double)(seed % 360u) * PI / 180.0;
}
/* stars written this frame, and how many survived the tube being drawn over
   them: the visible sky. Recorded so a suite can prove the baked star sphere
   reaches the frame instead of counting colours. */
#define SKY_MAXPIX 8192
static int sky_px_idx[SKY_MAXPIX];
static uint32_t sky_px_col[SKY_MAXPIX];
static int sky_npx = 0;
static int g_skyVis = 0;
#define SKY_DIST 300.0
/* dir (unit) -> screen, applying the camera roll then the pitch, exactly as
   corner()/row_pt() do for tube geometry: the roll is baked into x/y first. */
static void sky_project(double dx, double dy, double dz, double pitch,
                        double roll, double *sx, double *sy, int *vis) {
  double x = dx * SKY_DIST, y = dy * SKY_DIST, z = dz * SKY_DIST;
  /* A staged frame draws the sky through the SAME transform as the tube: the
     original's star sphere is a child of the scene, projected by Scene3D along
     with everything else, so it takes the authored camera rather than the
     port's chase-camera model. */
  double sd;
  if (stage_view_map(x, y, z, sx, sy, &sd)) {
    if (sd <= 1.0) { *vis = 0; *sx = 0.0; *sy = 0.0; return; }
    *vis = 1;
    return;
  }
  double c = scos(roll), s = ssin(roll);
  double xr = x * c - y * s - cam_x, yr = x * s + y * c - cam_y;
  double cp = scos(pitch), sp = ssin(pitch);
  double d = cam_back + z;
  double y1 = yr * cp - d * sp;
  double d1 = yr * sp + d * cp;
  if (d1 <= 100.0) { *vis = 0; *sx = 0.0; *sy = 0.0; return; }
  double k = FOCAL / d1;
  *sx = CX + xr * k; *sy = CY - y1 * k; *vis = 1;
}
void sky_render(uint32_t base, double pitch, double roll) {
  for (int i = 0; i < W * H; i++) fb[i] = base;
  sky_npx = 0;
  double cy = scos(sky_yaw), sy = ssin(sky_yaw);
  for (int i = 0; i < SKY_STAR_COUNT; i++) {
    const sky_star_t *st = &sky_stars[i];
      /* the baked star direction is the unit vector x 30000, so it is already
       the sky sphere's radius in world pixels */
    double dx = (double)st->x, dy = (double)st->y,
           dz = (double)st->z;
    double wx = dx * cy - dz * sy, wz = dx * sy + dz * cy;
    double sx, syy;
    int vis;
    sky_project(wx, dy, wz, pitch, roll, &sx, &syy, &vis);
    if (!vis) continue;
    int ix = (int)sx, iy = (int)syy;
    if (ix < 0 || ix >= W || iy < 0 || iy >= H) continue;
    int b = (int)st->b;
    /* faint stars fade toward the sky colour so the sphere reads as depth
       rather than a flat sprinkle of dots */
    int r = 120 + b * 135 / 255;
    int g = 140 + b * 115 / 255;
    int bl = 190 + b * 65 / 255;
    uint32_t col = rgb(r, g, bl);
    fb[(uint32_t)iy * W + (uint32_t)ix] = col;
    if (sky_npx < SKY_MAXPIX) {
      sky_px_idx[sky_npx] = iy * W + ix;
      sky_px_col[sky_npx] = col;
      sky_npx++;
    }
    if (b >= 200) { /* the brightest stars are a 2x2 block */
      int xs[3] = { ix + 1, ix, ix + 1 };
      int ys[3] = { iy, iy + 1, iy + 1 };
      for (int q = 0; q < 3; q++) {
        if (xs[q] < 0 || xs[q] >= W || ys[q] < 0 || ys[q] >= H) continue;
        fb[(uint32_t)ys[q] * W + (uint32_t)xs[q]] = col;
        if (sky_npx < SKY_MAXPIX) {
          sky_px_idx[sky_npx] = ys[q] * W + xs[q];
          sky_px_col[sky_npx] = col;
          sky_npx++;
        }
      }
    }
  }
}
/* count the stars the tube did not cover — the sky actually on screen */
void sky_count_visible(void) {
  int n = 0;
  for (int i = 0; i < sky_npx; i++)
    if (fb[sky_px_idx[i]] == sky_px_col[i]) n++;
  g_skyVis = n;
}
int32_t run3_sky_visible(void) { return g_skyVis; }

/* The frame's projection, exposed for the verifier: where the camera in force
   puts a world point (and its depth). The suites measure the tube's geometry
   through this instead of through a drawn sprite, whose box also carries the
   actor's own tilt (StageActor.updateBillboard) and so cannot be read back as
   a place in the tunnel. */
static void proj(double x, double y, double z, double *sx, double *sy, double *dd);
int stage_view_map(double x, double y, double z, double *sx, double *sy, double *dd);
static double g_probeX = 0.0, g_probeY = 0.0, g_probeD = 0.0;
void run3_stage_project(double x, double y, double z) {
  proj(x, y, z, &g_probeX, &g_probeY, &g_probeD);
}
double run3_probe_x(void) { return g_probeX; }
double run3_probe_y(void) { return g_probeY; }
double run3_probe_d(void) { return g_probeD; }

/* ==================== PROJECTION ==================== */

/* project a tube-space point through the chase camera (see CAMERA above) */
/* the pitch that puts a point cam_off below the camera on the BASE box's lower
   third (small-angle atan to 3rd order). The line is measured from the 4:3 base,
   never from the raw window: on a wide window 2H/3 of the WINDOW would slide the
   runner down as the periphery grew, and on a tall one it would drag it up. */
static double cam_pitch_for(double off, double back) {
  double low = (double)BASE_Y0 + 2.0 * (double)BASE_H / 3.0;
  double t = ((double)CY - low) / FOCAL;
  double x = (off + t * back) / (t * off - back);
  return x - x * x * x / 3.0;
}

/* ---- STAGED-SCENE CAMERA (the original's model, see run3.c) ----
   A staged frame draws the level UNROTATED (G.rot = 0) and gives the camera
   the authored position + quaternion. The view basis is the renderer's own:
   looks down -z with +y up (Billboard.lookAt orients `position - target` to
   the camera's -z). The quaternion's ROLL component (its twist about the
   bore) becomes the view roll, and its pitch/yaw tilt the bore on screen —
   decomposed the same way `LevelView` reads a camera quaternion back as
   Euler angles. All of it collapses to identity = straight down the bore. */
double stage_cam_z = 0.0;      /* the authored bore slide (engine units) */
double stage_quat[4] = {0.0, 0.0, 0.0, 1.0};
/* the gauge in force for the frame being drawn (STAGE_GAUGE for an AUTHORED
   camera, 0 for the fallback path — a scene with no authored camera is shot in
   the port's own frame, which is already the level's frame with the runner's
   facet down, so no gauge applies) */
static double stage_gauged = 0.0;
/* the gauge actually in force this frame, in radians (host debug/verification
   seam: it is the number that decides the frame's roll) */
double run3_stage_gauge(void) { return stage_gauged; }
/* The port's frame vs the original's. The port's own layout puts side s's
   midpoint at -PI/2 + TAU*s/n (camera-spec 4.1), while the original indexes
   sides by the angle of the point turned into the LEVEL's own frame:
   TunnelLayout3D.getIndexNearest takes `atan2(y, x)` (mirrored: `atan2(y, -x)`)
   and rounds it by TAU/n, so side s sits at TAU*s/n -- on the +x axis, a
   quarter turn the other way. GAMEPLAY cannot see the difference: turning the
   world by a constant and the camera by the same constant is the same picture,
   which is why the roll only ever pinned the STEPS. A staged frame is viewed
   through the AUTHORED camera, whose position and rotation are absolute in the
   original's frame, so the port has to put its own world into that frame --
   rotate every world offset by +PI/2 about the bore. It moves the cast and the
   props around the tube but not the tube, which is why the world places read
   correctly while the shot did not. */
#define STAGE_GAUGE (PI / 2.0 + PI)
   /* The gauge is the cross-section QUARTER turn the original's frame needs
      (`PI/2`) PLUS a HALF TURN — the roll-out the scenes are presented with.

      The quarter turn is the part that matters for correctness and is pinned
      by verify_stage.js's cross-section assertion: it makes the port's ring
      index the original's side index, which is what puts an actor placed by
      `placeAt(ring, row)` on the wall the scene named.

      The half turn on top of it is the scene's own presentation: a frame
      rolled 180 degrees about the bore, i.e. exactly the 2D rotation of the
      picture (not a mirror - a mirror would reverse every other turn in the
      scene too). Its inverse in run3.c is `R(-(PI/2+PI)) = R(PI/2)`, i.e. the
      camera's pan converts as `(x, y) -> (-y, x)`. The gauge and that inverse
      have to move TOGETHER: turning the world without turning the camera's
      own place leaves the camera in a spot the scene never set. */
/* The inverse of the authored camera's rotation: the quaternion that carries a
   world offset into the camera's view basis, i.e. the CONJUGATE, applied
   exactly as the original applies it (`QuaternionUtils.rotateVector`: a child
   of the camera is turned into the camera's frame by its inverse rotation).

   The whole orientation is carried here rather than decomposed into Euler
   angles. The bake builds the authored quaternions as `Rx*Ry*Rz`
   (bake_cutscenes.euler_quat), so the x/y/z Euler components are the angles
   about x/y/z IN THAT ORDER; reading them back by name and applying each about
   a different axis (x as the view roll's axis, y about x, z about y) turned a
   scene's roll about the bore into a tilt ACROSS it -- the bore's tilt about
   the tunnel axis came out as a tilt of the tunnel. */
static double st_ux = 0.0, st_uy = 0.0, st_uz = 0.0, st_uw = 1.0;
/* the roll the space layers and the stars are drawn with (space.c): G.rot in
   gameplay, the staged frame's own screen roll in a cutscene */
double view_roll = 0.0;

static void stage_cam_basis(void) {
  double qx = stage_quat[0], qy = stage_quat[1];
  double qz = stage_quat[2], qw = stage_quat[3];
  double n = ssqrt(qx * qx + qy * qy + qz * qz + qw * qw);
  if (n < 1e-9) { st_ux = st_uy = st_uz = 0.0; st_uw = 1.0; return; }
  st_ux = -qx / n; st_uy = -qy / n; st_uz = -qz / n; st_uw = qw / n;
}

/* ---- THE STAGED VIEW TRANSFORM, the original's own, verbatim ----
   `Scene3D.project` does `view * projection` on the point and then
   `Vector3D.project()` (divide by w), where the view is
   `invert(camera.getMatrix3D())` — i.e. `R^-1 * (p - camPos)`, the camera's
   POSITION subtracted in world axes first (its authored x/y pan and its z are
   a place in the tunnel, not a screen offset, which is only the same thing
   while the camera's rotation is identity) and then the offset turned into the
   view basis: first the quarter-turn gauge (about the bore), then the inverse
   of the authored rotation, as ONE quaternion turn rather than a pitch/yaw/roll
   chain.

   The projection is `perspectiveFieldOfViewLH(fovY, surface.width/height, 15,
   3000)` followed by `appendScale(1,-1,1)`, whose rawData the port's
   Matrix3D.transformVector3Into4 reads as
     out.x = (1/tan(fov/2))/aspect * vx
     out.y = -(1/tan(fov/2)) * vy          <- the appended Y scale
     out.w = vz                            <- m[11] = 1 (left-handed)
   and `StageActor.getBounds` turns NDC into pixels with
     screen = ((ndc.x + 1)/2 * W, (1 - ndc.y)/2 * H).
   Substituting (FOCAL = H/2/tan(fov/2), and (1/tan)*W/(2*aspect) = H/2/tan):
     sx = W/2 + vx * FOCAL / vz
     sy = H/2 + vy * FOCAL / vz
   — the ORIGINAL's view +y goes DOWN the screen. Gameplay draws the port's own
   frame (+y up, `sy = CY - y*k`); a staged frame has been mapped into the
   original's frame by the gauge above, so it must use the original's sign.
   Subtracting here mirrored the whole shot, and a mirror reverses every
   rotation: a scene that rolled its camera about the bore came out rolling the
   other way, which is the tilt-along-the-tunnel-axis error.
   (The centre is the 4:3 BASE box's centre, which is the frame centre too —
   the gameplay CY offset the port used to carry (H/2 - 2) is gone; the axis is
   exactly the composition's centre, as in the original.)

   Returns 1 for a staged frame, 0 otherwise so the caller can use the port's
   own chase camera. The tube, the cast, the props, the sky sphere and the
   space layers ALL come through here: in the original they are children of the
   one scene and `Scene3D.project` places every one of them. */
int stage_view_map(double x, double y, double z, double *sx, double *sy, double *dd) {
  if (G.state != S_CUT && G.state != S_GATE) return 0;
  double xw = x - cam_x, yw = y - cam_y;
  double cg = scos(stage_gauged), sg = ssin(stage_gauged);
  double vx = xw * cg - yw * sg;
  double vy = xw * sg + yw * cg;
  double vz = z - stage_cam_z;
  /* QuaternionUtils.rotateVector(conj(q), v): the standard turn matrix
     (1-2(y^2+z^2), 2(xy-wz), 2(xz+wy); ... ) on the conjugates above. */
  double qx = st_ux, qy = st_uy, qz = st_uz, qw = st_uw;
  double x3 = (1.0 - 2.0 * (qy * qy + qz * qz)) * vx
            + 2.0 * (qx * qy - qw * qz) * vy
            + 2.0 * (qx * qz + qw * qy) * vz;
  double y2 = 2.0 * (qx * qy + qw * qz) * vx
            + (1.0 - 2.0 * (qx * qx + qz * qz)) * vy
            + 2.0 * (qy * qz - qw * qx) * vz;
  double z3 = 2.0 * (qx * qz - qw * qy) * vx
            + 2.0 * (qy * qz + qw * qx) * vy
            + (1.0 - 2.0 * (qx * qx + qy * qy)) * vz;
  double depth = z3;
  double k = FOCAL / depth;
  /* the BASE box's centre — the same point gameplay projects about, and the
     frame centre, because the box is centred on both axes */
  *sx = (double)CX + x3 * k;
  *sy = (double)CY + y2 * k;
  if (dd) *dd = depth;
  return 1;
}

static void proj(double x, double y, double z, double *sx, double *sy, double *dd) {
  if (stage_view_map(x, y, z, sx, sy, dd)) return;
  /* x/y arrive in the rolled view frame; the camera is off the axis (panned
     onto the runner), so subtract its own position first */
  double d = cam_back + z;
  double xr = x - cam_x;
  double yr = y - cam_y;
  double c = scos(cam_pitch), s = ssin(cam_pitch);
  double y1 = yr * c - d * s;
  double d1 = yr * s + d * c;
  double k = FOCAL / d1;
  *sx = CX + xr * k; *sy = CY - y1 * k;
  if (dd) *dd = d1;
}
static void corner(int c, double *x, double *y, double R) {
  double a = -PI/2.0 - PI/(double)G.shape + TAU*(double)c/(double)G.shape + G.rot;
  *x = R * scos(a); *y = R * ssin(a);
}
static double tube_R(void) {
  return (double)G.k * G.tile / (2.0 * ssin(PI / (double)G.shape));
}
static int mask_at(int side, int row) {
  return run3_missmask(side, row);
}

/* low power tunnel check */
static int is_low_power(void) {
  return (G.theme == 5);
}

/* ==================== CHARACTER RENDERING ==================== */

/*
 * Look up a single frame from a character's baked atlas.
 * Returns pixel pointer and sets *w, *h. Returns NULL if invalid.
 */
/* the baked art, reachable from the other renderer files (space.c) without
   them having to include the multi-megabyte assets_data.h */
const uint32_t *assets_tex(int id, int *w, int *h) {
  switch (id) {
    case TEX_CRUMBLING:  *w = tex_crumbling_W;  *h = tex_crumbling_H;  return tex_crumbling;
    case TEX_WARNSTRIPES: *w = tex_warnstripes_W; *h = tex_warnstripes_H; return tex_warnstripes;
    case TEX_ICETILE:    *w = tex_icetile_W;    *h = tex_icetile_H;    return tex_icetile;
    case TEX_RUINEDTILE: *w = tex_ruinedtile_W; *h = tex_ruinedtile_H; return tex_ruinedtile;
    case TEX_BALLOON:    *w = tex_balloon_W;    *h = tex_balloon_H;    return tex_balloon;
    case TEX_PLUS:       *w = tex_plus_W;       *h = tex_plus_H;       return tex_plus;
    case TEX_ARROW:      *w = tex_arrow_W;      *h = tex_arrow_H;      return tex_arrow;
    case TEX_BATTERY:    *w = tex_battery_W;    *h = tex_battery_H;    return tex_battery;
    case TEX_ACCEL:      *w = tex_accel_W;      *h = tex_accel_H;      return tex_accel;
    case TEX_WORMHOLE:   *w = tex_wormhole_W;   *h = tex_wormhole_H;   return tex_wormhole;
    default: *w = 0; *h = 0; return NULL;
  }
}
uint32_t theme_main(int th) {
  if (th < 0) th = 0;
  if (th > 4) th = 4;
  return PAL[th][1];
}

static const uint32_t *get_char_frame(int char_id, int compact_idx, int *w, int *h) {
  if (char_id < 0 || char_id >= CHAR_COUNT) { *w = 0; *h = 0; return NULL; }
  if (compact_idx < 0 || compact_idx >= char_frame_counts[char_id]) {
    *w = 0; *h = 0; return NULL;
  }
  const uint32_t *pix = char_frame_data[char_id][compact_idx];
  *w = char_frame_widths[char_id][compact_idx];
  *h = char_frame_heights[char_id][compact_idx];
  return pix;
}

/*
 * Determine animation state from game state:
 *   STATE_RUN  - running on the ground
 *   STATE_JUMP - going up (jv > 0)
 *   STATE_FALL - falling (jv <= 0 and airborne)
 *   STATE_LAND - just landed (small grace period after landing)
 */
static int anim_state_from_game(void) {
  if (G.state == S_DEAD) return STATE_FALL;
  /* airborne includes the final approach (jump in (0,0.05] while plummeting),
     so there is no 1-frame RUN flash between FALL and LAND */
  if (G.jump > 0.5 || G.jv > 20.0 || G.jv < -20.0) {
    if (G.jv > 20.0) return STATE_JUMP;
    else return STATE_FALL;
  }
  if (G.landT > 0.0) return STATE_LAND;
  return STATE_RUN;
}

/*
 * Lean into the strafe: the camera rolls so the runner's wall is always at
 * the bottom of the screen, so wall-relative left/center/right is always
 * CENTER by construction (the old code compared the side to itself).
 * Lateral velocity gives the visible lean instead: ring+ is screen-right.
 */
static int anim_dir_from_tube(void) {
  if (G.vRing > 0.5) return DIR_RIGHT;
  if (G.vRing < -0.5) return DIR_LEFT;
  return DIR_CENTER;
}

/*
 * Draw the character with proper animation.
 * Uses the animation ranges table baked from the original Run 3 source.
 */
/* The original's spritesheet size rule, defined below with the cast: the
   runner on the track and a cutscene's cast are the same characters in the
   same world, so both are one spritesheet scale through one projection. */
static double stage_sprite_h(double frame_h, double dd);
static double stage_char_h(double dd);
static void draw_runner(void) {
  /* The runner's own point on the rolled tube. The camera was panned onto
     exactly this point and raised with their lift, so the projection puts
     them back at the screen centre / low third in every frame: they never
     move on screen (except a cutscene), and it is the level that rotates,
     pans and changes shape around them. */
  double mx = run3_runner_world_x(), my = run3_runner_world_y();

  int dead = (G.state == S_DEAD);
  /* the lift is the engine's, so the camera follows it one-for-one */
  double lift = run3_runner_lift();
  double shrink = 1.0;
  if (dead) {
    /* falling out of the tunnel: drift away and shrink over VOID_TIME (the
       drift is already in run3_runner_lift) */
    double dd = G.fallT; if (dd > VOID_TIME) dd = VOID_TIME;
    shrink = 1.0 - dd*0.16; if (shrink < 0.25) shrink = 0.25;
  }
  double gx,gy,px,py,rdd = 0.0;
  proj(mx,my,0.0,&gx,&gy,&rdd);
  proj(mx,my+lift,0.0,&px,&py,NULL);

  /* The character's screen size is the original's own: the spritesheet scale
     (0.45681063122923593 world pixels per source pixel, the original's own
     constant) seen through the camera's perspective — the SAME rule the
     cutscene cast uses. The old fixed 24px-at-360p was the port's invention
     and drew the runner at about two thirds of their real size against the
     tunnel they run in. */
  double charH = stage_char_h(rdd);        /* a character's screen height here */

  /* contact shadow — it belongs to the character, so it is sized from them */
  double jh = G.jump / 100.0, shr = 1.0/(1.0+5.0*jh);
  double baseR = 0.30 * charH;
  double rxS = baseR*shr*(dead?shrink:1.0), ryS = rxS*0.45;
  fill_shadow((int)gx,(int)(gy+rxS*0.1),(int)rxS,(int)ryS,
              0.55*(dead?shrink:1.0)*(0.5+0.5*shr));

  if (dead) {
    int ds = (int)(0.29 * charH * shrink);
    if (ds < 1) ds = 1;
    blit_sprite((int)px-ds/2,(int)py-ds/2,ds, tex_ruinedtile_H*ds/(tex_ruinedtile_W>0?tex_ruinedtile_W:1),
                tex_ruinedtile, tex_ruinedtile_W, tex_ruinedtile_H, shrink);
    return;
  }

  /* ===== ANIMATION STATE MACHINE ===== */
  int cm = G.charm;
  if (cm >= CHAR_COUNT) cm = 0;

  int state = anim_state_from_game();
  int dir = anim_dir_from_tube();

  /* Look up the animation range */
  anim_range_t ar = CHAR_ANIM_RANGE(cm, state, dir);

  /* Crisp 20 fps in every state (JUMP holds its single frame),
     independent of game speed. */
  int fi = 0;
  if (ar.length > 0 && state != STATE_JUMP) {
    fi = (int)(G.animT * 20.0) % ar.length;
  }

  int compact_idx = ar.start + fi;
  int fw = 0, fh = 0;
  const uint32_t *pix = get_char_frame(cm, compact_idx, &fw, &fh);
  if (!pix || fw <= 0 || fh <= 0) {
    /* fallback: draw a small colored rectangle */
    fill_rect((int)px - 4, (int)py - 12, 8, 12, rgb(200, 200, 200));
    return;
  }

  /* the frame's real size in the world, seen from the chase camera */
  int spriteH = (int)(stage_sprite_h((double)fh, rdd) * shrink);
  if (spriteH < 1) spriteH = 1;
  int spriteW = spriteH * fw / (fh > 0 ? fh : 1);
  if (G.jump > 0.0) {
    double stretch = 1.0 + 0.12 * ssin(G.jump * 0.03);
    spriteH = (int)(spriteH * stretch);
    spriteW = (int)(spriteW / stretch);
  }

  int drawX = (int)px - spriteW / 2;
  int drawY = (int)py - spriteH;
  /* in-place run cycle: a couple of pixels of bounce, SPRITE ONLY — the
     camera does not follow it, so the runner stays where they were put */
  if (state == STATE_RUN)
    drawY += (int)(spriteH * 0.03 * ssin(G.animT * 13.0));

  /* blit with optional horizontal mirror */
  if (ar.mirror) {
    blit_sprite_mirrored(drawX, drawY, spriteW, spriteH, pix, fw, fh, 1.0);
  } else {
    blit_sprite(drawX, drawY, spriteW, spriteH, pix, fw, fh, 1.0);
  }

  /* low power tunnel: dim the character slightly */
  if (is_low_power()) {
    int area = spriteW * spriteH;
    if (area > 0 && area < W * H) {
      for (int y = drawY; y < drawY + spriteH; y++) {
        if (y < 0 || y >= H) continue;
        for (int x = drawX; x < drawX + spriteW; x++) {
          if (x < 0 || x >= W) continue;
          uint32_t c = fb[(uint32_t)y * W + (uint32_t)x];
          uint32_t r = ((c>>16)&0xff) * 3 / 4;
          uint32_t g = ((c>>8)&0xff) * 3 / 4;
          uint32_t b = (c&0xff) * 3 / 4;
          fb[(uint32_t)y * W + (uint32_t)x] = (c & 0xff000000u) | (r<<16) | (g<<8) | b;
        }
      }
    }
  }
}

/* test seam: where the runner lands on screen through the REAL projection.
   The camera is panned onto the runner, so this is (CX, 2H/3) in every
   gameplay frame — a camera left on the axis fails here. It rebuilds the
   frame's camera state from the engine's placement, so it is also valid
   before the first frame has been drawn. */
double run3_cam_pitch(void) { return cam_pitch; } /* staged 0, chase otherwise */
void run3_runner_screen(double *sx, double *sy) {
  cam_back = run3_cam_back();
  cam_out  = run3_cam_off();
  cam_x    = run3_cam_x();
  cam_y    = run3_cam_y();
  cam_pitch = cam_pitch_for(cam_out, cam_back);
  double mx = run3_runner_world_x(), my = run3_runner_world_y();
  proj(mx, my + run3_runner_lift(), 0.0, sx, sy, NULL);
}

/* ==================== STAGED CUTSCENE CAST ==================== */
/* outlined rect lives with the map helpers below */
/* Actors/props are placed by the host per timeline segment (ring = tiles
   around the tube, zrow = rows ahead of the staging camera) and drawn in
   S_CUT instead of the runner. Actor art is the gameplay run stance
   (cutscene-only pose sheets are not extractable); motion comes from the
   authored per-segment positions, linearly interpolated by the host. */
/* Props are measured in character heights (`size`, from the original's own
   panel pixel sizes), so a prop and a character at the same depth read against
   each other the way they do in the original; sizing props in TILES instead
   made every panel enormous next to the cast (a 2.4-tile map projected to ~6
   character heights).

   ---- THE STAGED SPRITE'S OWN SIZE, straight from the original ----
   `StageActor` builds its spritesheet quad at
     (spriteSourceSize.x, spriteSourceSize.y, frame.w, frame.h) * 0.45681063122923593
   world pixels — its own constant, in the same world pixels the level's own
   geometry is in (a tile is `tileWidth` of them). 1 engine unit is 100 of
   those, and an engine unit IS a world pixel (run3.h), so a frame is simply
   0.45681063122923593 units per source pixel of the baked art. Nothing in a
   cutscene rescales the cast: its
   PLACE is authored, its size is the game's, so its screen height is simply
   what the authored camera's own perspective makes of that size.

   The frame is the CROPPED frame the animation is showing (the same thing the
   original's atlas frame is), so a crouching frame really is drawn shorter
   than a standing one, exactly as in the original. */
#define STAGE_SPRITE_SCALE 0.45681063122923593
#define STAGE_PX_UNITS 1.0    /* engine units per original world pixel: 1 - the same unit */
static double stage_sprite_h(double frame_h, double dd) {
  if (!(dd > 1e-6)) return 0.0;
  return FOCAL * frame_h * STAGE_SPRITE_SCALE * STAGE_PX_UNITS / dd;
}
/* one character's screen height at depth `dd`, for things measured in
   CHARACTER HEIGHTS (a prop's `size`): the runner's own centre run frame, so a
   prop and a character at the same depth read against each other as they do in
   the original. Read once from the baked art. */
static double stage_char_h(double dd) {
  static double ref = -1.0;
  if (ref < 0.0) {
    int fw = 0, fh = 0;
    anim_range_t ar = CHAR_ANIM_RANGE(0, STATE_RUN, DIR_CENTER);
    const uint32_t *p = get_char_frame(0, ar.start, &fw, &fh);
    ref = (p && fh > 0) ? (double)fh : 76.0;
  }
  return stage_sprite_h(ref, dd);
}
/* the tube radius the last staged frame was drawn at, so the speech overlay can
   place a tail on the cast with the same projection the cast was drawn by */
static double g_stageR = 0.0;
typedef struct { int ch; double ring, zrow; int vis; } stage_actor_t;
typedef struct { int kind; double ring, zrow, size, inset; int vis; } stage_prop_t;
static stage_actor_t g_sactors[NSTAGE_ACT];
static stage_prop_t g_sprops[NSTAGE_PROP];
void run3_stage_actor(int i, int ch, double ring, double zrow, int vis) {
  if (i < 0 || i >= NSTAGE_ACT) return;
  g_sactors[i].ch = ch < 0 ? 0 : (ch >= CHAR_COUNT ? CHAR_COUNT - 1 : ch);
  g_sactors[i].ring = ring;
  g_sactors[i].zrow = zrow < 0.5 ? 0.5 : zrow;
  g_sactors[i].vis = vis ? 1 : 0;
}
void run3_stage_prop(int i, int kind, double ring, double zrow, double size, double inset, int vis) {
  if (i < 0 || i >= NSTAGE_PROP) return;
  g_sprops[i].kind = kind;
  g_sprops[i].ring = ring;
  g_sprops[i].zrow = zrow < 0.5 ? 0.5 : zrow;
  g_sprops[i].size = size <= 0.0 ? 1.0 : size;
  g_sprops[i].inset = inset < 0.0 ? 0.0 : (inset > 1.0 ? 1.0 : inset);
  g_sprops[i].vis = vis ? 1 : 0;
}
/* wall point for a ring position (shared by runner + staged cast) */
static void ring_point(double ring, double R, double *mx, double *my) {
  int n = G.shape, k = G.k;
  double tot = (double)(n * k);
  while (ring < 0.0) ring += tot;
  while (ring >= tot) ring -= tot;
  int su = wrap_side(ring, k, n);
  double f = ring / (double)k - (double)su;
  double ax, ay, bx, by;
  corner(su, &ax, &ay, R); corner(su + 1, &bx, &by, R);
  *mx = ax + (bx - ax) * f;
  *my = ay + (by - ay) * f;
}
/* A STAGED actor's or prop's cross-section point: the level's own ring point
   turned a HALF TURN ABOUT THE TUNNEL AXIS (`(x, y) -> (-x, -y)`, which is the
   same rigid turn for every radius, so it is exactly 180 degrees about the
   bore and not a mirror). Characters and props both come through here, and so
   does `stage_slot_rect`, the speaker rect the dialogue's tails are aimed at,
   so the whole cast turns together and a tail stays on the character it names.

   The turn is taken on the POINT, not on the sprite: `stage_sprite_roll` is
   handed the turned point, derives the inward radial direction from it and
   rotates the sprite into the wall the member now stands on, so its own roll
   follows the turn instead of staying pinned to the old wall. The prop inset
   is applied after the turn and only scales toward the axis, which a half turn
   leaves unchanged. `ring_point` itself is left alone: the hint route reads it
   directly and is a gameplay overlay, not a member of the cast. */
static void stage_ring_point(double ring, double R, double *mx, double *my) {
  ring_point(ring, R, mx, my);
  *mx = -*mx;
  *my = -*my;
}
/* The screen rotation of the cast and props in a STAGED frame.

   The original's billboards do not take their up axis from the camera: a
   `StageActor` sets its up to (0,-1,0) turned by the actor's OWN rotation and
   passes it as the billboard's up (StageActor.updateBillboard), so the sprite
   is aligned with the level and the CAMERA's roll tilts it on screen with the
   rest of the world. This port draws its sprites axis-aligned in screen space
   (which is why gameplay, whose level is rolled to put the runner's facet at
   the bottom, always looks upright), so a staged frame has to carry the same
   tilt by hand or the cast stands straight inside a rolled tunnel.

   The reference direction is the one an identity staged camera draws straight
   up — the view applies the gauge first, so that is `Rz(-g)*(0,1,0)` in the
   port's own frame — projected through this member's own depth (so the roll is
   perspective-correct), and the sprite's rotation is where it lands. An
   identity camera therefore yields exactly 0 and every scene keeps the look it
   had before. */
/* The screen angle of the level's OWN up axis at a point, which is what a
   staged sprite is rotated by. `StageActor.placeAt` gives the actor an up of
   `(0,-1,0)` turned by THAT RING POSITION's layout rotation, and
   `updateBillboard` hands that same vector to the billboard — so a member of
   the cast is tilted by the wall it stands on, at its own place in the tube:
   the up is the inward RADIAL direction there, not one global axis. (A single
   constant put every member at 90 degrees to the wall except the one on the
   side that constant happened to name.) */
static double stage_sprite_roll(double x, double y, double z) {
  double ux, uy;
  double r = ssqrt(x * x + y * y);
  if (r > 1e-6) { ux = -x / r; uy = -y / r; }   /* inward, i.e. toward the axis */
  else { ux = 0.0; uy = 1.0; }                  /* on the axis: fall back to +y */
  const double eps = 0.5;
  double p1x, p1y, p2x, p2y, d1, d2;
  proj(x, y, z, &p1x, &p1y, &d1);
  proj(x + ux * eps, y + uy * eps, z, &p2x, &p2y, &d2);
  double dx = p2x - p1x, dy = p2y - p1y;
  if (dx * dx + dy * dy < 1e-9) return 0.0;
  return satan2(dx, -dy);
}
static void draw_stage_actor(double R, int ch, double ring, double zrow) {
  double mx, my, px, py, dd;
  stage_ring_point(ring, R, &mx, &my);
  proj(mx, my, run3_stage_row_z(zrow), &px, &py, &dd);
  if (dd < VIEWPLANE_EPS) return;
  int cm = ch < 0 ? 0 : (ch >= CHAR_COUNT ? CHAR_COUNT - 1 : ch);
  anim_range_t ar = CHAR_ANIM_RANGE(cm, STATE_RUN, DIR_CENTER);
  int fw = 0, fh = 0;
  const uint32_t *pix = get_char_frame(cm, ar.start, &fw, &fh);
  /* the frame's real world size, seen from the authored camera */
  int spriteH = (int)stage_sprite_h((double)(fh > 0 ? fh : 1), dd);
  if (spriteH < 1) spriteH = 1;
  if (!pix || fw <= 0 || fh <= 0) {
    fill_rect((int)px - 4, (int)py - 12, 8, 12, rgb(200, 200, 200));
    return;
  }
  double roll = stage_sprite_roll(mx, my, run3_stage_row_z(zrow));
  int spriteW = spriteH * fw / (fh > 0 ? fh : 1);
  blit_sprite_rot(px, py, spriteW, spriteH, roll, pix, fw, fh, 1.0, ar.mirror, 0);
}
/* prop kinds: 0 hidden, 1 map, 5 candy, 7 TrainRide balloon.
   The map is not a decorated sheet: ComingThrough.as builds it with
   `new BitmapData(1,1,false,12364668)` (+ the vertex-colour shader
   §<!9§.§7!P§, i.e. colour only, never a texture read), so it is a flat
   panel of 0xBCAB7C and nothing else.  There is no boat or hover model to
   draw: those scenes parent their cast to an invisible transform frame. */
static void draw_stage_prop(double R, int kind, double ring, double zrow, double size, double inset) {
  if (kind == 0) return;
  double mx, my, px, py, dd;
  stage_ring_point(ring, R, &mx, &my);
  /* inset: float off the wall toward the tube axis (the map falls through
     the tube's interior and lands on the floor) */
  double k2 = 1.0 - inset;
  mx *= k2; my *= k2;
  proj(mx, my, run3_stage_row_z(zrow), &px, &py, &dd);
  if (dd < VIEWPLANE_EPS) return;
  /* width in character heights, at the cast's own world size (see stage_char_h) */
  double wpp = size * stage_char_h(dd);
  if (wpp < 2.0) wpp = 2.0;
  if (wpp > W / 2) wpp = W / 2;
  int cx = (int)px, cy = (int)py;
  /* a prop is a plane in the level (the map) or a billboard hung in it (the
     candy panel, the balloon): either way it rides the level, so it takes the
     staged frame's own tilt exactly like the cast does */
  double roll = stage_sprite_roll(mx, my, run3_stage_row_z(zrow));
  double rc = scos(roll), rs = ssin(roll);
  if (kind == 1) { /* map: flat 0xBCAB7C panel (40 x 25 in the original) */
    int w = (int)wpp, h = (int)(wpp * 0.62);
    double hx = w * 0.5, hy = h * 0.5;
    double ux4[4] = { -hx, hx, hx, -hx }, uy4[4] = { -hy, -hy, hy, hy };
    double qx[4], qy[4];
    for (int i = 0; i < 4; i++) {
      qx[i] = (double)cx + ux4[i] * rc - uy4[i] * rs;
      qy[i] = (double)cy + ux4[i] * rs + uy4[i] * rc;
    }
    fill_quad(qx[0], qy[0], qx[1], qy[1], qx[2], qy[2], qx[3], qy[3],
              rgb(188, 171, 124));
  } else if (kind == 5) { /* candy: the Candy.png panel from Candy.as */
    int w = (int)wpp;
    int h = (int)(wpp * (double)tex_candy_H / (double)tex_candy_W);
    if (h < 2) h = 2;
    blit_sprite_rot(px, py, w, h, roll, tex_candy, tex_candy_W, tex_candy_H, 1.0, 0, 1);
  } else if (kind == 7) { /* balloon: the TrainRide balloon panel (BoatRide) */
    int w = (int)wpp;
    int h = (int)(wpp * (double)tex_balloon_train_H / (double)tex_balloon_train_W);
    if (h < 2) h = 2;
    blit_sprite_rot(px, py, w, h, roll, tex_balloon_train,
                    tex_balloon_train_W, tex_balloon_train_H, 1.0, 0, 1);
  }
}
static void draw_stage(double R) {
  g_stageR = R;
  for (int i = 0; i < NSTAGE_ACT; i++)
    if (g_sactors[i].vis) draw_stage_actor(R, g_sactors[i].ch, g_sactors[i].ring, g_sactors[i].zrow);
  for (int i = 0; i < NSTAGE_PROP; i++)
    if (g_sprops[i].vis)
      draw_stage_prop(R, g_sprops[i].kind, g_sprops[i].ring, g_sprops[i].zrow,
                      g_sprops[i].size, g_sprops[i].inset);
}

/* ==================== HINT ROUTE (press H) ==================== */
/* The engine hands over a route to the end of the level as (row, ring)
   waypoints; each is pinned to the tunnel wall and drawn as a tiny grey
   billboard, so the line of dots reads as a path through the level. */
static void draw_hint(double R) {
  int hn = run3_hint_count();
  if (hn <= 0) return;
  uint32_t c = rgb(150, 150, 150);
  for (int i = 0; i < hn; i++) {
    double z = ((double)run3_hint_row(i) - G.prog) * G.tile;
    if (z < -200.0 || z > view_z) continue;
    double mx, my, px, py, dd;
    ring_point(run3_hint_ring(i), R, &mx, &my);
    proj(mx, my, z, &px, &py, &dd);
    if (dd < VIEWPLANE_EPS) continue;
    double sc = cam_back / dd;
    if (sc > 1.6) sc = 1.6;
    if (sc < 0.10) continue;
    int r = (int)(2.0 * (H / 360.0) * sc + 0.5);
    if (r < 1) r = 1;
    fill_circle((int)px, (int)py, r, c);
  }
}

/* ==================== MAIN FRAME ==================== */

/* Draw a tile's texture along the tile's OWN quad: subdivide the tile in
   world space, project every node and fill each cell with the texel its
   centre lands on. An axis-aligned sprite blit cannot follow a tile that
   runs down a wall of the tube (the quad is turned and foreshortened, so a
   blit box lands beside the tile), which is why the surface is projected
   per cell.
   The texture is drawn RAW: a crumbling tile is never tinted by the level
   palette, the wall shading or the distance fog, so it reads the same in
   every tunnel — only the tunnel's light level dims it. */
static void fill_tile_tex(double ax, double ay, double bx, double by,
                          double zFar, double zn, double jx, double jy,
                          double lightMul) {
  /* cell count from the on-screen extent, so near tiles get fine detail
     and distant ones cost almost nothing */
  double s0x, s0y, s1x, s1y;
  proj(ax, ay, zFar, &s0x, &s0y, NULL);
  proj(bx, by, zn, &s1x, &s1y, NULL);
  double wspan = s1x - s0x; if (wspan < 0.0) wspan = -wspan;
  double hspan = s1y - s0y; if (hspan < 0.0) hspan = -hspan;
  double span = wspan > hspan ? wspan : hspan;
  int sub = 2 + (int)(span / 5.0);
  if (sub > 12) sub = 12;
  for (int i = 0; i < sub; i++) {
    double u0 = (double)i / (double)sub, u1 = (double)(i + 1) / (double)sub;
    double xa = ax + (bx - ax) * u0, ya = ay + (by - ay) * u0;
    double xb = ax + (bx - ax) * u1, yb = ay + (by - ay) * u1;
    for (int j = 0; j < sub; j++) {
      double v0 = (double)j / (double)sub, v1 = (double)(j + 1) / (double)sub;
      double z0 = zFar + (zn - zFar) * v0, z1 = zFar + (zn - zFar) * v1;
      double q0x, q0y, d0, q1x, q1y, d1, q2x, q2y, d2, q3x, q3y, d3;
      proj(xa, ya, z0, &q0x, &q0y, &d0);
      proj(xb, yb, z0, &q1x, &q1y, &d1);
      proj(xb, yb, z1, &q2x, &q2y, &d2);
      proj(xa, ya, z1, &q3x, &q3y, &d3);
      if (d0 < VIEWPLANE_EPS || d1 < VIEWPLANE_EPS ||
          d2 < VIEWPLANE_EPS || d3 < VIEWPLANE_EPS) continue;
      int tx = (int)((u0 + u1) * 0.5 * (double)tex_crumbling_W);
      int ty = (int)((v0 + v1) * 0.5 * (double)tex_crumbling_H);
      if (tx < 0) tx = 0; if (tx >= tex_crumbling_W) tx = tex_crumbling_W - 1;
      if (ty < 0) ty = 0; if (ty >= tex_crumbling_H) ty = tex_crumbling_H - 1;
      uint32_t src = tex_crumbling[ty * tex_crumbling_W + tx];
      if ((src >> 24) < 10) continue; /* nothing to lay down here */
      uint32_t c = src | 0xFF000000u;
      if (lightMul < 1.0) c = mixc(c, rgb(2,3,8), 1.0 - lightMul);
      fill_quad(q0x + jx, q0y + jy, q1x + jx, q1y + jy,
                q2x + jx, q2y + jy, q3x + jx, q3y + jy, c);
    }
  }
}

/* ==================== TUBE CROSS-SECTION PER ROW ==================== */
/* A level's layout (sides n, tiles per side k, tile width, tint) is per level,
   so a checkpoint can change the tube's shape. The engine hands the renderer,
   per row, the owning level's cross-section and the neighbouring level's it
   leans toward over ROWXC_ROWS rows. Size, side count and colour therefore all
   morph over a run of solid tiles instead of snapping when the runner crosses.
   Only the shape is interpolated — the tiles are always the owning level's, so
   the mask grid and the drawn grid stay the same. */

/* wall point at perimeter fraction u of a regular n-gon (corners at u = c/n) */
static void poly_u(double u, int n, double R, double *x, double *y) {
  if (n < 1) { *x = 0.0; *y = -R; return; }
  u -= (double)(long long)u;
  if (u < 0.0) u += 1.0;
  double s = u * (double)n;
  int si = (int)s;
  if (si >= n) si = n - 1;
  double f = s - (double)si;
  double a0 = -PI / 2.0 - PI / (double)n + TAU * (double)si / (double)n;
  double a1 = a0 + TAU / (double)n;
  double rx = (1.0 - f) * scos(a0) + f * scos(a1);
  double ry = (1.0 - f) * ssin(a0) + f * ssin(a1);
  *x = R * rx;
  *y = R * ry;
}
static double row_tile(const rowcross_t *xc) {
  return xc->tile + (xc->btile - xc->tile) * xc->t;
}
/* the row's wall point at fraction u, blended between the two shapes and
   rolled into view space (the same orientation corner() used to give) */
static void row_pt(const rowcross_t *xc, double u, double *x, double *y) {
  double px, py;
  poly_u(u, xc->n, xc->R, &px, &py);
  if (xc->bn > 0 && xc->t > 0.0) {
    double qx, qy;
    poly_u(u, xc->bn, xc->bR, &qx, &qy);
    px += (qx - px) * xc->t;
    py += (qy - py) * xc->t;
  }
  double c = scos(G.rot), s = ssin(G.rot);
  *x = px * c - py * s;
  *y = px * s + py * c;
}

static void draw_runner(void);
static void draw_cut_overlay(void); /* the cutscene's dialogue, drawn by the engine */
static unsigned frameNo = 0; /* shake-jitter clock */
void render_frame(void) {
  frameNo++;
  int n = G.shape, k = G.k;
  int th = G.theme % 5;
  int lpw = is_low_power();
  /* light level applied to raw tile textures: the low-power tunnel dims them
     with everything else and they go black when the power is out; every
     other tunnel draws them full brightness (a crumble tile is never tinted
     by the level, so it stays spot-able ahead) */
  double lightMul = 1.0;
  if (lpw) lightMul = run3_power();
  uint32_t sky = lpw ? rgb(4,5,14) : PAL[th][0];
  g_sky = sky; /* exposed so tests can spot background showing through walls */

  double front = G.prog;
  /* a staged frame draws the level camera-relative with the AUTHORED camera
     (run3_stage_pos_z), which the row range below has to reach back for: the
     scene's camera can sit a couple of dozen units behind the front row */
  int staged = (G.state == S_CUT || G.state == S_GATE);
  if (staged) stage_cam_z = run3_stage_pos_z();

  /* per-row cross-sections: the shape (and tint) of the level owning each row,
     leaning toward the neighbouring level's shape over its transition run */
  rowcross_t xc0;
  if (!run3_row_cross((int)front, &xc0)) {
    xc0.n = n; xc0.k = k; xc0.tile = G.tile;
    xc0.col0 = run3_level_color0();
    xc0.R = tube_R();
    xc0.bn = -1; xc0.bk = 0; xc0.bR = xc0.R; xc0.btile = xc0.tile;
    xc0.bcol0 = xc0.col0; xc0.t = 0.0;
  }
#define XCAP 128
  static rowcross_t rxc[XCAP];
  static double rz[XCAP];
  int rBase = 0, rCount = 0;
  {
    double t0 = row_tile(&xc0);
    if (t0 < 1.0) t0 = 1.0;
    int rFar = (int)(front + view_z / t0) + 2;
    int rNear;
    if (staged) rNear = (int)(front + stage_cam_z / t0) - 4;
    else rNear = (int)(front - (cam_back + 2.0 * t0) / t0) - 2;
    int cnt = rFar - rNear + 1;
    if (cnt > XCAP) { rNear = rFar - XCAP + 1; cnt = XCAP; }
    rBase = rNear; rCount = cnt;
    for (int i = 0; i < cnt; i++)
      if (!run3_row_cross(rNear + i, &rxc[i])) rxc[i] = xc0;
    /* z of each row, accumulated outward from the camera row so a tile-width
       change stretches the tunnel smoothly instead of rescaling in place */
    int rc = (int)front;
    if (rc < rBase) rc = rBase;
    if (rc > rBase + cnt - 1) rc = rBase + cnt - 1;
    rz[rc - rBase] = ((double)rc - front) * row_tile(&rxc[rc - rBase]);
    for (int R = rc + 1; R <= rBase + cnt - 1; R++)
      rz[R - rBase] = rz[R - 1 - rBase] +
        0.5 * (row_tile(&rxc[R - 1 - rBase]) + row_tile(&rxc[R - rBase]));
    for (int R = rc - 1; R >= rBase; R--)
      rz[R - rBase] = rz[R + 1 - rBase] -
        0.5 * (row_tile(&rxc[R + 1 - rBase]) + row_tile(&rxc[R - rBase]));
  }
  /* the camera's own shape: the runner, the hint dots and the pitch use it */
  double R = xc0.R + (xc0.bR - xc0.R) * xc0.t;
  /* the runner's own distance from the axis: the camera is placed relative to
     THIS rather than the tube's nominal radius, so the framing is the same in
     a level with 0.3-wide tiles as in one with 3.0-wide tiles, and the runner
     holds the same screen row the whole way round a side */
  double rrad = run3_runner_rad();
  double rtile = xc0.tile + (xc0.btile - xc0.tile) * xc0.t;
  /* the engine placed the camera for this frame (camera-spec.md): copy its
     position into the frame's projection state */
  cam_back = run3_cam_back();
  cam_out  = run3_cam_off();
  cam_x    = run3_cam_x();
  cam_y    = run3_cam_y();
  view_z = VIEW_ROWS * rtile;
  if (view_z < 400.0) view_z = 400.0;
  near_z = -(cam_back - 45.0);
  /* Pitch: the gameplay chase camera tilts down so the runner lands at the low
     third (small-angle atan to 3rd order). A STAGED scene does not pitch the
     runner anywhere — its whole orientation is the authored quaternion (the
     roll about the bore, plus whatever pitch/yaw the scene tilted in), with
     the bore slid along z by the authored position. The level draws
     unrotated: the camera carries the turn, like the original's unparented
     Transform. */
  if (staged) {
    /* the rows are drawn CAMERA-relative (rz[] is 0 at the front row) and
       run3_stage_pos_z is already in that frame: the camera sits behind the
       front cast by the scene's own shot distance. Nothing in front of it
       (nor the tube just behind it) is clipped until the authored camera has
       actually passed */
    near_z = stage_cam_z + 50.0;
    stage_gauged = run3_stage_has_camera() ? STAGE_GAUGE : 0.0;
    /* the space layers are drawn OUTSIDE proj (their own camera model), so
       they take the frame's roll as a single angle — measured on the bore a
       little ahead of the camera, where the perspective factor is negligible */
    /* The staged cast is sized ONLY by the authored camera's own perspective
       (render.c's stage_sprite_h, which is the original's own spritesheet size
       quotient), so it grows and shrinks with the shot distance exactly as
       everything else in the frame does. The anchor that used to be applied
       here ("the front member reads at a quarter of the screen height whatever
       the distance") was the port's own invention: it threw the camera's
       authored distance away and drew every cutscene character the same size
       however far off it was staged. */
    const double *q = run3_stage_quat();
    stage_quat[0] = q[0]; stage_quat[1] = q[1];
    stage_quat[2] = q[2]; stage_quat[3] = q[3];
    stage_cam_basis();
    cam_pitch = 0.0;               /* gameplay pitch unused in a staged frame */
  } else {
    cam_pitch = cam_pitch_for(cam_out, cam_back);
    view_roll = G.rot;
  }
  /* the sky goes down first, once the camera's pitch is known, so the star
     sphere parallaxes with the same orientation the tube is drawn with */
  sky_render(sky, cam_pitch, view_roll);
  /* then what is OUTSIDE the tunnel, far to near, before the tube itself:
     the other tunnels branching off in space, then the wormhole at the end
     of the bore. Both are drawn before the wall, so the tunnel occludes them
     and they read only through the holes and the far opening — exactly how
     an opaque tube with gaps should show the space behind it. */
  space_outer();
  space_wormhole();
  uint32_t themeTile = lpw ? LPAL[1] : PAL[th][1];

  for (int ri = rBase + rCount - 1; ri >= rBase; ri--) {
    const rowcross_t *xc = &rxc[ri - rBase];
    int rn = xc->n, rk = xc->k;
    if (rn < 1 || rn > MAXN || rk < 1 || rk > MAXK) continue;
    double zc = rz[ri - rBase];
    double hz = 0.5 * row_tile(xc);
    double zFar = zc + hz, zNear = zc - hz;
    if (zFar > view_z) continue;
    if (zFar < (staged ? stage_cam_z : -cam_back) + 20.0) continue;
    double zn = zNear < near_z ? near_z : zNear;
    double fog = zFar / view_z * 0.85;
    if (fog < 0.0) fog = 0.0; if (fog > 0.85) fog = 0.85;

    int nk = rn * rk;
    /* every wall of the tube is at full brightness: no gravity shading
       (floor brighter than ceiling) and no alternating side tint. Only
       distance fog, the low-power dim and the level-to-level tint blend
       vary a tile's colour. */
    uint32_t cOwn = xc->col0 ? (xc->col0 | 0xFF000000u) : themeTile;
    uint32_t base = cOwn;
    if (xc->bn > 0 && xc->t > 0.0) {
      uint32_t cNb = xc->bcol0 ? (xc->bcol0 | 0xFF000000u) : themeTile;
      base = mixc(cOwn, cNb, xc->t);
    }
    uint32_t col = mixc(base, sky, fog);
    if (lpw) {
      /* low-power tunnel: tiles fade with the light level (the host ducks
         the music along). Runner and stars stay lit. */
      double pw = run3_power();
      if (pw < 1.0) col = mixc(col, rgb(2,3,8), (1.0 - pw) * 0.92);
    }
    for (int side = 0; side < rn; side++) {
      int mask = mask_at(side, ri);
      for (int l = 0; l < rk; l++) {
        int c = side * rk + l;
        double u0 = (double)c / (double)nk;
        double u1 = (double)(c + 1) / (double)nk;
        double ax2, ay2, bx2, by2;
        row_pt(xc, u0, &ax2, &ay2);
        row_pt(xc, u1, &bx2, &by2);
        double p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y,dd0,dd1,dd2,dd3;
        proj(ax2,ay2,zFar,&p0x,&p0y,&dd0); proj(bx2,by2,zFar,&p1x,&p1y,&dd1);
        proj(bx2,by2,zn,&p2x,&p2y,&dd2);  proj(ax2,ay2,zn,&p3x,&p3y,&dd3);
        /* pitched/rolled camera: drop only quads at the view plane */
        if (dd0 < VIEWPLANE_EPS || dd1 < VIEWPLANE_EPS ||
            dd2 < VIEWPLANE_EPS || dd3 < VIEWPLANE_EPS) continue;

        if (mask & (1u << l)) {
          /* HOLE — an authored gap, or a crumble tile that already fell
             through: the wall is simply not there, so nothing is painted.
             What stays on screen is whatever the layers before the tube left
             at these pixels — a wall row further along the tunnel, or the
             star sphere / space scene showing through the opening. Painting
             a dark quad here would read as a solid black tile and hide all
             of it, which is not what a missing tile looks like. */
        } else {
          if (run3_tile_tex(side, ri, l) == TEX_CRUMBLING) {
            /* crumbling tile: the raw cracked texture and nothing else (no
               level tint, no shading, no fog), jittering while it lets go */
            double jx = 0.0, jy = 0.0;
            double sh = run3_shake(side, ri, l);
            if (sh > 0.0) {
              /* shake while the wave reaches this tile; the wait can be long,
                 so cap the wobble */
              double amp = sh < 0.5 ? sh * 5.0 : 2.5;
              uint32_t hh = h32((uint32_t)(side * 73856093u ^ ri * 19349663u ^ l * 83492791u ^ (frameNo >> 2) * 2654435761u));
              jx = ((double)(hh & 7u) - 3.5) * 0.5 * amp;
              jy = ((double)((hh >> 3) & 7u) - 3.5) * 0.5 * amp;
            }
            fill_tile_tex(ax2, ay2, bx2, by2, zFar, zn, jx, jy, lightMul);
          } else if (run3_tile_glow(side, ri, l)) {
            /* GLOWING TILE: the original's own recipe. A `~glow` tile is an
               ordinary solid tile whose colour is its level tint interpolated
               20% toward 0xDDDDDD — `"glow" -> Color.interpolate(colour,
               14540253, 0.2)` in the tile table — and its surface IS the
               tunnel's light, so it stays lit whatever the power is: only
               distance fog fades it. The port used to draw a hot gold core
               with a brighter inner quad, which read as loose gold tiles
               floating in a black tunnel rather than a lit floor. */
            fill_quad(p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y,
                      mixc(mixc(base, rgb(0xDD, 0xDD, 0xDD), 0.2), sky, fog));
          } else {
            /* plain solid tile: the flat level tint */
            fill_quad(p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y, col);
          }
        }
      }
    }
  }

  /* cutscene staging: the tunnel is the backdrop (held frame at S_CUT /
     S_GATE) and the host-placed cast plays on it — no runner sprite */
  if (G.state == S_CUT || G.state == S_GATE) {
    draw_stage(R);
    /* the cutscene is composed ENTIRELY by the engine, full-window like
       gameplay: the tunnel and cast behind, the dialogue over them. */
    draw_cut_overlay();
  } else {
    if (G.state == S_RUN && run3_hint_on()) draw_hint(rrad);
    draw_runner();
  }
  sky_count_visible();
  space_count_visible(); /* how much of the space scene the tube left showing */
}

/* ==================== TEXT HELPERS (forward decl for map) ==================== */
#include "levels/font_data.h"
/* the font is defined with the menu, below the map, so the map needs the
   prototypes first */
static void draw_glyph(int x, int y, char ch, uint32_t col, double scale);
static int draw_text(int x, int y, const char *s, uint32_t col, double scale);
static int text_width(const char *s, double scale);
static void draw_text_centered(int y, const char *s, uint32_t col, double scale);
static int strlen_p(const char *s);

/* ==================== CUTSCENE SPEECH (the 2014 engine, ported) ====================
 *
 * The host hands over ONE FRAME's elements; the engine lays that frame out and
 * draws it. There is no dialog card and no DOM text on screen: the host keeps
 * the click target only.
 *
 * This is a port of the original's own speech engine, not an approximation of
 * it. In `runIII.swf` (the readable 2014 build) a scene holds a `Speech` object
 * as `dialog` and fills it with two kinds of element:
 *
 *   bubble  Speech.bubble(text, x, y, size, width, connection, tail)
 *           builds a `§-_----__--__§` (the panel) and, for every connection and
 *           tail, a `§--_---_--_§` (the band).
 *   label   Speech.label(text, x, y, size, width, colour)
 *           bare centred text: no panel, no band.
 *
 * COORDINATES ARE DESIGN UNITS. Main.as builds the asset scaler with
 *     new §--____-___-§(3000, 2000, true, null);
 * so the design space is 3000 x 2000 and the mapping to the stage is UNIFORM:
 *     scale = min(stageW / 3000, stageH / 2000)
 * with the design origin at the stage's centre. The port's stage is the 4:3 BASE
 * box (run3.h), so that same rule with the base box in place of the stage is
 * what is used here: the one source of every number below.
 *
 * The panel (`§-_----__--__§.§--_---_---_§`): the text block gets 10% padding a
 * side, clamped so neither axis may exceed five times the other; the ring's
 * eight points sit on the block's 5% insets plus one mid-edge point pushed out
 * by the padding; the ring is rounded by `§-_---_--___§.smooth` (its 0.33
 * factor) and filled white (0xFFFFFF) with black text.
 *
 * The band (`§--_---_--_§`) is the original's construction, constants and all:
 *     12    a connection's width              (its own `§-____-__--_-§`)
 *     40    a tail's width                    (`§-___-_--__--§`)
 *     150   the longest a tail may be         (`§-_-_____-§`)
 *     0.435 how far into a panel it attaches (`§-_----__--_§`)
 * two cubic curves bulged by 13 (a connection) or 10 (a tail) design units,
 * anchored by direction sign and bowed away from the stage centre.
 */
#define CUT_TITLE_MAX 96
#define CUT_TEXT_MAX 512
/* the original's Speech constants (`§--_---_--_§`) */
#define CUT_CONN_W     12.0
#define CUT_TAIL_W     40.0
#define CUT_TAIL_MAX   150.0
#define CUT_ANCHOR     0.435
#define CUT_BULGE_CONN 13.0
#define CUT_BULGE_TAIL 10.0
/* The scene base class' own dialog size, in design units. The 2014 build's
   base (cutscene/\u00a7--_-__-__--\u00a7) sets `dialog.<defaultSize> = 100`; the v1.13
   build's base sets 40 = 100 / 2.5, its whole UI being the 2014's / 2.5. The
   bake emits the 2014's numbers, so this is the 2014's 100. */
#define CUT_DESIGN_SIZE 100.0
/* the atlas' own em, in atlas pixels (its cell is 52 tall, its cap 39) */
#define CUT_FONT_EM 52.0
/* the design space Main.as builds its scaler with */
#define CUT_DESIGN_W 3000.0
#define CUT_DESIGN_H 2000.0
static char g_cutTitle[CUT_TITLE_MAX];
typedef struct {
  int kind;               /* 1 bubble, 2 label */
  double x, y;            /* design units, stage-centre origin */
  double size;            /* font as a fraction of the 40 design-unit default */
  double width;           /* wrap width in design units; <= 0 = auto */
  int conn, tail;         /* other element of this frame, the cast slot */
  char text[RUN3_CUT_TEXT];
  char lines[RUN3_CUT_TEXT + 64];  /* the wrapped text, NUL-separated */
  /* laid out, in screen px */
  double bx, by, bw, bh;  /* the element's box (for a bubble, its panel) */
  double em, scale, lh;   /* font em, glyph scale and line step */
  double padx, pady;      /* the panel's padding */
  double tw, th;          /* the text block */
  int nl;                 /* lines the text wrapped to */
} cut_item_t;
static cut_item_t g_cut[RUN3_CUT_MAX];
static int g_cutN = 0;
static int g_cutShown = -1, g_cutStep = 0, g_cutTotal = 0, g_cutOn = 0;
static int g_cutChars = 0; /* characters the overlay actually drew (test seam) */
char *run3_cut_title_buf(void) { return g_cutTitle; }
char *run3_cut_text_buf(int32_t i) {
  /* an out-of-range write lands in element 0 rather than nowhere */
  if (i < 0 || i >= RUN3_CUT_MAX) i = 0;
  return g_cut[i].text;
}
void run3_cut_item(int32_t i, int32_t kind, double x, double y, double size,
                   double width, int32_t conn, int32_t tail) {
  if (i < 0 || i >= RUN3_CUT_MAX) return;
  cut_item_t *it = &g_cut[i];
  it->kind = kind == 2 ? 2 : 1;
  it->x = x;
  it->y = y;
  it->size = size > 0.0 ? size : 1.0;
  it->width = width;
  it->conn = conn;
  it->tail = tail;
}
void run3_cut_frame(int32_t n, int32_t step, int32_t total, int32_t on) {
  if (n < 0) n = 0;
  if (n > RUN3_CUT_MAX) n = RUN3_CUT_MAX;
  g_cutN = on ? (int)n : 0;
  g_cutStep = step;
  g_cutTotal = total;
  g_cutOn = on ? 1 : 0;
}
int32_t run3_cut_chars(void) { return g_cutChars; }
/* one bubble, for callers that were here before the frame API existed */
void run3_cut_show(double x, double y, int small, int shown, int step, int total, int on) {
  run3_cut_item(0, 1, x, y, small ? 0.65 : 1.0, 0.0, -1, -1);
  g_cutShown = shown;
  run3_cut_frame(1, step, total, on);
}
/* the design -> screen scale: the original's own rule (Main.as:
   `new §--____-___-§(3000, 2000, true, null)`), with the port's stage — the
   4:3 BASE box — in place of the original's window. Every dialogue number below
   is derived from this, so the composition is the same at any window shape. */
static double cut_fit(void) {
  double fw = (double)BASE_W / CUT_DESIGN_W, fh = (double)BASE_H / CUT_DESIGN_H;
  return fw < fh ? fw : fh;
}
/* The dialogue's own text path.

   draw_text() advances a whole pixel a glyph and pads each by one more: at menu
   sizes that is invisible, but the dialogue's font is 40 design units — a
   handful of screen px inside the base box — where the +1 would be a third of a
   glyph and every wrap and centring would come out wrong. These advance by the
   glyph's own width and round only the origin. */
static int cut_text_w(const char *s, double scale) {
  double cx = 0.0;
  while (*s) {
    int ci = (int)*s - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS) cx += (double)font_glyphs[ci].w;
    s++;
  }
  return (int)(cx * scale + 0.5);
}
static void cut_draw_text(int x, int y_top, const char *s, uint32_t col, double scale) {
  int max_yoff = 0;
  for (const char *p = s; *p; p++) {
    int ci = (int)*p - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS && font_glyphs[ci].yoff > max_yoff)
      max_yoff = font_glyphs[ci].yoff;
  }
  int baseline = y_top + (int)((double)max_yoff * scale + 0.5);
  double cx = (double)x;
  for (; *s; s++) {
    int ci = (int)*s - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS) {
      draw_glyph((int)(cx + 0.5), baseline, *s, col, scale);
      cx += (double)font_glyphs[ci].w * scale;
    }
  }
}
/* greedy word wrap: writes NUL-separated lines into out, returns the count.
   The original lets its own TextField do this (wordWrap is switched on as soon
   as a width is given), so the rule is the same one: break at the last space
   that still fits, else mid-word. maxW <= 0 means no wrapping. */
static int cut_wrap(char *out, int cap, const char *in, double scale, int maxW) {
  int nl = 0, o = 0;
  const char *p = in;
  while (*p && nl < 32) {
    int best = 0;            /* chars on this line */
    int lastSpace = -1;
    int i = 0;
    while (p[i] && p[i] != '\n') {
      char tmp[RUN3_CUT_TEXT + 1];
      int n = i + 1;
      if (n > RUN3_CUT_TEXT) n = RUN3_CUT_TEXT;
      for (int j = 0; j < n; j++) tmp[j] = p[j];
      tmp[n] = 0;
      if (maxW > 0 && cut_text_w(tmp, scale) > maxW) break;
      if (p[i] == ' ') lastSpace = i;
      i++;
    }
    if (!p[i] || p[i] == '\n') best = i;
    else best = (lastSpace > 0) ? lastSpace : i;
    if (best <= 0) best = i > 0 ? i : 1;
    if (o + best + 1 >= cap) break;
    for (int j = 0; j < best; j++) out[o++] = p[j];
    out[o++] = 0;
    nl++;
    p += best;
    while (*p == ' ') p++;
    if (*p == '\n') p++;
  }
  if (o < cap) out[o] = 0;
  return nl;
}
/* ---------- smooth closed curves ----------
   The original draws its panels and bands with Graphics.cubicCurveTo; the port
   has no path rasteriser, so each curve is flattened into a polygon and filled
   even-odd (fill_poly). */
typedef struct { double x[96], y[96]; int n; } cut_poly_t;
static void cut_poly_add(cut_poly_t *p, double x, double y) {
  if (p->n >= 96) return;
  p->x[p->n] = x;
  p->y[p->n] = y;
  p->n++;
}
static void cut_line(cut_poly_t *p, double x0, double y0, double x1, double y1) {
  (void)x0; (void)y0;   /* the start is already the polygon's current point */
  cut_poly_add(p, x1, y1);
}
static void cut_cubic(cut_poly_t *p, double x0, double y0, double x1, double y1,
                      double x2, double y2, double x3, double y3) {
  const int SEG = 8;
  for (int i = 1; i <= SEG; i++) {
    double t = (double)i / (double)SEG, u = 1.0 - t;
    double a = u * u * u, b = 3.0 * u * u * t, c = 3.0 * u * t * t, d = t * t * t;
    cut_poly_add(p, a * x0 + b * x1 + c * x2 + d * x3,
                    a * y0 + b * y1 + c * y2 + d * y3);
  }
}
/* `§-_----__--__§.§--_---_---_§`, the panel's outline.
   A text block of `tw x th` at the panel's own origin, its padding `padx/pady`;
   the ring is the block's 5% insets with a mid-edge point pushed out by the
   padding; `§-_---_--___§.smooth` (0.33) gives each point a tangent from its
   neighbours' difference, and the closed path is cubics through every point. */
static void cut_panel_path(cut_poly_t *out, double tw, double th, double padx, double pady) {
  double ix = tw * 0.05, iy = th * 0.05;
  double rx[8], ry[8], cx[8], cy[8], ox[8], oy[8];
  rx[0] = padx + ix;          ry[0] = pady + iy;
  rx[1] = padx + tw * 0.5;    ry[1] = 0.0;
  rx[2] = padx + tw - ix;     ry[2] = pady + iy;
  rx[3] = padx + tw + padx;   ry[3] = pady + th * 0.5;
  rx[4] = padx + tw - ix;     ry[4] = pady + th - iy;
  rx[5] = padx + tw * 0.5;    ry[5] = pady + th + pady;
  rx[6] = padx + ix;          ry[6] = pady + th - iy;
  rx[7] = 0.0;                ry[7] = pady + th * 0.5;
  for (int i = 0; i < 8; i++) {
    int pv = (i + 7) & 7, nx = (i + 1) & 7;
    double tx = rx[nx] - rx[pv], ty = ry[nx] - ry[pv];
    double tl = ssqrt(tx * tx + ty * ty);
    if (tl > 1e-9) { tx /= tl; ty /= tl; } else { tx = 1.0; ty = 0.0; }
    double lin = ssqrt((rx[i] - rx[pv]) * (rx[i] - rx[pv]) +
                       (ry[i] - ry[pv]) * (ry[i] - ry[pv]));
    double lout = ssqrt((rx[nx] - rx[i]) * (rx[nx] - rx[i]) +
                        (ry[nx] - ry[i]) * (ry[nx] - ry[i]));
    cx[i] = -tx * 0.33 * lin;  cy[i] = -ty * 0.33 * lin;   /* the point's `in` */
    ox[i] =  tx * 0.33 * lout; oy[i] =  ty * 0.33 * lout;  /* its `out` */
  }
  out->n = 0;
  cut_poly_add(out, rx[7], ry[7]);
  for (int i = 0; i < 8; i++) {
    int pv = (i + 7) & 7;
    cut_cubic(out, rx[pv], ry[pv], rx[pv] + ox[pv], ry[pv] + oy[pv],
              rx[i] + cx[i], ry[i] + cy[i], rx[i], ry[i]);
  }
}
/* `§--_---_--_§`: the band between two panels (a connection at 12 units) or the
   tapered arrow from a panel to the speaker (a tail at 40 units, capped at 150
   and shortened to 0.8 of the gap). Direction signs, the 0.435 anchors, the
   bow away from the stage centre and the 0.8 shortening are all the original's
   own branches, in its own order. */
static void cut_band(double x1, double y1, double w1, double h1,
                     double x2, double y2, double w2, double h2,
                     int isTail, double k, uint32_t col) {
  double c1x = x1 + w1 * 0.5, c1y = y1 + h1 * 0.5;
  double c2x = x2 + w2 * 0.5, c2y = y2 + h2 * 0.5;
  double dirx = c2x - c1x, diry = c2y - c1y;
  double dl = ssqrt(dirx * dirx + diry * diry);
  if (dl > 1e-9) { dirx /= dl; diry /= dl; } else { dirx = 1.0; diry = 0.0; }
  /* the perpendicular component of the midpoint about the stage centre: the
     direction the band bows in, i.e. away from the middle of the frame */
  double mx = (c1x + c2x) * 0.5 - (double)CX, my = (c1y + c2y) * 0.5 - (double)CY;
  double dp = mx * dirx + my * diry;
  double px = mx - dp * dirx, py = my - dp * diry;
  double pl = ssqrt(px * px + py * py);
  if (pl > 1e-9) { px /= pl; py /= pl; } else { px = -diry; py = dirx; }
  int sx = 0, sy = 0;
  if (x2 + w2 < x1) sx = -1; else if (x2 > x1 + w1) sx = 1;
  if (y2 + h2 < y1) sy = -1; else if (y2 > y1 + h1) sy = 1;
  double kk = w1 / 5.0;
  if (h1 * 0.5 < kk) kk = h1 * 0.5;
  if (!isTail) {
    if (w2 * 0.5 < kk) kk = w2 * 0.5;
    if (h2 * 0.5 < kk) kk = h2 * 0.5;
  }
  double ax = c1x + w1 * CUT_ANCHOR * (double)sx - kk * (double)sx;
  double ay = c1y + h1 * CUT_ANCHOR * (double)sy - kk * (double)sy;
  double bx = c2x - w2 * CUT_ANCHOR * (double)sx + kk * (double)sx;
  double by = c2y - h2 * CUT_ANCHOR * (double)sy + kk * (double)sy;
  if (sx != 0 || sy != 0) {
    if (sx != 0 && sy != 0) {
      ax += px * kk * 0.5; ay += py * kk * 0.5;
      bx += px * kk * 0.5; by += py * kk * 0.5;
    } else if (sx != 0) {
      double yy = (py < 0.0) ? ((y1 > y2 ? y1 : y2) + kk)
                             : (((y1 + h1 < y2 + h2) ? y1 + h1 : y2 + h2) - kk);
      ay = yy; by = yy;
      double l0 = y1 + kk, l1 = y1 + h1 - kk;
      if (ay < l0) ay = l0; else if (ay > l1) ay = l1;
      double m0 = y2 + kk, m1 = y2 + h2 - kk;
      if (by < m0) by = m0; else if (by > m1) by = m1;
    } else {
      double xx = (px < 0.0) ? ((x1 > x2 ? x1 : x2) + kk)
                             : (((x1 + w1 < x2 + w2) ? x1 + w1 : x2 + w2) - kk);
      ax = xx; bx = xx;
      double l0 = x1 + kk, l1 = x1 + w1 - kk;
      if (ax < l0) ax = l0; else if (ax > l1) ax = l1;
      double m0 = x2 + kk, m1 = x2 + w2 - kk;
      if (bx < m0) bx = m0; else if (bx > m1) bx = m1;
    }
  }
  if (isTail) {
    double dx = bx - ax, dy = by - ay;
    double L2 = dx * dx + dy * dy;
    double cap = CUT_TAIL_MAX * k;
    if (L2 > cap * cap) {
      double L = ssqrt(L2);
      bx = ax + dx / L * cap;
      by = ay + dy / L * cap;
    } else {
      bx = ax + dx * 0.8;
      by = ay + dy * 0.8;
    }
  }
  double x0 = ax < bx ? ax : bx, y0 = ay < by ? ay : by;
  ax -= x0; ay -= y0; bx -= x0; by -= y0;
  double nx = by - ay, ny = ax - bx;
  double nl = ssqrt(nx * nx + ny * ny);
  if (nl > 1e-9) { nx /= nl; ny /= nl; } else { nx = 1.0; ny = 0.0; }
  double hw = (isTail ? CUT_TAIL_W : CUT_CONN_W) * k * 0.5;
  double ex = nx * hw, ey = ny * hw;
  double a1x = ax - ex, a1y = ay - ey;   /* the near end, both edges */
  double a2x = ax + ex, a2y = ay + ey;
  double b1x = bx - ex, b1y = by - ey;   /* the far end (for a tail: the tip) */
  double b2x = bx + ex, b2y = by + ey;
  if (isTail) { b1x = bx; b1y = by; b2x = bx; b2y = by; }
  double bulge = (isTail ? CUT_BULGE_TAIL : CUT_BULGE_CONN) * k;
  double gx = px * bulge, gy = py * bulge;
  const double t = 0.25;
  cut_poly_t P;
  P.n = 0;
  cut_poly_add(&P, a1x, a1y);
  cut_cubic(&P, a1x, a1y,
            a1x + t * (b1x - a1x) + gx, a1y + t * (b1y - a1y) + gy,
            a1x + (1.0 - t) * (b1x - a1x) + gx, a1y + (1.0 - t) * (b1y - a1y) + gy,
            b1x, b1y);
  if (!isTail) cut_line(&P, b1x, b1y, b2x, b2y);
  else { gx *= 0.8; gy *= 0.8; }
  cut_cubic(&P, b2x, b2y,
            b2x + t * (a2x - b2x) + gx, b2y + t * (a2y - b2y) + gy,
            b2x + (1.0 - t) * (a2x - b2x) + gx, b2y + (1.0 - t) * (a2y - b2y) + gy,
            a2x, a2y);
  cut_line(&P, a2x, a2y, a1x, a1y);
  for (int i = 0; i < P.n; i++) { P.x[i] += x0; P.y[i] += y0; }
  fill_poly(P.x, P.y, P.n, col);
}
/* the staged cast slot's screen rect, which is what a tail points at: the
   original hands its band `actor.<screenRect()>` and the band reads the rect's
   centre and its outer edges from it, so the arrow stops at the character
   instead of running to its middle. */
static int stage_slot_rect(int slot, double *rx, double *ry, double *rw, double *rh) {
  if (slot < 0 || slot >= NSTAGE_ACT) return 0;
  if (!g_sactors[slot].vis) return 0;
  double mx, my, px, py, dd;
  stage_ring_point(g_sactors[slot].ring, g_stageR, &mx, &my);
  proj(mx, my, run3_stage_row_z(g_sactors[slot].zrow), &px, &py, &dd);
  if (dd < VIEWPLANE_EPS) return 0;
  int cm = g_sactors[slot].ch;
  anim_range_t ar = CHAR_ANIM_RANGE(cm, STATE_RUN, DIR_CENTER);
  int fw = 0, fh = 0;
  const uint32_t *pix = get_char_frame(cm, ar.start, &fw, &fh);
  if (!pix || fw <= 0 || fh <= 0) return 0;
  double h = stage_sprite_h((double)fh, dd);
  double w = h * (double)fw / (double)fh;
  /* the sprite is anchored at its feet (see draw_stage_actor) */
  *rx = px - w * 0.5;
  *ry = py - h;
  *rw = w;
  *rh = h;
  return 1;
}
static void draw_cut_overlay(void) {
  g_cutChars = 0;
  if (!g_cutOn || g_cutN <= 0) return;
  double k = cut_fit();
  /* the design origin is the stage's centre, which is the BASE box's centre (and
     so the frame's): `x = scale(x) + stageW/2 - width/2` in the original */
  double ox = (double)CX, oy = (double)CY;
  uint32_t panelCol = rgb(255, 255, 255);
  uint32_t textCol = rgb(0, 0, 0);
  uint32_t labelCol = rgb(255, 255, 255);
  /* the composition's own edges. The original has nothing to clamp to (its
     stage IS the window); the port's frame can be wider than the composition,
     so an element that would land in the periphery is held inside the 4:3 box */
  double bl = (double)BASE_X0, br = (double)(BASE_X0 + BASE_W);
  double bt = (double)BASE_Y0, bb = (double)(BASE_Y0 + BASE_H);

  /* ---- 1. measure ----
     The original builds its TextField first, sizes the panel from the field and
     only then places both. Same order here, so a bubble is always as big as its
     own line and its own wrap width say it is. */
  for (int i = 0; i < g_cutN; i++) {
    cut_item_t *it = &g_cut[i];
    it->em = CUT_DESIGN_SIZE * it->size * k;   /* format.size = scale(size) */
    it->scale = it->em / CUT_FONT_EM;
    it->lh = it->em * 1.16;
    int maxW = it->width > 0.0 ? (int)(it->width * k + 0.5) : 0;
    /* the typewriter, when a caller set one, applies to element 0 */
    char full[RUN3_CUT_TEXT + 1];
    int shown = 0;
    while (it->text[shown] && shown < RUN3_CUT_TEXT) shown++;
    int lim = (i == 0 && g_cutShown >= 0 && g_cutShown < shown) ? g_cutShown : shown;
    for (int j = 0; j < lim; j++) full[j] = it->text[j];
    full[lim] = 0;
    int nl = cut_wrap(it->lines, (int)sizeof(it->lines), full, it->scale, maxW);
    int widest = 0;
    const char *ln = it->lines;
    for (int j = 0; j < nl; j++) {
      int w = cut_text_w(ln, it->scale);
      if (w > widest) widest = w;
      ln += strlen_p(ln) + 1;
    }
    it->nl = nl;
    it->th = (double)nl * it->lh * 1.1;   /* the helper: height = textHeight*1.1 */
    if (it->kind == 2) {
      /* a label: bare text, no panel. With no width the field auto-sizes to the
         text, x1.05, which is what the original's helper does */
      it->tw = maxW > 0 ? (double)maxW : (double)widest * 1.05;
      it->padx = it->pady = 0.0;
    } else {
      /* a bubble: the field's width is the scene's own wrap width, or — with
         none — the natural width x1.05, clamped to the stage */
      if (maxW > 0) {
        it->tw = (double)maxW;
      } else {
        it->tw = (double)widest * 1.05;
        if (it->tw > (double)BASE_W) it->tw = (double)BASE_W;
      }
      /* `§-_----__--__§.§--_---_---_§`: 10% of the text block a side, and
         neither axis's padding may exceed five times the other's */
      it->padx = it->tw * 0.1;
      it->pady = it->th * 0.1;
      if (it->padx > 5.0 * it->pady) it->padx = 5.0 * it->pady;
      else if (it->pady > 5.0 * it->padx) it->pady = 5.0 * it->padx;
    }
    it->bw = it->tw + 2.0 * it->padx;
    it->bh = it->th + 2.0 * it->pady;
    it->bx = ox + it->x * k - it->bw * 0.5;
    it->by = oy + it->y * k - it->bh * 0.5;
    if (it->bx < bl) it->bx = bl;
    if (it->bx + it->bw > br) it->bx = br - it->bw;
    if (it->by < bt) it->by = bt;
    if (it->by + it->bh > bb) it->by = bb - it->bh;
  }

  /* ---- 2. the bands, behind every panel ----
     The original adds its connections and tails before the panels, so a panel
     always covers the spot its own band attaches to. */
  for (int i = 0; i < g_cutN; i++) {
    cut_item_t *it = &g_cut[i];
    if (it->tail >= 0) {
      double rx = 0.0, ry = 0.0, rw = 0.0, rh = 0.0;
      if (stage_slot_rect(it->tail, &rx, &ry, &rw, &rh))
        cut_band(it->bx, it->by, it->bw, it->bh, rx, ry, rw, rh, 1, k, panelCol);
    }
    if (it->conn >= 0 && it->conn < g_cutN && it->conn != i) {
      cut_item_t *o2 = &g_cut[it->conn];
      cut_band(o2->bx, o2->by, o2->bw, o2->bh, it->bx, it->by, it->bw, it->bh,
               0, k, panelCol);
    }
  }

  /* ---- 3. the panels over the bands, then their text ---- */
  for (int i = 0; i < g_cutN; i++) {
    cut_item_t *it = &g_cut[i];
    if (it->kind == 1) {
      cut_poly_t P;
      cut_panel_path(&P, it->tw, it->th, it->padx, it->pady);
      for (int j = 0; j < P.n; j++) { P.x[j] += it->bx; P.y[j] += it->by; }
      fill_poly(P.x, P.y, P.n, panelCol);
    }
    const char *ln = it->lines;
    for (int j = 0; j < it->nl; j++) {
      if (ln[0]) {
        int w = cut_text_w(ln, it->scale);
        int tx = (int)(it->bx + it->padx + (it->tw - (double)w) * 0.5);
        int ty = (int)(it->by + it->pady + (double)j * it->lh + it->em * 0.2);
        cut_draw_text(tx, ty, ln, it->kind == 1 ? textCol : labelCol, it->scale);
        for (const char *q = ln; *q; q++) g_cutChars++;
      }
      ln += strlen_p(ln) + 1;
    }
  }

  /* ---- 4. the overlay's own chrome ----
     The original has neither a title nor a prompt (its scenes advance the level
     themselves); the port shows them, so they are sized off the same design
     scale as the dialogue rather than off the window. */
  double chrome = 1.6 * CUT_DESIGN_SIZE * k / CUT_FONT_EM;
  int pad = (int)(BASE_W * 0.03);
  if (g_cutTitle[0])
    cut_draw_text((int)bl + pad, (int)bt + (int)(BASE_H * 0.04), g_cutTitle,
                  rgb(150, 185, 235), chrome);
  int barY = (int)bb - (int)(BASE_H * 0.05) - (int)(chrome * 26.0);
  if (g_cutTotal > 0) {
    char buf[8];
    int n = g_cutStep, m = g_cutTotal, o = 0;
    if (n > 99) n = 99;
    if (m > 99) m = 99;
    buf[o++] = (char)('0' + n / 10);
    buf[o++] = (char)('0' + n % 10);
    buf[o++] = '/';
    buf[o++] = (char)('0' + m / 10);
    buf[o++] = (char)('0' + m % 10);
    buf[o] = 0;
    cut_draw_text((int)bl + pad, barY, buf, rgb(170, 178, 195), chrome);
  }
  const char *cont = "CONTINUE >";
  cut_draw_text((int)br - pad - cut_text_w(cont, chrome), barY, cont,
                rgb(150, 185, 235), chrome);
}
/* tiny strlen for the wrap tables (the wasm build has no libc) */
static int strlen_p(const char *s) {
  int n = 0;
  while (s[n]) n++;
  return n;
}

/* ==================== MAP RENDERING ==================== */
#include "levels/map_assets.h"

/* Draw a filled circle */
/* map background: fully procedural old parchment (no baked texture).
   Warm paper base with subtle fibre grain plus black/brown age spots, all in
   2D world space so it scrolls 1:1 with the dots in both axes.
   screen_x = world_x + scrollX, screen_y = world_y + scrollY. */
#define MAP_WORLD_MINX -800
#define MAP_WORLD_W 7600
#define MAP_WORLD_MINY -500
#define MAP_WORLD_H 1800
static int map_floor4(int v) { return v >= 0 ? v >> 2 : -(((-v) + 3) >> 2); }
static void render_map_bg(int scrollX, int scrollY) {
  /* paper base with a soft world-vertical tone so the 2D pan reads */
  for (int y = 0; y < H; y++) {
    int yworld = y - scrollY;
    double t = (double)(yworld - MAP_WORLD_MINY) / (double)(MAP_WORLD_H - 1);
    if (t < 0.0) t = 0.0;
    if (t > 1.0) t = 1.0;
    uint32_t row = mixc(rgb(201,181,130), rgb(213,195,145), t);
    int ycell = map_floor4(yworld);
    int x = 0;
    while (x < W) {
      int xcell = map_floor4(x - scrollX);
      int xn = (xcell + 1) * 4 + scrollX; /* first screen x of next grain cell */
      if (xn <= x) xn = x + 1;
      if (xn > W) xn = W;
      /* subtle fibre grain: one hash per 4px cell */
      uint32_t h = h32(((uint32_t)xcell * 7349u) ^ ((uint32_t)ycell * 9119u) ^ 0x9A7Cu);
      int d = (int)(h % 13u) - 6; /* -6..+6 */
      int rr = (int)((row >> 16) & 0xff) + d;
      int gg = (int)((row >> 8) & 0xff) + d;
      int bb = (int)(row & 0xff) + (d * 3) / 4;
      if (rr < 0) rr = 0; if (rr > 255) rr = 255;
      if (gg < 0) gg = 0; if (gg > 255) gg = 255;
      if (bb < 0) bb = 0; if (bb > 255) bb = 255;
      uint32_t c = 0xFF000000u | ((uint32_t)rr << 16) | ((uint32_t)gg << 8) | (uint32_t)bb;
      for (int xx = x; xx < xn; xx++) fb[(uint32_t)y * W + (uint32_t)xx] = c;
      x = xn;
    }
  }
  /* black/brown spots and speckles in 2D world space */
  for (int i = 0; i < 620; i++) {
    uint32_t h = h32(0x51ECu ^ (uint32_t)(i * 2246822519u));
    int wx = MAP_WORLD_MINX + (int)(h % (uint32_t)MAP_WORLD_W);
    int sx = wx + scrollX;
    if (sx < -3 || sx >= W + 3) continue;
    int wy = MAP_WORLD_MINY + (int)((h >> 9) % (uint32_t)MAP_WORLD_H);
    int sy = wy + scrollY;
    if (sy < -3 || sy >= H + 3) continue;
    if (((h >> 4) & 15u) == 0) {
      /* occasional bigger black spot */
      int r = 2 + (int)((h >> 12) & 3u); /* 2..5 */
      fill_circle(sx, sy, r, rgb(38,26,14));
      fill_circle(sx, sy, r > 2 ? r - 2 : 1, rgb(24,16,8));
    } else {
      int sz = 1 + (int)((h >> 5) & 1u);
      int dk = 70 + (int)((h >> 16) & 50u);
      uint32_t c = ((h >> 7) & 1u) ? rgb(30,20,10) : rgb(dk, dk - 22, dk - 45);
      fill_rect(sx, sy, sz, sz, c);
    }
  }
}

/* draw the Run 3 world map on the canvas — free 2D pan, black circles/lines,
   discovered only, name on hover */
void render_map(void) {
  int scroll = run3_map_scroll_x();
  int scrollY = run3_map_scroll_y();
  render_map_bg(scroll, scrollY);

  /* draw each discovered tunnel's ORIGINAL drawn curve, both axes pan */
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    int n = map_wp_n[i];
    if (n < 2) continue;
    const int16_t *w = map_wp[i];
    for (int s = 0; s + 1 < n; s++) {
      int ax = w[2 * s] + scroll, ay = w[2 * s + 1] + scrollY;
      int bx = w[2 * s + 2] + scroll, by = w[2 * s + 3] + scrollY;
      if ((ax < -30 && bx < -30) || (ax >= W+30 && bx >= W+30)) continue;
      if ((ay < -30 && by < -30) || (ay >= H+30 && by >= H+30)) continue;
      if (ax == bx && ay == by) continue;
      draw_line(ax, ay, bx, by, rgb(0,0,0));
    }
  }

  /* checkpoints — every level of each discovered tunnel, along its edge.
     The tunnel reads as one continuous playable run of black dots. */
  int sel = run3_map_selected();
  int hov = run3_map_hovered();
  int hovLvl = run3_map_hovered_level();
  int selLvl = run3_map_selected_level();
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    int count = run3_map_checkpoint_count(i);
    int unlocked = run3_map_best(i);
    int r_first = count > 40 ? 2 : 4;
    int r_rest = (r_first + 1) / 2; /* trailing dots half the first dot's size */
    for (int j = 0; j < count && j <= unlocked; j++) {
      int r = (j == 0) ? r_first : r_rest;
      int cx, cy;
      run3_map_checkpoint_pos(i, j, &cx, &cy);
      cx += scroll;
      cy += scrollY;
      if (cx < -12 || cx >= W + 12 || cy < -12 || cy >= H + 12) continue;
      fill_circle(cx, cy, r, rgb(0,0,0));
      stroke_circle(cx, cy, r + 1, rgb(90,90,90));
      if (i == sel && j == selLvl) {
        stroke_circle(cx, cy, r + 4, rgb(255, 215, 80));
      } else if (i == hov && j == hovLvl) {
        stroke_circle(cx, cy, r + 4, rgb(255,255,255));
      }
    }
  }

  /* draw nodes — only discovered, black circles, horizontal scroll */
  // (sel/hov already fetched above)
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    const map_node_t *n = &map_nodes[i];
    int nx = n->x + scroll;
    int ny = n->y + scrollY;
    if (nx < -30 || nx >= W + 30) continue;
    if (ny < -30 || ny >= H + 30) continue;
    int cleared = run3_map_is_cleared(i);
    // black fill, white outline for visibility, gold dot if cleared
    if (i == sel) {
      fill_circle(nx, ny, 22, rgb(0,0,0));
      stroke_circle(nx, ny, 26, rgb(255,255,255));
      stroke_circle(nx, ny, 22, rgb(0,0,0));
      if (cleared) fill_circle(nx, ny, 6, rgb(255,215,80));
    } else if (i == hov) {
      fill_circle(nx, ny, 18, rgb(0,0,0));
      stroke_circle(nx, ny, 22, rgb(255,255,255));
      stroke_circle(nx, ny, 18, rgb(0,0,0));
      if (cleared) fill_circle(nx, ny, 6, rgb(255,215,80));
    } else {
      fill_circle(nx, ny, 14, rgb(0,0,0));
      stroke_circle(nx, ny, 16, rgb(40,40,40));
      // thin white rim for black on dark
      stroke_circle(nx, ny, 15, rgb(80,80,80));
      if (cleared) fill_circle(nx, ny, 4, rgb(255,215,80));
    }
  }

  /* hover name only — tunnel name, or name + checkpoint when over a dot */
  if (hov >= 0 && hov < MAP_TUNNEL_COUNT && run3_map_is_discovered(hov)) {
    const char *name = map_tunnel_names[hov];
    double scale = 0.38;
    char buf[40];
    int p = 0;
    for (int k = 0; name[k] && p < 24; k++) buf[p++] = name[k];
    int hx, hy;
    if (hovLvl >= 0) {
      /* checkpoint label: "Name N" anchored at the dot */
      buf[p++] = ' ';
      int num = hovLvl + 1;
      char digits[8]; int nd = 0;
      if (num <= 0) { digits[nd++] = '0'; }
      else { while (num > 0 && nd < 7) { digits[nd++] = '0' + (num % 10); num /= 10; } }
      for (int k = nd - 1; k >= 0 && p < 38; k--) buf[p++] = digits[k];
      buf[p] = '\0';
      run3_map_checkpoint_pos(hov, hovLvl, &hx, &hy);
      hx += scroll;
      hy += scrollY;
    } else {
      buf[p] = '\0';
      const map_node_t *hn = &map_nodes[hov];
      hx = hn->x + scroll;
      hy = hn->y + scrollY;
    }
    int tw = text_width(buf, scale);
    int tx = hx - tw/2;
    int ty = hy - 32;
    if (tx < 4) tx = 4;
    if (tx + tw >= W-4) tx = W - 4 - tw;
    if (ty < 4) ty = hy + 28;
    fill_rect(tx-6, ty-4, tw+12, 26, rgb(0,0,0));
    stroke_rect(tx-6, ty-4, tw+12, 26, rgb(80,80,80));
    draw_text(tx, ty, buf, rgb(255,255,255), scale);
  }

  /* header — dark ink on parchment */
  draw_text_centered(18, "WORLD MAP", rgb(48,32,16), 0.55);
  const char *hint = "Drag to pan  |  Click discovered tunnel  |  Arrow keys pan";
  int hw = text_width(hint, 0.32);
  draw_text((W - hw)/2, 48, hint, rgb(96,72,46), 0.32);
  if (scroll != 0 || scrollY != 0) {
    /* bottom-right "X: 1234  Y: -56" world offset readout */
    char sbuf[32];
    sbuf[0]='X'; sbuf[1]=':'; sbuf[2]=' ';
    int idx = 2;
    int v = scroll;
    if (v < 0) { sbuf[++idx]='-'; v=-v; }
    if (v / 10000) sbuf[++idx]='0'+((v/10000)%10);
    if (v / 1000 || idx > 2) sbuf[++idx]='0'+((v/1000)%10);
    if (v / 100 || idx > 3) sbuf[++idx]='0'+((v/100)%10);
    if (v / 10 || idx > 4) sbuf[++idx]='0'+((v/10)%10);
    sbuf[++idx]='0'+(v%10);
    sbuf[++idx]=' '; sbuf[++idx]=' ';
    sbuf[++idx]='Y'; sbuf[++idx]=':'; sbuf[++idx]=' ';
    int w2 = scrollY;
    if (w2 < 0) { sbuf[++idx]='-'; w2=-w2; }
    if (w2 / 1000) sbuf[++idx]='0'+((w2/1000)%10);
    if (w2 / 100 || idx > 8) sbuf[++idx]='0'+((w2/100)%10);
    if (w2 / 10 || idx > 9) sbuf[++idx]='0'+((w2/10)%10);
    sbuf[++idx]='0'+(w2%10);
    sbuf[++idx]='\0';
    draw_text(W - 170, H - 28, sbuf, rgb(96,72,46), 0.30);
  }
}

/* ==================== TEXT RENDERING ==================== */
#include "levels/font_data.h"

static void draw_glyph(int x, int y, char ch, uint32_t col, double scale) {
  int ci = (int)ch - FONT_FIRST_CHAR;
  if (ci < 0 || ci >= FONT_NUM_CHARS) return;
  const glyph_t *g = &font_glyphs[ci];
  int dw = (int)((double)g->w * scale), dh = (int)((double)g->h * scale);
  /* at the dialogue's design scale a glyph can fall below a pixel. Give any
     glyph that carries real ink one rather than dropping it (a period would
     otherwise vanish); a space stays undrawn, which is what advances it. */
  if (dw <= 0 && dh <= 0 && g->w > 2 && g->h > 2) { dw = 1; dh = 1; }
  else if (dw > 0 && dh <= 0 && g->h > 2) dh = 1;
  if (dw <= 0 || dh <= 0) return;
  // resting on a common baseline — y is the baseline, glyph top at y - yoff*scale
  // nearest neighbor: no smoothing, crisp texels
  int y_top = y - (int)((double)g->yoff * scale);
  for (int py = 0; py < dh; py++) {
    int sy = (py * g->h) / dh; if (sy >= g->h) sy = g->h - 1;
    int screenY = y_top + py; if (screenY < 0 || screenY >= H) continue;
    for (int px = 0; px < dw; px++) {
      int sx = (px * g->w) / dw; if (sx >= g->w) sx = g->w - 1;
      int screenX = x + px; if (screenX < 0 || screenX >= W) continue;
      uint32_t src = font_atlas[(g->y + sy) * FONT_ATLAS_W + (g->x + sx)];
      unsigned int sa = (src >> 24);
      if (sa < 10) continue;
      double a = (double)sa / 255.0;
      uint32_t dst = fb[(uint32_t)screenY * W + (uint32_t)screenX];
      int dr = (int)((dst>>16)&0xff), dg = (int)((dst>>8)&0xff), db = (int)(dst&0xff);
      int sr = (int)((col>>16)&0xff), sg = (int)((col>>8)&0xff), sb = (int)(col&0xff);
      fb[(uint32_t)screenY * W + (uint32_t)screenX] = 0xFF000000u |
        ((uint32_t)(int)(dr+(sr-dr)*a) << 16) |
        ((uint32_t)(int)(dg+(sg-dg)*a) << 8) |
        (uint32_t)(int)(db+(sb-db)*a);
    }
  }
}

static int draw_text(int x, int y_top, const char *s, uint32_t col, double scale) {
  // y_top is the TOP of the line; glyphs rest on a common baseline below it.
  // baseline = top + max_yoff*scale so the tallest glyph starts exactly at y_top.
  int max_yoff = 0;
  for (const char *p = s; *p; p++) {
    int ci = (int)*p - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS) {
      if (font_glyphs[ci].yoff > max_yoff) max_yoff = font_glyphs[ci].yoff;
    }
  }
  int baseline = y_top + (int)((double)max_yoff * scale);
  int cx = x;
  while (*s) {
    draw_glyph(cx, baseline, *s, col, scale);
    int ci = (int)*s - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS)
      cx += (int)((double)font_glyphs[ci].w * scale) + 1;
    s++;
  }
  return cx - x;
}

static int text_width(const char *s, double scale) {
  int cx = 0;
  while (*s) {
    int ci = (int)*s - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS) cx += font_glyphs[ci].w + 1;
    s++;
  }
  return (int)((double)cx * scale);
}

static void draw_text_centered(int y, const char *s, uint32_t col, double scale) {
  int sw = text_width(s, scale);
  draw_text((W - sw) / 2, y, s, col, scale);
}

/* ==================== MAIN MENU — stars bg as requested, not parchment ==================== */
void render_menu(void) {
  /* the same baked star sphere as in-game, held at a fixed tilt */
  uint32_t sky = rgb(10,12,26);
  g_sky = sky;
  cam_back = DCAM; cam_out = 0.0; view_z = VIEW; near_z = NEARZ;
  sky_render(sky, 0.12, 0.0);

  int cx = CX;
  /* The menu is a fixed 1280x720 design, TRANSLATED onto the viewport centre so
     it stays centred and clickable at any window shape. At 1280x720 the offset
     is zero, so this is the layout it has always had. run3_menu_hover runs the
     same offset, so the drawn boxes and the hit tests cannot drift apart. */
  int ox = CX - 640, oy = CY - 360;
  draw_text_centered(60 + oy, "Run 3", rgb(130, 185, 255), 1.6);
  draw_text_centered(150 + oy, "Tunnel Runner Tribute", rgb(100, 130, 180), 0.54);

  fill_rect(cx - 160, 340 + oy, 320, 60, rgb(50, 120, 60));
  draw_text_centered(351 + oy, "Play", rgb(220, 255, 220), 0.76);

  fill_rect(cx - 160, 420 + oy, 320, 60, rgb(90, 50, 140));
  draw_text_centered(436 + oy, "Infinite Mode", rgb(220, 200, 255), 0.54);

  draw_text_centered(500 + oy, "Character:", rgb(180, 180, 200), 0.49);
  int nchar = CHAR_COUNT;
  int sel = run3_menu_char();
  // bigger boxes 80x80, 90px pitch, 2 rows (9+8) — spread out.
  // i is the sprite-atlas id (the art lookup), but the BOX POSITION comes
  // from the character's slot in the original game's registry order, so the
  // grid reads in the original order (see CHAR_MENU_ORDER in run3.c).
  for (int i = 0; i < nchar; i++) {
    int pres = run3_char_pres(i);
    int row = pres / 9;
    int col = pres % 9;
    int bx = ox + 40 + col * 90;
    int by = oy + 520 + row * 100;
    if (by + 80 > oy + 700) break;
    int is_locked = run3_char_is_locked(i);
    uint32_t cc = (i == sel) ? rgb(255, 255, 255) : (is_locked ? rgb(45, 45, 60) : rgb(60, 60, 80));
    fill_rect(bx, by, 80, 80, cc);
    int fw2 = 0, fh2 = 0;
    /* preview the run-cycle lead frame, not the jump pose (compact 0) */
    anim_range_t mar = CHAR_ANIM_RANGE(i, STATE_RUN, DIR_CENTER);
    const uint32_t *pix = get_char_frame(i, mar.start, &fw2, &fh2);
    if (pix && fw2 > 0 && fh2 > 0) {
      // native resolution — same scale for all, centered, may overflow box
      int dw = fw2;
      int dh = fh2;
      int px = bx + 40 - dw / 2;
      int py = by + 40 - dh / 2;
      // dim locked characters slightly
      double alpha = is_locked ? 0.35 : 1.0;
      blit_sprite(px, py, dw, dh, pix, fw2, fh2, alpha);
    }
    if (is_locked) {
      // use locked overlay texture
      blit_sprite(bx, by, 80, 80, tex_locked, tex_locked_W, tex_locked_H, 0.92);
    }
    if (i == sel) stroke_rect(bx - 2, by - 2, 84, 84, rgb(255, 220, 50));
    else if (is_locked) stroke_rect(bx, by, 80, 80, rgb(60, 60, 80));
  }

  draw_text_centered(640 + oy, "Click to select  |  Fullscreen", rgb(100, 110, 130), 0.38);
}
