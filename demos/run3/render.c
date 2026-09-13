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
#define VIEWPLANE_EPS 0.25

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
/* The chase camera is bolted to the runner in every sense:

     * its ORIENTATION comes from the runner's own wall point (see run3.c), so
       the runner never moves on screen;
     * it also sits OFF the tube axis, on the runner's radial line, which is
       what makes the level PAN as well as spin. A camera on the axis turns the
       tunnel into a pure rotation about the screen centre, where the far end
       (which is on the axis) never moves at all;
     * its DISTANCES are multiples of the runner's radius instead of fixed
       lengths, because every level carries its own tile width (0.30..3.00): a
       fixed camera would zoom 10x between checkpoints. The runner's own sprite
       is a fixed pixel size and deliberately does not scale with any of this.

   tan(pitch) = (h + t*cam_back)/(t*h - cam_back), t = (CY - 2H/3)/FOCAL,
   h = rrad - cam_out = how far the runner's wall is below the camera. */
/* camera framing, all in multiples of the runner's radius (see above) */
#define CAM_BACK  1.25 /* camera distance behind the runner plane, in radii */
#define CAM_OUT   0.35 /* camera offset from the axis toward the runner */
#define VIEW_ROWS 28.0 /* rows drawn ahead: tile width must not decide it */
double cam_pitch = 0.0;
double cam_back = DCAM;  /* world units; refreshed every frame */
double cam_out = 0.0;
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
  double c = scos(roll), s = ssin(roll);
  double xr = x * c - y * s, yr = x * s + y * c + cam_out;
  double cp = scos(pitch), sp = ssin(pitch);
  double d = cam_back + z;
  double y1 = yr * cp - d * sp;
  double d1 = yr * sp + d * cp;
  if (d1 <= 1.0) { *vis = 0; *sx = 0.0; *sy = 0.0; return; }
  double k = FOCAL / d1;
  *sx = CX + xr * k; *sy = CY - y1 * k; *vis = 1;
}
void sky_render(uint32_t base, double pitch, double roll) {
  for (int i = 0; i < W * H; i++) fb[i] = base;
  sky_npx = 0;
  double cy = scos(sky_yaw), sy = ssin(sky_yaw);
  for (int i = 0; i < SKY_STAR_COUNT; i++) {
    const sky_star_t *st = &sky_stars[i];
    double dx = 0.01 * (double)st->x, dy = 0.01 * (double)st->y,
           dz = 0.01 * (double)st->z;
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

/* ==================== PROJECTION ==================== */

/* project a tube-space point through the chase camera (see CAMERA above) */
static void proj(double x, double y, double z, double *sx, double *sy, double *dd) {
  double d = cam_back + z;
  double yr = y + cam_out; /* camera sits at (0, -cam_out) in tube-view space */
  double c = scos(cam_pitch), s = ssin(cam_pitch);
  double y1 = yr * c - d * s;
  double d1 = yr * s + d * c;
  double k = FOCAL / d1;
  *sx = CX + x * k; *sy = CY - y1 * k;
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
  if (G.jump > 0.005 || G.jv > 0.2 || G.jv < -0.2) {
    if (G.jv > 0.2) return STATE_JUMP;
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
static void draw_runner(double rlen) {
  /* The camera roll is taken from the runner's own wall point, so it cancels
     their angle on the tube exactly: in view space they stand straight down
     from the axis at x = 0, y = -rlen. They therefore never move on screen —
     only the level rotates and changes shape around them. */
  double mx = 0.0, my = -rlen;

  int dead = (G.state == S_DEAD);
  double lift = 0.02 + G.jump;
  double shrink = 1.0;
  if (dead) {
    /* falling out of the tunnel: drift away and shrink over VOID_TIME */
    double dd = G.fallT; if (dd > VOID_TIME) dd = VOID_TIME;
    lift = 0.02 - dd*1.1; shrink = 1.0 - dd*0.16; if (shrink < 0.25) shrink = 0.25;
  }
  double gx,gy,px,py;
  proj(mx,my,0.0,&gx,&gy,NULL);
  proj(mx,my+lift,0.0,&px,&py,NULL);

  /* contact shadow — scale with resolution */
  double jh = G.jump, shr = 1.0/(1.0+5.0*jh);
  double baseR = 9.0 * (H / 360.0);
  double rxS = baseR*shr*(dead?shrink:1.0), ryS = rxS*0.45;
  fill_shadow((int)gx,(int)(gy+rxS*0.1),(int)rxS,(int)ryS,
              0.55*(dead?shrink:1.0)*(0.5+0.5*shr));

  if (dead) {
    int ds = (int)(14.0 * (H / 360.0) * shrink);
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

  /* scale to fit ~24px tall at 360p, ~48px at 720p — shrunk 25% from 32 */
  int baseH = (int)(24.0 * (H / 360.0));
  int spriteH = (int)(baseH * shrink);
  int spriteW = spriteH * fw / (fh > 0 ? fh : 1);
  if (G.jump > 0.0) {
    double stretch = 1.0 + 0.12 * ssin(G.jump * 3.0);
    spriteH = (int)(spriteH * stretch);
    spriteW = (int)(spriteW / stretch);
  }

  int drawX = (int)px - spriteW / 2;
  int drawY = (int)py - spriteH;

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

/* ==================== STAGED CUTSCENE CAST ==================== */
/* outlined rect lives with the map helpers below */
/* Actors/props are placed by the host per timeline segment (ring = tiles
   around the tube, zrow = rows ahead of the staging camera) and drawn in
   S_CUT instead of the runner. Actor art is the gameplay run stance
   (cutscene-only pose sheets are not extractable); motion comes from the
   authored per-segment positions, linearly interpolated by the host. */
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
static void draw_stage_actor(double R, int ch, double ring, double zrow) {
  double mx, my, px, py, dd;
  ring_point(ring, R, &mx, &my);
  proj(mx, my, zrow * G.tile, &px, &py, &dd);
  if (dd < VIEWPLANE_EPS) return;
  int cm = ch < 0 ? 0 : (ch >= CHAR_COUNT ? CHAR_COUNT - 1 : ch);
  anim_range_t ar = CHAR_ANIM_RANGE(cm, STATE_RUN, DIR_CENTER);
  int fw = 0, fh = 0;
  const uint32_t *pix = get_char_frame(cm, ar.start, &fw, &fh);
  double sc = cam_back / dd; /* perspective size vs the runner plane */
  if (sc < 0.15) sc = 0.15;
  if (sc > 3.0) sc = 3.0;
  int spriteH = (int)(24.0 * (H / 360.0) * sc);
  if (!pix || fw <= 0 || fh <= 0) {
    fill_rect((int)px - 4, (int)py - 12, 8, 12, rgb(200, 200, 200));
    return;
  }
  int spriteW = spriteH * fw / (fh > 0 ? fh : 1);
  int drawX = (int)px - spriteW / 2;
  int drawY = (int)py - spriteH;
  if (ar.mirror) blit_sprite_mirrored(drawX, drawY, spriteW, spriteH, pix, fw, fh, 1.0);
  else blit_sprite(drawX, drawY, spriteW, spriteH, pix, fw, fh, 1.0);
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
  ring_point(ring, R, &mx, &my);
  /* inset: float off the wall toward the tube axis (the map falls through
     the tube's interior and lands on the floor) */
  double k2 = 1.0 - inset;
  mx *= k2; my *= k2;
  proj(mx, my, zrow * G.tile, &px, &py, &dd);
  if (dd < VIEWPLANE_EPS) return;
  double wpp = size * G.tile * FOCAL / dd;
  if (wpp < 2.0) wpp = 2.0;
  if (wpp > W / 2) wpp = W / 2;
  int cx = (int)px, cy = (int)py;
  if (kind == 1) { /* map: flat 0xBCAB7C panel (40 x 25 in the original) */
    int w = (int)wpp, h = (int)(wpp * 0.62);
    fill_rect(cx - w / 2, cy - h / 2, w, h, rgb(188, 171, 124));
  } else if (kind == 5) { /* candy: the Candy.png panel from Candy.as */
    int w = (int)wpp;
    int h = (int)(wpp * (double)tex_candy_H / (double)tex_candy_W);
    if (h < 2) h = 2;
    blit_sprite(cx - w / 2, cy - h / 2, w, h, tex_candy, tex_candy_W, tex_candy_H, 1.0);
  } else if (kind == 7) { /* balloon: the TrainRide balloon panel (BoatRide) */
    int w = (int)wpp;
    int h = (int)(wpp * (double)tex_balloon_train_H / (double)tex_balloon_train_W);
    if (h < 2) h = 2;
    blit_sprite(cx - w / 2, cy - h / 2, w, h, tex_balloon_train,
                tex_balloon_train_W, tex_balloon_train_H, 1.0);
  }
}
static void draw_stage(double R) {
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
    if (z < -2.0 || z > view_z) continue;
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

static void draw_runner(double R);
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
    if (t0 < 0.01) t0 = 0.01;
    int rFar = (int)(front + view_z / t0) + 2;
    int rNear = (int)(front - (cam_back + 2.0 * t0) / t0) - 2;
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
  if (rrad < 0.05) rrad = 0.05;
  cam_back = CAM_BACK * rrad;
  cam_out = CAM_OUT * rrad;
  view_z = VIEW_ROWS * rtile;
  if (view_z < 4.0) view_z = 4.0;
  near_z = -(cam_back - 0.45);
  /* pitch from the runner constraint (small-angle atan to 3rd order);
     staged scenes add their authored height bias on top */
  {
    double h = rrad - cam_out;
    double t = ((double)CY - 2.0 * (double)H / 3.0) / FOCAL;
    double x = (h + t * cam_back) / (t * h - cam_back);
    cam_pitch = x - x * x * x / 3.0;
    if (G.state == S_CUT || G.state == S_GATE)
      cam_pitch += run3_stage_liftf() * 0.06;
  }
  /* the sky goes down first, once the camera's pitch is known, so the star
     sphere parallaxes with the same orientation the tube is drawn with */
  sky_render(sky, cam_pitch, G.rot);
  /* then what is OUTSIDE the tunnel, far to near, before the tube itself:
     the other tunnels branching off in space, then the wormhole at the end
     of the bore. Both are drawn before the wall, so the tunnel occludes them
     and they read only through the holes and the far opening — exactly how
     an opaque tube with gaps should show the space behind it. */
  space_outer();
  space_wormhole();
  uint32_t voidc = lpw ? rgb(2,3,8) : rgb(4,5,11);
  uint32_t themeTile = lpw ? LPAL[1] : PAL[th][1];

  for (int ri = rBase + rCount - 1; ri >= rBase; ri--) {
    const rowcross_t *xc = &rxc[ri - rBase];
    int rn = xc->n, rk = xc->k;
    if (rn < 1 || rn > MAXN || rk < 1 || rk > MAXK) continue;
    double zc = rz[ri - rBase];
    double hz = 0.5 * row_tile(xc);
    double zFar = zc + hz, zNear = zc - hz;
    if (zFar > view_z) continue;
    if (zFar < -cam_back + 0.2) continue;
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
    uint32_t holeCol = mixc(voidc, sky, fog * 0.35);

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
          /* hole: authored gap, or a crumble tile that already fell through */
          fill_quad(p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y, holeCol);
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
          } else {
            /* plain solid tile: the flat level tint */
            fill_quad(p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y, col);
          }
        }
      }
    }
    /* low power: faint glow pulsing on each row */
    if (lpw && (ri & 7) == 0 && zFar < 15.0 && zFar > 1.0) {
      double pulse = 0.5 + 0.5 * ssin(G.prog * 0.3 + (double)ri * 0.5);
      uint32_t glow = mixc(rgb(40,60,140), sky, 0.7 + 0.3 * (1.0 - pulse));
      for (int side = 0; side < rn; side++) {
        double ax3,ay3,bx3,by3;
        row_pt(xc, (double)side / (double)rn, &ax3, &ay3);
        row_pt(xc, (double)(side + 1) / (double)rn, &bx3, &by3);
        double p0x,p0y,p1x,p1y;
        proj(ax3,ay3,zFar,&p0x,&p0y,NULL); proj(bx3,by3,zFar,&p1x,&p1y,NULL);
        int lx0=(int)p0x, lx1=(int)p1x, ly=(int)p0y;
        if (ly >= 0 && ly < H) {
          if (lx0 > lx1) { int t=lx0; lx0=lx1; lx1=t; }
          if (lx0 < 0) lx0 = 0; if (lx1 >= W) lx1 = W-1;
          for (int x = lx0; x <= lx1; x++)
            fb[(uint32_t)ly * W + (uint32_t)x] = mixc(fb[(uint32_t)ly*W+(uint32_t)x], glow, 0.15 * pulse);
        }
      }
    }
  }

  /* cutscene staging: the tunnel is the backdrop (held frame at S_CUT /
     S_GATE) and the host-placed cast plays on it — no runner sprite */
  if (G.state == S_CUT || G.state == S_GATE) {
    draw_stage(R);
  } else {
    if (G.state == S_RUN && run3_hint_on()) draw_hint(rrad);
    draw_runner(rrad);
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

/* ==================== MAP RENDERING ==================== */
#include "levels/map_assets.h"

/* Draw a filled circle */
/* map background: fully procedural old parchment (no baked texture).
   Warm paper base with subtle fibre grain plus black/brown age spots, all in
   world space so it scrolls 1:1 with the dots. screen_x = world_x + scroll. */
#define MAP_WORLD_MINX -800
#define MAP_WORLD_W 5000
static int map_floor4(int v) { return v >= 0 ? v >> 2 : -(((-v) + 3) >> 2); }
static void render_map_bg(int scroll) {
  /* paper base with a soft vertical tone */
  for (int y = 0; y < H; y++) {
    double t = (double)y / (double)(H - 1);
    uint32_t row = mixc(rgb(201,181,130), rgb(213,195,145), t);
    int ycell = y >> 2;
    int x = 0;
    while (x < W) {
      int xcell = map_floor4(x - scroll);
      int xn = (xcell + 1) * 4 + scroll; /* first screen x of next grain cell */
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
  /* black/brown spots and speckles in world space */
  for (int i = 0; i < 420; i++) {
    uint32_t h = h32(0x51ECu ^ (uint32_t)(i * 2246822519u));
    int wx = MAP_WORLD_MINX + (int)(h % (uint32_t)MAP_WORLD_W);
    int sx = wx + scroll;
    if (sx < -3 || sx >= W + 3) continue;
    int wy = (int)((h >> 9) % (uint32_t)H);
    if (((h >> 4) & 15u) == 0) {
      /* occasional bigger black spot */
      int r = 2 + (int)((h >> 12) & 3u); /* 2..5 */
      fill_circle(sx, wy, r, rgb(38,26,14));
      fill_circle(sx, wy, r > 2 ? r - 2 : 1, rgb(24,16,8));
    } else {
      int sz = 1 + (int)((h >> 5) & 1u);
      int dk = 70 + (int)((h >> 16) & 50u);
      uint32_t c = ((h >> 7) & 1u) ? rgb(30,20,10) : rgb(dk, dk - 22, dk - 45);
      fill_rect(sx, wy, sz, sz, c);
    }
  }
}

/* draw the Run 3 world map on the canvas — 1D horizontal, black circles/lines, discovered only, name on hover */
void render_map(void) {
  int scroll = run3_map_scroll_x();
  render_map_bg(scroll);

  /* draw each discovered tunnel's ORIGINAL drawn curve, horizontal scroll */
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    int n = map_wp_n[i];
    if (n < 2) continue;
    const int16_t *w = map_wp[i];
    for (int s = 0; s + 1 < n; s++) {
      int ax = w[2 * s] + scroll, ay = w[2 * s + 1];
      int bx = w[2 * s + 2] + scroll, by = w[2 * s + 3];
      if ((ax < -30 && bx < -30) || (ax >= W+30 && bx >= W+30)) continue;
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
    int ny = n->y;
    if (nx < -30 || nx >= W + 30) continue;
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
    } else {
      buf[p] = '\0';
      const map_node_t *hn = &map_nodes[hov];
      hx = hn->x + scroll;
      hy = hn->y;
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
  const char *hint = "Horizontal scroll  |  Click discovered tunnel  |  Arrow keys pan";
  int hw = text_width(hint, 0.32);
  draw_text((W - hw)/2, 48, hint, rgb(96,72,46), 0.32);
  if (scroll != 0) {
    char sbuf[24];
    sbuf[0]='X'; sbuf[1]=':'; sbuf[2]=' ';
    int v = scroll;
    int idx = 2;
    if (v < 0) { sbuf[++idx]='-'; v=-v; }
    // simple integer
    int hundreds = (v/100)%10, tens=(v/10)%10, ones=v%10;
    // skip leading zeros
    int started=0;
    if (hundreds) { sbuf[++idx]='0'+hundreds; started=1; }
    if (tens || started) { sbuf[++idx]='0'+tens; started=1; }
    sbuf[++idx]='0'+ones;
    sbuf[++idx]='\0';
    draw_text(W - 100, H - 28, sbuf, rgb(96,72,46), 0.30);
  }
}

/* ==================== TEXT RENDERING ==================== */
#include "levels/font_data.h"

static void draw_glyph(int x, int y, char ch, uint32_t col, double scale) {
  int ci = (int)ch - FONT_FIRST_CHAR;
  if (ci < 0 || ci >= FONT_NUM_CHARS) return;
  const glyph_t *g = &font_glyphs[ci];
  int dw = (int)((double)g->w * scale), dh = (int)((double)g->h * scale);
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

  int cx = W / 2;
  draw_text_centered(60, "Run 3", rgb(130, 185, 255), 1.6);
  draw_text_centered(150, "Tunnel Runner Tribute", rgb(100, 130, 180), 0.54);

  fill_rect(cx - 160, 340, 320, 60, rgb(50, 120, 60));
  draw_text_centered(351, "Play", rgb(220, 255, 220), 0.76);

  fill_rect(cx - 160, 420, 320, 60, rgb(90, 50, 140));
  draw_text_centered(436, "Infinite Mode", rgb(220, 200, 255), 0.54);

  draw_text_centered(500, "Character:", rgb(180, 180, 200), 0.49);
  int nchar = CHAR_COUNT;
  int sel = run3_menu_char();
  // bigger boxes 80x80, 90px pitch, 2 rows (9+8) — spread out
  for (int i = 0; i < nchar; i++) {
    int row = i / 9;
    int col = i % 9;
    int bx = 40 + col * 90;
    int by = 520 + row * 100;
    if (by + 80 > H - 20) break;
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

  draw_text_centered(640, "Click to select  |  Fullscreen 1280x720", rgb(100, 110, 130), 0.38);
}
