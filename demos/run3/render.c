/*
 * render.c - the other engine file: framebuffer rendering of the tunnel,
 * the gate at each checkpoint end, and the runner characters (sprite + a
 * contact shadow on the wall so the player never looks like they float).
 */
#include <stdint.h>
#include "run3.h"

static uint32_t fb[W * H];

/* ---------------- framebuffer primitives ---------------- */
static void fill_rect(int x, int y, int w, int h, uint32_t c) {
  int x0 = x < 0 ? 0 : x;
  int y0 = y < 0 ? 0 : y;
  int x1 = x + w; if (x1 > W) x1 = W;
  int y1 = y + h; if (y1 > H) y1 = H;
  for (int yy = y0; yy < y1; yy++)
    for (int xx = x0; xx < x1; xx++)
      fb[(uint32_t)yy * W + (uint32_t)xx] = c;
}
static void fill_quad(double x0, double y0, double x1, double y1,
                      double x2, double y2, double x3, double y3, uint32_t c) {
  double xs[4] = { x0, x1, x2, x3 };
  double ys[4] = { y0, y1, y2, y3 };
  int miny = (int)ys[0], maxy = (int)ys[0];
  for (int i = 1; i < 4; i++) {
    if ((int)ys[i] < miny) miny = (int)ys[i];
    if ((int)ys[i] > maxy) maxy = (int)ys[i];
  }
  if (miny < 0) miny = 0;
  if (maxy >= H) maxy = H - 1;
  if (miny > maxy) return;
  for (int y = miny; y <= maxy; y++) {
    double hits[4];
    int nh = 0;
    for (int e = 0; e < 4; e++) {
      double xa = xs[e], ya = ys[e];
      double xb = xs[(e + 1) & 3], yb = ys[(e + 1) & 3];
      if ((ya <= (double)y && yb > (double)y) || (yb <= (double)y && ya > (double)y)) {
        hits[nh++] = xa + ((double)y - ya) * (xb - xa) / (yb - ya);
      }
    }
    if (nh == 2) {
      double lo = hits[0], hi = hits[1];
      if (lo > hi) { double t = lo; lo = hi; hi = t; }
      int x0i = (int)lo + 1;
      int x1i = (int)hi;
      if (x0i < 0) x0i = 0;
      if (x1i >= W) x1i = W - 1;
      if (x0i <= x1i)
        for (int x = x0i; x <= x1i; x++) fb[(uint32_t)y * W + (uint32_t)x] = c;
    }
  }
}
static void fill_circle(int cx, int cy, int r, uint32_t c) {
  int r2 = r * r;
  for (int dy = -r; dy <= r; dy++)
    for (int dx = -r; dx <= r; dx++) {
      int x = cx + dx, y = cy + dy;
      if (dx * dx + dy * dy <= r2 && (uint32_t)x < (uint32_t)W && (uint32_t)y < (uint32_t)H)
        fb[(uint32_t)y * W + (uint32_t)x] = c;
    }
}
/* soft dark overlay ellipse (contact shadow), darkens what is under it */
static void fill_shadow(int cx, int cy, int rx, int ry, double dark) {
  if (rx < 1) rx = 1;
  if (ry < 1) ry = 1;
  int rxx = rx * rx, ryy = ry * ry;
  for (int dy = -ry; dy <= ry; dy++)
    for (int dx = -rx; dx <= rx; dx++) {
      int x = cx + dx, y = cy + dy;
      if ((uint32_t)x >= (uint32_t)W || (uint32_t)y >= (uint32_t)H) continue;
      if (dx * dx * ryy + dy * dy * rxx > rxx * ryy) continue;
      uint32_t c = fb[(uint32_t)y * W + (uint32_t)x];
      uint32_t nr = (uint32_t)((double)((c >> 16) & 0xff) * (1.0 - dark));
      uint32_t ng = (uint32_t)((double)((c >> 8) & 0xff) * (1.0 - dark));
      uint32_t nb = (uint32_t)((double)(c & 0xff) * (1.0 - dark));
      fb[(uint32_t)y * W + (uint32_t)x] = (c & 0xff000000u) | (nr << 16) | (ng << 8) | nb;
    }
}

/* ---------------- palette (sky, floor, wall, deep) ---------------- */
static const uint32_t PAL[5][4] = {
  { rgb(10, 12, 26),  rgb(130, 185, 255), rgb(64, 100, 165), rgb(36, 58, 98) },
  { rgb(24, 8, 26),   rgb(255, 150, 235), rgb(170, 84, 152), rgb(104, 48, 94) },
  { rgb(6, 20, 22),   rgb(96, 235, 195),  rgb(48, 145, 120), rgb(28, 92, 76) },
  { rgb(26, 16, 8),   rgb(255, 196, 110), rgb(176, 122, 60), rgb(110, 74, 38) },
  { rgb(8, 22, 14),   rgb(150, 235, 110), rgb(88, 152, 62),  rgb(54, 96, 40) },
};
/* character outfits: body, accent, visor */
static const uint32_t CHAR[3][3] = {
  { rgb(235, 244, 255), rgb(90, 170, 255), rgb(24, 34, 60) },  /* Runner */
  { rgb(255, 176, 92),  rgb(235, 92, 60),  rgb(70, 44, 26) },   /* Skater */
  { rgb(150, 235, 120), rgb(245, 210, 90), rgb(40, 70, 30) },   /* Child  */
};

/* stars */
#define STARS 90
static int star_x[STARS], star_y[STARS], star_s[STARS];
static uint32_t star_c[STARS];

void render_init_stars(uint32_t seed) {
  uint32_t s = seed ? seed : 1u;
  for (int i = 0; i < STARS; i++) {
    s = s * 1664525u + 1013904223u;
    star_x[i] = (int)(s % W);
    s = s * 1664525u + 1013904223u;
    star_y[i] = (int)(s % H);
    s = s * 1664525u + 1013904223u;
    star_s[i] = (int)(s % 2) + 1;
    s = s * 1664525u + 1013904223u;
    star_c[i] = rgb(160 + (int)(s % 90), 160 + (int)(s % 90), 200 + (int)(s % 55));
  }
}

uint32_t *run3_buffer(void) { return fb; }

/* ---------------- projection & ring geometry ---------------- */
static void proj(double x, double y, double z, double *sx, double *sy) {
  double d = DCAM + z;
  double s = FOCAL / d;
  *sx = CX + x * s;
  *sy = CY - y * s;
}
/* corner c of the tube cross-section in view space */
static void corner(int c, double *x, double *y, double R) {
  double a = -PI / 2.0 - PI / (double)G.shape +
             TAU * (double)c / (double)G.shape + G.rot;
  *x = R * scos(a);
  *y = R * ssin(a);
}
static double tube_R(void) {
  return (double)G.k * G.tile / (2.0 * ssin(PI / (double)G.shape));
}
static int mask_at(int side, int row) {
  int i = row - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 0;
  return GMAP[side][i];
}

/* ---------------- main frame ---------------- */
static void draw_runner(double R);
void render_frame(void) {
  int n = G.shape, k = G.k;
  int th = G.theme % 5;
  uint32_t sky = PAL[th][0];
  for (int i = 0; i < W * H; i++) fb[i] = sky;
  for (int s = 0; s < STARS; s++)
    fill_rect(star_x[s], star_y[s], star_s[s], star_s[s], star_c[s]);

  double R = tube_R();
  double front = G.prog;
  double tile = G.tile;
  int gateRow = (int)G.rowEnd;
  int rFar = (int)(front + VIEW / tile) + 2;
  int rNear = (int)(front - (DCAM + 2.0 * tile) / tile) - 2;
  double hz = 0.5 * tile;
  uint32_t voidc = rgb(4, 5, 11);

  for (int ri = rFar; ri >= rNear; ri--) {
    double zc = ((double)ri - front) * tile;
    double zFar = zc + hz;
    double zNear = zc - hz;
    if (zFar > VIEW) continue;
    if (zFar < -DCAM + 0.2) continue;
    double zn = zNear < NEARZ ? NEARZ : zNear;

    double fog = zFar / VIEW * 0.85;
    if (fog < 0.0) fog = 0.0;
    if (fog > 0.85) fog = 0.85;

    double rx[MAXN + 1], ry[MAXN + 1];
    for (int c = 0; c <= n; c++) corner(c, &rx[c], &ry[c], R);

    int su = wrap_side(G.ring, k, n);
    for (int side = 0; side < n; side++) {
      int mask = mask_at(side, ri);
      uint32_t base;
      if (side == su) base = PAL[th][1];
      else if (side == (su + 1) % n || side == (su + n - 1) % n) base = PAL[th][2];
      else base = PAL[th][3];
      if ((side & 1) && side != su) base = mixc(base, sky, 0.10);
      uint32_t col = mixc(base, sky, fog);
      int isGate = (ri == gateRow);
      if (isGate) col = mixc(col, rgb(255, 236, 170), 0.55);
      uint32_t holeCol = mixc(voidc, sky, fog * 0.35);

      for (int l = 0; l < k; l++) {
        double t0 = (double)l / (double)k;
        double t1 = (double)(l + 1) / (double)k;
        double ax = rx[side] + (rx[side + 1] - rx[side]) * t0;
        double ay = ry[side] + (ry[side + 1] - ry[side]) * t0;
        double bx = rx[side] + (rx[side + 1] - rx[side]) * t1;
        double by = ry[side] + (ry[side + 1] - ry[side]) * t1;
        double p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y;
        proj(ax, ay, zFar, &p0x, &p0y);
        proj(bx, by, zFar, &p1x, &p1y);
        proj(bx, by, zn, &p2x, &p2y);
        proj(ax, ay, zn, &p3x, &p3y);
        uint32_t c = (mask & (1u << l)) ? holeCol : col;
        fill_quad(p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y, c);
      }
    }
  }

  draw_runner(R);
}

/* ---------------- the runner character ---------------- */
static void draw_runner(double R) {
  int n = G.shape, k = G.k;
  int su = wrap_side(G.ring, k, n);
  double f = G.ring / (double)k - (double)su;
  double ax, ay, bx, by;
  corner(su, &ax, &ay, R);
  corner(su + 1, &bx, &by, R);
  double mx = ax + (bx - ax) * f;
  double my = ay + (by - ay) * f;
  /* inward normal of the side chord (toward the tube center) */
  double nx = 0.5 * (ax + bx), ny = 0.5 * (ay + by);
  double len = ssqrt(nx * nx + ny * ny);
  double inx = len > 1e-12 ? -nx / len : 0.0;
  double iny = len > 1e-12 ? -ny / len : 1.0;

  int dead = (G.state == S_DEAD);
  double lift = 0.02 + G.jump;
  double shrink = 1.0;
  if (dead) {
    double dd = G.fallT;
    if (dd > 0.8) dd = 0.8;
    lift = 0.02 - dd * 1.6; /* fall outward through the missing tile */
    shrink = 1.0 - dd * 0.7;
    if (shrink < 0.5) shrink = 0.5;
  }
  /* ground point (z=0 at the runner plane) and shadow on the wall surface */
  double gx, gy, px, py;
  proj(mx, my, 0.0, &gx, &gy);
  proj(mx + inx * lift, my + iny * lift, 0.0, &px, &py);

  /* contact shadow: stays on the surface, shrinks/dims with jump height */
  double jh = G.jump;
  double shr = 1.0 / (1.0 + 5.0 * jh);
  double rxS = 9.0 * shr * (dead ? shrink : 1.0);
  double ryS = rxS * 0.45;
  fill_shadow((int)gx, (int)(gy + rxS * 0.1), (int)rxS, (int)ryS, 0.55 * (dead ? shrink : 1.0) * (0.5 + 0.5 * shr));

  if (dead) {
    fill_circle((int)px, (int)py, (int)(11 * shrink), rgb(205, 96, 110));
    return;
  }

  /* run cycle phase */
  double ph = G.jump > 0.0 ? 0.0 : (G.prog - (long long)G.prog);
  double swing = G.jump > 0.0 ? 0.0 : ssin(ph * TAU * 2.0);
  int s0 = (int)(5 * swing * shrink);

  int cm = G.charm < 3 ? G.charm : 0;
  uint32_t body = CHAR[cm][0];
  uint32_t accent = CHAR[cm][1];
  uint32_t dark = CHAR[cm][2];

  int fy = (int)py;             /* feet baseline */
  int rr = (int)(6.5 * shrink); /* head radius */
  /* legs: small feet that spread while running, tuck while airborne */
  int lx = (int)px - 3, rx2 = (int)px + 3;
  if (G.jump > 0.0) { lx = (int)px - 1; rx2 = (int)px + 1; }
  else { lx -= s0; rx2 += s0; }
  fill_circle(lx, fy - 1, 2, dark);
  fill_circle(rx2, fy - 1, 2, dark);
  /* body */
  int bodyY = fy - (int)(16 * shrink); /* top of body */
  fill_rect((int)px - (int)(6 * shrink), bodyY, (int)(12 * shrink), (int)(11 * shrink), body);
  fill_rect((int)px - (int)(6 * shrink), bodyY + (int)(4 * shrink), (int)(12 * shrink), (int)(2 * shrink), accent);
  /* head */
  int hy = bodyY - (int)(7 * shrink); /* head center */
  fill_circle((int)px, hy, rr, body);
  if (cm == 0) { /* Runner: visor band */
    fill_rect((int)px - rr, hy - (int)(2 * shrink), rr * 2, (int)(4 * shrink), dark);
    fill_circle((int)px + rr - 3, hy, 1, accent);
  } else if (cm == 1) { /* Skater: cap */
    fill_rect((int)px - rr, hy - rr, rr * 2, (int)(3 * shrink), accent);
    fill_rect((int)px - rr, hy - rr, (int)(2 * shrink), (int)(2 * shrink), dark);
    fill_circle((int)px - rr / 2 + 2, hy + 1, 1, dark);
  } else { /* Child: small cap + face */
    fill_circle((int)px, hy, rr, body);
    fill_rect((int)px - rr, hy - rr, rr * 2, (int)(3 * shrink), accent);
    fill_circle((int)px - 2, hy + 1, 1, dark);
    fill_circle((int)px + 2, hy + 1, 1, dark);
  }
}
