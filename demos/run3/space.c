/*
 * space.c - what is outside the player's tunnel: the other tunnels branching
 *           off in space, and the wormhole at the end of the bore.
 *
 * The original wraps the camera in a 6-face skybox cube (skybox0..5.png, baked
 * to the point star sphere in skybox_data.h) and then renders a Space backdrop
 * whose model holds three things: a Planet, a Wormhole and a distant
 * TunnelSection (see the decompiled .../level/<Space>.as, which constructs
 * exactly those three and re-parents the Planet and Wormhole onto the current
 * TunnelSection's own map position).
 *
 * A frame is therefore layered far to near:
 *   1. the star sphere          (render.c, sky_render)
 *   2. the other tunnels        (space_outer)
 *   3. the wormhole             (space_wormhole)
 *   4. the player's own tube    (render.c)
 *   5. the player               (render.c)
 *
 * Every layer here is drawn BEFORE the player's tube and shares its camera
 * (the same pitch, roll and origin), so the tube's wall occludes the space
 * scene exactly as an opaque tunnel should: the space shows through the
 * tunnel's holes and its far opening, not painted over the walls.
 */
#include <stdint.h>
#include <stddef.h>
#include "render_int.h"

/* how many of the neighbouring tunnels to place, nearest first */
#define SPACE_GHOSTS 4

/* pixels the outside-the-tube layers wrote this frame (a test seam), and how
   many of them the tube did not paint over: the space actually on screen. The
   same trick the star sphere uses — record the pixel, look at it again once
   the frame is finished. */
static int32_t g_spacePix = 0;
static int32_t g_spaceSurv = 0;
static int32_t g_planetPix = 0; /* the planet's own pixels (tests) */
#define SPACE_MAXPIX 6144
static int sp_px_idx[SPACE_MAXPIX];
static uint32_t sp_px_col[SPACE_MAXPIX];
static int sp_npx = 0;
int32_t run3_space_visible(void) { return g_spacePix; }
int32_t run3_space_survived(void) { return g_spaceSurv; }
int32_t run3_space_planet(void) { return g_planetPix; }
static void sp_record(int idx, uint32_t col) {
  if (sp_npx < SPACE_MAXPIX) { sp_px_idx[sp_npx] = idx; sp_px_col[sp_npx] = col; sp_npx++; }
}
/* called once the whole frame is drawn (tube + player included) */
void space_count_visible(void) {
  int n = 0;
  for (int i = 0; i < sp_npx; i++)
    if (fb[sp_px_idx[i]] == sp_px_col[i]) n++;
  g_spaceSurv = n;
}

/* Tube-space world point -> screen, with the camera roll baked into x/y and
   then the pitch, exactly as corner()/row_pt()/sky_project() do. d1 is the
   depth in front of the camera, so a caller can size something by it. */
static int sproj(double wx, double wy, double wz, double *sx, double *sy, double *d1) {
  /* A staged frame draws the outside-the-tube layers through the SAME transform
     as the tube. In the original they are children of the one scene and come
     out of `Scene3D.project` with the walls, so a cutscene's authored camera
     places them too — the port's chase-camera model below (its own roll, pitch
     and origin) is only for gameplay. */
  double sd;
  if (stage_view_map(wx, wy, wz, sx, sy, &sd)) {
    if (d1) *d1 = sd;
    return sd > 0.5;
  }
  double c = scos(view_roll), s = ssin(view_roll);
  double xr = wx * c - wy * s - cam_x;
  double yr = wx * s + wy * c - cam_y;
  double cp = scos(cam_pitch), sp = ssin(cam_pitch);
  double d = cam_back + wz;
  double y1 = yr * cp - d * sp;
  double dd = yr * sp + d * cp;
  if (dd <= 0.5) return 0;
  double k = FOCAL / dd;
  *sx = CX + xr * k;
  *sy = CY - y1 * k;
  if (d1) *d1 = dd;
  return 1;
}

/* scanline triangle (the distant tunnel mouths are fans of these) */
static void fill_tri(double ax, double ay, double bx, double by,
                     double cx2, double cy2, uint32_t col) {
  double xs[3] = { ax, bx, cx2 }, ys[3] = { ay, by, cy2 };
  int miny = (int)ys[0], maxy = (int)ys[0];
  for (int i = 1; i < 3; i++) {
    if ((int)ys[i] < miny) miny = (int)ys[i];
    if ((int)ys[i] > maxy) maxy = (int)ys[i];
  }
  if (maxy < 0 || miny >= H) return;
  if (miny < 0) miny = 0;
  if (maxy > H - 1) maxy = H - 1;
  for (int y = miny; y <= maxy; y++) {
    double hits[3]; int nh = 0;
    for (int e = 0; e < 3; e++) {
      double xa = xs[e], ya = ys[e], xb = xs[(e + 1) % 3], yb = ys[(e + 1) % 3];
      if ((ya <= (double)y && yb > (double)y) || (yb <= (double)y && ya > (double)y))
        hits[nh++] = xa + ((double)y - ya) * (xb - xa) / (yb - ya);
    }
    if (nh != 2) continue;
    double lo = hits[0], hi = hits[1];
    if (lo > hi) { double t = lo; lo = hi; hi = t; }
    int x0 = (int)lo + 1, x1 = (int)hi;
    if (x0 < 0) x0 = 0;
    if (x1 > W - 1) x1 = W - 1;
    if (x0 > x1) continue;
    uint32_t *row = &fb[(uint32_t)y * W];
    for (int x = x0; x <= x1; x++) { row[x] = col; sp_record(y * W + x, col); }
    g_spacePix += x1 - x0 + 1;
  }
}

/* the ring point at angle a on a circle of radius r around (ox, oy), at depth
   wz -> screen */
static void ring_pt(double ox, double oy, double r, double a, double wz,
                    double *sx, double *sy, int *vis) {
  *vis = sproj(ox + r * scos(a), oy + r * ssin(a), wz, sx, sy, NULL);
}

/* One other tunnel, seen from outside: a short length of its own tube, built
   from the same n / tiles-per-side / tile width its own levels use, so a
   branch looks like the tunnel it is. */
static void draw_ghost(int tun, double ang, double wz, double off, uint32_t sky) {
  const tunnel_t *tt = &TUNNELS[tun];
  int n = tt->n_sides, k = tt->k_tiles;
  if (n < 3) n = 3;
  if (n > MAXN) n = MAXN;
  if (k < 1) k = 1;
  /* the branch's own levels' tile width (not its nominal `baseTile`, which is
     the loader default for every tunnel now) */
  double tile = run3_tunnel_tile(tun);
  if (tile < 5.0) tile = 30.0;
  /* the tunnel's own circumradius: exactly the tube_R() the main renderer
     uses for the player's tube */
  double R = (double)k * tile / (2.0 * ssin(PI / (double)n));
  double len = 6.0 * tile;

  /* centre offset from the axis in the direction of its map node, pushed out
     far enough that the tube reads as another tunnel rather than a bump */
  double ox = scos(ang) * off;
  double oy = ssin(ang) * off;
  double zFar = wz + len, zNear = wz - len; /* zFar is the mouth we see into */

  double csx, csy, cd;
  if (!sproj(ox, oy, wz, &csx, &csy, &cd)) return;
  double rad = R * FOCAL / cd;
  double margin = rad * 3.0 + 40.0;
  if (csx < -margin || csx > W + margin || csy < -margin || csy > H + margin) return;

  uint32_t wall = theme_main(tt->theme % 5);
  uint32_t dark = mixc(wall, sky, 0.55);
  uint32_t mouth = mixc(sky, rgb(0, 0, 0), 0.35);

  /* the far mouth first (a fan), then the walls over it: a tube seen from
     outside is a dark opening ringed by its own lit sides */
  double fx[MAXN + 1], fy[MAXN + 1];
  for (int i = 0; i < n; i++) {
    int vis;
    ring_pt(ox, oy, R, -PI / 2.0 + TAU * (double)i / (double)n, zFar,
            &fx[i], &fy[i], &vis);
    if (!vis) { fx[i] = fx[0]; fy[i] = fy[0]; }
  }
  /* centre of the mouth, from the far ring's own points */
  double mx = 0.0, my = 0.0;
  for (int i = 0; i < n; i++) { mx += fx[i]; my += fy[i]; }
  mx /= (double)n; my /= (double)n;
  for (int i = 0; i < n; i++) {
    int j = (i + 1) % n;
    fill_tri(mx, my, fx[i], fy[i], fx[j], fy[j], mouth);
  }

  /* walls: a quad per side between the far and the near ring, but only the
     sides whose outward face points back at the camera — the far half of the
     tube is behind its own mouth and would otherwise paint over it */
  double cdx = 0.0 - ox, cdy = 0.0 - oy; /* axis -> camera, in cross-section */
  double clen = ssqrt(cdx * cdx + cdy * cdy);
  if (clen < 1e-6) { cdx = 0.0; cdy = 1.0; clen = 1.0; }
  cdx /= clen; cdy /= clen;
  for (int i = 0; i < n; i++) {
    int j = (i + 1) % n;
    double a0 = -PI / 2.0 + TAU * (double)i / (double)n;
    double a1 = -PI / 2.0 + TAU * (double)(i + 1) / (double)n;
    double am = 0.5 * (a0 + a1);
    if (scos(am) * cdx + ssin(am) * cdy <= 0.0) continue;
    double n0x, n0y, n1x, n1y;
    int v0, v1;
    ring_pt(ox, oy, R, a0, zNear, &n0x, &n0y, &v0);
    ring_pt(ox, oy, R, a1, zNear, &n1x, &n1y, &v1);
    if (!v0 || !v1) continue;
    fill_quad(fx[i], fy[i], fx[j], fy[j], n1x, n1y, n0x, n0y, dark);
  }
}

/* the planet. In the src Planet is a flat 8-segment disc drawn with vertex
   COLOURS only (a PositionColorVertex shader, no sampler) and Space.as parents
   it to the same TunnelSection position as the distant tunnel — so it sits in
   the direction of a neighbouring tunnel, far outside the player's own tube,
   and is a shaded disc rather than a textured one. */
static void draw_planet(double ang, double wz, double rw, uint32_t sky) {
  double ox = scos(ang) * 2200.0, oy = ssin(ang) * 2200.0;
  double csx, csy, cd;
  if (!sproj(ox, oy, wz, &csx, &csy, &cd)) return;
  double rad = rw * FOCAL / cd;
  if (rad < 3.0) return;
  if (csx < -rad || csx > W + rad || csy < -rad || csy > H + rad) return;

  /* a cool body lit from the upper left, with a thin lit rim */
  uint32_t base = mixc(rgb(28, 34, 62), sky, 0.20);
  uint32_t lit = mixc(rgb(118, 150, 210), sky, 0.10);
  int x0 = (int)(csx - rad), x1 = (int)(csx + rad);
  int y0 = (int)(csy - rad), y1 = (int)(csy + rad);
  if (x0 < 0) x0 = 0;
  if (y0 < 0) y0 = 0;
  if (x1 > W - 1) x1 = W - 1;
  if (y1 > H - 1) y1 = H - 1;
  int drawn = 0;
  for (int y = y0; y <= y1; y++) {
    uint32_t *row = &fb[(uint32_t)y * W];
    double v = ((double)y - csy) / rad;
    for (int x = x0; x <= x1; x++) {
      double u = ((double)x - csx) / rad;
      double rr = u * u + v * v;
      if (rr > 1.0) continue;
      /* Lambert-ish: the surface normal over a sphere seen head on, lit from
         the upper left; the limb falls off to the dark side */
      double nz = ssqrt(1.0 - rr);
      double lm = 0.55 - 0.75 * u - 0.35 * v + 0.25 * nz;
      if (lm < 0.0) lm = 0.0;
      if (lm > 1.0) lm = 1.0;
      uint32_t c = mixc(base, lit, lm * 0.9);
      if (rr > 0.90) c = mixc(c, rgb(150, 175, 225), 0.35); /* limb brightening */
      row[x] = c;
      sp_record(y * W + x, c);
      drawn++;
    }
  }
  g_spacePix += drawn;
  g_planetPix = drawn;
}

void space_outer(void) {
  g_spacePix = 0; /* the frame's space pixels are counted from here */
  g_planetPix = 0;
  sp_npx = 0;
  int cur = (int)G.tun;
  if (cur < 0 || cur >= (int)NTUNNELS) return;
  int cx, cy;
  run3_map_checkpoint_pos(cur, 0, &cx, &cy);

  /* the nearest other tunnels: the ones that branch off near the player */
  int best[SPACE_GHOSTS];
  double bestD[SPACE_GHOSTS];
  for (int i = 0; i < SPACE_GHOSTS; i++) { best[i] = -1; bestD[i] = 1e18; }
  for (int t = 0; t < (int)NTUNNELS && t < MAX_TUNNELS; t++) {
    if (t == cur) continue;
    if (TUNNELS[t].levels == 0) continue;
    int nx, ny;
    run3_map_checkpoint_pos(t, 0, &nx, &ny);
    double dx = (double)(nx - cx), dy = (double)(cy - ny);
    double md = ssqrt(dx * dx + dy * dy);
    if (md < 1.0) continue;
    for (int i = 0; i < SPACE_GHOSTS; i++) {
      if (md < bestD[i]) {
        for (int j = SPACE_GHOSTS - 1; j > i; j--) {
          bestD[j] = bestD[j - 1]; best[j] = best[j - 1];
        }
        bestD[i] = md; best[i] = t;
        break;
      }
    }
  }

  double rrad = run3_runner_rad();
  if (rrad < 0.05) rrad = 0.05;
  uint32_t sky = g_sky;

  /* Each branch sits at its OWN map position, not on a ring: the direction
     comes straight from its map node and both the distance out from the axis
     and the depth grow with its real map distance, so the nearest tunnel is
     the biggest and the ones further along the map recede. Space.as moves the
     Planet and the Wormhole onto the same TunnelSection position, so the
     planet hangs out past the nearest branch. */
  for (int i = 0; i < SPACE_GHOSTS; i++) {
    int t = best[i];
    if (t < 0) continue;
    int nx, ny;
    run3_map_checkpoint_pos(t, 0, &nx, &ny);
    double ang = satan2((double)(cy - ny), (double)(nx - cx));
    double md = bestD[i];
    double off = (1.8 + 2.4 * md / 120.0) * rrad;
    double wz = 2.6 * view_z + (md / 90.0) * view_z;
    draw_ghost(t, ang, wz, off, sky);
    if (i == 0) draw_planet(ang, wz + 9.0 * view_z, rrad * 3.2, sky);
  }
}

/* the wormhole: a textured disc at the end of the bore, so it is occluded by
   the nearer walls and shows through the far opening (and any holes) as the
   tunnel's mouth. It spins as the runner advances. */
void space_wormhole(void) {
  int tw, th;
  const uint32_t *tex = assets_tex(TEX_WORMHOLE, &tw, &th);
  if (!tex || tw <= 0 || th <= 0) return;
  double rrad = run3_runner_rad();
  if (rrad < 0.05) rrad = 0.05;

  double wz = 3.4 * view_z;
  double csx, csy, cd;
  if (!sproj(0.0, 0.0, wz, &csx, &csy, &cd)) return;
  double half = rrad * 1.15 * FOCAL / cd;
  if (half < 6.0) return;
  if (csx < -half || csx > W + half || csy < -half || csy > H + half) return;

  /* a dark throat behind the swirl so the mouth reads as a hole in space
     rather than a decal over the stars */
  fill_circle((int)csx, (int)csy, (int)(half * 1.04), mixc(g_sky, rgb(0, 0, 0), 0.72));

  double ang = G.prog * 0.22;
  double ca = scos(ang), sa = ssin(ang);
  int x0 = (int)(csx - half), x1 = (int)(csx + half);
  int y0 = (int)(csy - half), y1 = (int)(csy + half);
  if (x0 < 0) x0 = 0;
  if (y0 < 0) y0 = 0;
  if (x1 > W - 1) x1 = W - 1;
  if (y1 > H - 1) y1 = H - 1;
  int drawn = 0;
  for (int y = y0; y <= y1; y++) {
    uint32_t *row = &fb[(uint32_t)y * W];
    double v = ((double)y - csy) / half;
    for (int x = x0; x <= x1; x++) {
      double u = ((double)x - csx) / half;
      double rr = u * u + v * v;
      if (rr > 1.0) continue;
      /* inverse spin about the view axis */
      double ru = u * ca + v * sa, rv = -u * sa + v * ca;
      int sx = (int)((ru * 0.5 + 0.5) * (double)tw);
      int sy = (int)((rv * 0.5 + 0.5) * (double)th);
      if (sx < 0) sx = 0; if (sx >= tw) sx = tw - 1;
      if (sy < 0) sy = 0; if (sy >= th) sy = th - 1;
      uint32_t src = tex[sy * tw + sx];
      unsigned sa2 = (src >> 24);
      if (sa2 < 8) continue;
      double a = (double)sa2 / 255.0;
      /* soften the disc's edge so it fades into the dark throat */
      if (rr > 0.82) a *= (1.0 - (rr - 0.82) / 0.18);
      uint32_t dst = row[x];
      int dr = (int)((dst >> 16) & 0xff), dg = (int)((dst >> 8) & 0xff), db = (int)(dst & 0xff);
      int sr = (int)((src >> 16) & 0xff), sg = (int)((src >> 8) & 0xff), sb = (int)(src & 0xff);
      uint32_t outc = 0xFF000000u |
        ((uint32_t)(int)(dr + (sr - dr) * a) << 16) |
        ((uint32_t)(int)(dg + (sg - dg) * a) << 8) |
        (uint32_t)(int)(db + (sb - db) * a);
      row[x] = outc;
      sp_record(y * W + x, outc);
      drawn++;
    }
  }
  g_spacePix += drawn;
}
