/*
 * Run 3-style tunnel runner — WASM demo in freestanding C (no libc, no deps).
 *
 * Model (matches the game's structure, per player feedback):
 *  - The camera is always behind the runner, looking down the tunnel toward
 *    the runner's back. From the camera's perspective the runner is
 *    stationary and the tunnel tiles stream backward toward the camera.
 *  - A tunnel is a STRAIGHT tube whose cross-section is a convex polygon
 *    with 4..16 sides. Each side is split into k >= 1 tiles; all tiles in a
 *    tunnel are the same size (tile size may differ between tunnels).
 *  - There are no "kill bricks": the only way to die is to fall into the
 *    void through a missing tile. Missing tiles can span a whole row
 *    (jump it) or a long block of rows (gravity-jump to a wall side to
 *    ride around it, then come back — switching sides is what "changing
 *    gravity" looks like from this fixed camera).
 *  - Switching to an adjacent side rotates the view so the new side becomes
 *    the floor; the runner is always drawn upright on the current side.
 *
 * Original implementation; gameplay modeled on the general structure of
 * Player03's "Run 3". No code, assets, or level data are copied from it.
 * The module owns simulation + framebuffer; the host page is I/O only.
 * Build with build.sh.
 */

#include <stdint.h>

#define W 640
#define H 360
#define CX 320
#define CY 178        /* screen y of the tunnel axis (vanishing point) */
#define FOCAL 230.0   /* lens: screen = world * FOCAL / (DCAM + z) */
#define DCAM 5.0      /* camera distance behind the runner plane (z=0) */
#define VIEW 34.0     /* draw tiles out to this depth, in world units */

#define MAXN 16
#define MAXR 240      /* rows of tunnel geometry we precompute */
#define TAU 6.283185307179586
#define PI 3.141592653589793

#define GRAV 10.0     /* gravity, world units/s^2 (in rolled view: -y) */
#define JUMPV 4.6     /* jump launch speed, world units/s */

typedef enum { S_READY = 0, S_RUN = 1, S_DEAD = 2, S_CLEAR = 3 } state_t;

static uint32_t fb[W * H]; /* 0xAARRGGBB */

/* ---------------- tunnel (level) definitions ---------------- */

typedef struct {
  int n;          /* polygon sides: 4..16 */
  int k;          /* tiles per side: >= 1 */
  double tile;    /* uniform tile size: row depth AND tile width across a side */
  double rows;    /* tunnel length in tile-rows */
  double rowsPer; /* scroll speed in rows per second */
  double holeP;   /* probability a (side,row) single hole exists */
  int theme;      /* color theme */
  int blockEvery; /* every N rows, one side gets a 4-row void (0 = none) */
} tunnel_t;

/* g_radius = k*tile / (2 sin(pi/n)) is derived; these stay between ~1.7 and ~2.5. */
static const tunnel_t TUNNELS[] = {
    { 4, 1, 2.40,  90, 2.3, 0.05, 0, 0  },
    { 4, 2, 1.20, 100, 2.6, 0.06, 1, 24 },
    { 5, 1, 2.00, 108, 2.9, 0.07, 2, 14 },
    { 6, 2, 1.10, 118, 3.2, 0.08, 3, 12 },
    { 8, 2, 0.85, 130, 3.6, 0.09, 4, 10 },
    {10, 2, 0.70, 142, 4.0, 0.10, 0, 9  },
    {12, 2, 0.60, 156, 4.4, 0.11, 1, 8  },
    {16, 3, 0.34, 170, 4.8, 0.12, 2, 7  },
};
#define NTUNNELS ((int)(sizeof(TUNNELS) / sizeof(TUNNELS[0])))

/* minimal freestanding trig (no libm): range reduction + Taylor on [0, pi/2] */
static double ssin(double x) {
  x -= TAU * (double)((long long)(x / TAU)); /* wrap into [0, 2pi) */
  if (x < 0.0) x += TAU;
  int sign = 1;
  if (x > PI) { x = TAU - x; sign = -1; }
  if (x > PI / 2.0) x = PI - x;
  double x2 = x * x;
  double t = 1.0 + x2 * (-1.0 / 5040.0 + x2 / 362880.0);
  double s = x * (1.0 + x2 * (-1.0 / 6.0 + x2 * (1.0 / 120.0 + x2 * t)));
  return sign > 0 ? s : -s;
}
static double scos(double x) { return ssin(PI / 2.0 - x); }

/* precomputed tunnel wall: 1 = tile present, 0 = void */
static uint8_t g_map[MAXN][MAXR];

/* ---------------- geometry ---------------- */

static int g_n, g_k;          /* current tunnel */
static double g_tile, g_R, g_ap; /* tile size, circumradius, apothem */
static double g_rows, g_rowsPer;
static double g_holeP;
static int g_blockEvery;
static uint32_t g_seed;       /* rng state (given by the host) */

/* ---------------- game state ---------------- */

static int g_state;
static int g_tun;
static double g_prog;    /* fractional row at the runner plane (z=0) */
static int g_side;       /* side the runner runs on */
static double g_rot;     /* view rotation (rad), animates toward g_rotT */
static double g_rotT;    /* target view rotation: side g_side at bottom */
static double g_jump;    /* height above the current surface */
static double g_jv;      /* vertical velocity (rolled +y) */
static double g_fallT;   /* time since falling into the void */

#define STARS 90
static int star_x[STARS], star_y[STARS], star_s[STARS];
static uint32_t star_c[STARS];

static uint32_t rnd(void) {
  g_seed = g_seed * 1664525u + 1013904223u;
  return g_seed;
}

#define rgb(r, g, b) \
  (0xFF000000u | ((uint32_t)(r) << 16) | ((uint32_t)(g) << 8) | (uint32_t)(b))

static int lrp(int a, int b, double t) { /* channel lerp */
  return (int)((double)a + ((double)b - (double)a) * t);
}
static uint32_t mixc(uint32_t c0, uint32_t c1, double t) {
  if (t <= 0.0) return c0;
  if (t >= 1.0) return c1;
  return rgb(lrp((c0 >> 16) & 0xff, (c1 >> 16) & 0xff, t),
             lrp((c0 >> 8) & 0xff, (c1 >> 8) & 0xff, t),
             lrp(c0 & 0xff, c1 & 0xff, t));
}

/* ---------------- tunnel wall generation ---------------- */

static uint32_t h32(uint32_t x) { /* small avalanche hash */
  x ^= x >> 16; x *= 0x7feb352du;
  x ^= x >> 15; x *= 0x846ca68bu;
  x ^= x >> 16;
  return x;
}

/* Rows 0..3 are always solid (start area). Single holes never repeat on the
   same side. Around every 4-row void block, all sides keep a clean buffer
   (2 rows before / 1 after) so the block is always dodgeable by switching
   walls. Void blocks: window k starts at row k*blockEvery, lasts 4 rows,
   and takes sides (k+2) % n in turn, so the void orbits the tube. */
static void build_map(void) {
  for (int r = 0; r < MAXR; r++) {
    int voidSide = -1, buffered = 0;
    if (g_blockEvery > 0) {
      int w0 = (r - 4) / g_blockEvery;
      if (w0 < 0) w0 = 0;
      int w1 = (r + 2) / g_blockEvery;
      if (w1 < 0) w1 = 0;
      for (int w = w0; w <= w1; w++) {
        int br = w * g_blockEvery;
        if (r >= br - 2 && r <= br + 4) {
          buffered = 1;
          if (r >= br && r <= br + 3) voidSide = (int)((w + 2) % g_n);
          break;
        }
      }
    }
    for (int s = 0; s < g_n; s++) {
      if (r < 4) { g_map[s][r] = 1; continue; }
      if (voidSide >= 0) { g_map[s][r] = (s == voidSide) ? 0 : 1; continue; }
      if (buffered) { g_map[s][r] = 1; continue; }
      /* single holes: not right after a missing row on the same side */
      if (g_map[s][r - 1] == 0) { g_map[s][r] = 1; continue; }
      uint32_t h = h32(g_seed ^ (uint32_t)(s * 1013u) ^ (uint32_t)(r * 7919u));
      g_map[s][r] = ((double)((h >> 8) & 0xffff) / 65536.0) < g_holeP ? 0 : 1;
    }
  }
}

static int solid_at(int side, int row) {
  if (row < 0 || row >= MAXR) return 1; /* before the start / past the end */
  return g_map[side][row];
}

/* ---------------- setup ---------------- */

static void setup_tunnel(int idx) {
  const tunnel_t *t = &TUNNELS[idx];
  g_n = t->n; g_k = t->k;
  g_tile = t->tile;
  g_rows = t->rows;
  g_rowsPer = t->rowsPer;
  g_holeP = t->holeP;
  g_blockEvery = t->blockEvery;
  g_R = (double)g_k * g_tile / (2.0 * ssin(PI / (double)g_n));
  g_ap = g_R * scos(PI / (double)g_n); /* center -> flat side distance */
}

void run3_level(int idx) {
  if (idx < 0) idx = 0;
  if (idx >= NTUNNELS) idx = NTUNNELS - 1;
  g_tun = idx;
  setup_tunnel(idx);
  build_map();
  g_state = S_READY;
  g_prog = 0.0;
  g_side = 0;
  g_rot = 0.0;
  g_rotT = 0.0; /* side 0 starts at the bottom */
  g_jump = 0.0;
  g_jv = 0.0;
  g_fallT = 0.0;
}

static void draw(void); /* forward decl */

void run3_init(uint32_t seed) {
  g_seed = seed ? seed : 1u;
  for (int i = 0; i < STARS; i++) {
    star_x[i] = (int)(rnd() % W);
    star_y[i] = (int)(rnd() % H);
    star_s[i] = (int)(rnd() % 2) + 1;
    star_c[i] = rgb(160 + (int)(rnd() % 90), 160 + (int)(rnd() % 90),
                    200 + (int)(rnd() % 55));
  }
  run3_level(0);
}

/* ---------------- exported API ---------------- */

int32_t run3_state(void) { return g_state; }
int32_t run3_level_idx(void) { return g_tun; }
double run3_progress(void) {
  double p = g_prog / g_rows;
  return p < 0.0 ? 0.0 : (p > 1.0 ? 1.0 : p);
}
int32_t run3_rows(void) { return (int32_t)g_prog; }
double run3_rows_total(void) { return g_rows; }
double run3_rows_per(void) { return g_rowsPer; }
int32_t run3_level_count(void) { return NTUNNELS; }
int32_t run3_sides(void) { return g_n; }
int32_t run3_solid(int32_t side, int32_t row) {
  if (side < 0 || side >= g_n) return 0;
  return solid_at(side, row) ? 1 : 0;
}
int32_t run3_width(void) { return W; }
int32_t run3_height(void) { return H; }
uint32_t *run3_buffer(void) { return fb; }

void run3_flap(void) { /* one tap = "go": jump / start / retry / advance */
  if (g_state == S_READY) {
    g_state = S_RUN;
  } else if (g_state == S_RUN) {
    if (g_jump <= 0.001 && g_jv <= 0.0) {
      g_jump = 0.001;
      g_jv = JUMPV;
    }
  } else if (g_state == S_DEAD) {
    run3_level(g_tun); /* retry the same level, straight back into the run */
    g_state = S_RUN;
  } else if (g_state == S_CLEAR) {
    run3_level(g_tun + 1 < NTUNNELS ? g_tun + 1 : 0); /* next tunnel */
    g_state = S_RUN;
  }
}

/* Gravity-jump to an adjacent side. The view rolls so the new side becomes
   the floor. Refuses the switch if the landing strip is not solid. */
int32_t run3_switch(int dir) {
  if (g_state != S_RUN) return 0;
  int ns = (g_side + (dir > 0 ? 1 : g_n - 1)) % g_n;
  if (ns == g_side) return 0;
  int r0 = (int)g_prog;
  for (int rr = r0; rr <= r0 + 3; rr++)
    if (!solid_at(ns, rr)) return 0;
  g_side = ns;
  g_rotT = -(TAU * (double)g_side) / (double)g_n;
  return 1;
}

void run3_step(double dt) {
  if (dt <= 0.0) dt = 1.0 / 60.0;
  if (dt > 0.1) dt = 0.1;

  /* ease the view roll */
  double d = g_rotT - g_rot;
  if (d * d > 1e-6) {
    g_rot += d * (dt * 14.0 < 1.0 ? dt * 14.0 : 1.0);
  } else {
    g_rot = g_rotT;
  }

  if (g_state == S_RUN) {
    g_prog += g_rowsPer * dt;
    int row = (int)g_prog;

    if (row >= (int)g_rows) {
      g_state = S_CLEAR;
    } else if (g_jump > 0.0 || g_jv > 0.0) {
      /* airborne: fall in rolled -y (gravity reorients when you switch) */
      g_jump += g_jv * dt;
      g_jv -= GRAV * dt;
      if (g_jump <= 0.0) {
        if (solid_at(g_side, row)) {
          g_jump = 0.0;
          g_jv = 0.0;
        } else {
          g_state = S_DEAD; /* landed in a void */
          g_fallT = 0.0;
        }
      }
    } else if (!solid_at(g_side, row)) {
      g_state = S_DEAD; /* stepped into the void */
      g_fallT = 0.0;
    }
  } else if (g_state == S_DEAD) {
    g_fallT += dt;
  }

  draw();
}

/* ---------------- rendering ---------------- */

/* theme: sky, floor(bright), wall(mid), deep(opposite walls) */
static const uint32_t PAL[5][4] = {
    { rgb(10, 12, 26),  rgb(130, 185, 255), rgb(64, 100, 165), rgb(36, 58, 98) },
    { rgb(24, 8, 26),   rgb(255, 150, 235), rgb(170, 84, 152), rgb(104, 48, 94) },
    { rgb(6, 20, 22),   rgb(96, 235, 195),  rgb(48, 145, 120), rgb(28, 92, 76) },
    { rgb(26, 16, 8),   rgb(255, 196, 110), rgb(176, 122, 60), rgb(110, 74, 38) },
    { rgb(8, 22, 14),   rgb(150, 235, 110), rgb(88, 152, 62),  rgb(54, 96, 40) },
};

static void fill_rect(int x, int y, int w, int h, uint32_t c) {
  int x0 = x < 0 ? 0 : x;
  int y0 = y < 0 ? 0 : y;
  int x1 = x + w; if (x1 > W) x1 = W;
  int y1 = y + h; if (y1 > H) y1 = H;
  for (int yy = y0; yy < y1; yy++)
    for (int xx = x0; xx < x1; xx++)
      fb[(uint32_t)yy * W + (uint32_t)xx] = c;
}

/* convex quad fill, scanline style (double math, screen clipped) */
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

static void proj(double x, double y, double z, double *sx, double *sy) {
  double d = DCAM + z; /* depth from the camera */
  double s = FOCAL / d;
  *sx = CX + x * s;
  *sy = CY - y * s; /* +y up on screen */
}

/* corner c of the ring in VIEW space (side g_side flat at the bottom after
   the roll has settled; during a switch the ring is mid-rotation) */
static void corner(int c, double *x, double *y) {
  double a = -PI / 2.0 - PI / (double)g_n + TAU * (double)c / (double)g_n + g_rot;
  *x = g_R * scos(a);
  *y = g_R * ssin(a);
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

static void draw(void) {
  int th = TUNNELS[g_tun].theme % 5;
  uint32_t sky = PAL[th][0];
  for (int i = 0; i < W * H; i++) fb[i] = sky;
  for (int s = 0; s < STARS; s++)
    fill_rect(star_x[s], star_y[s], star_s[s], star_s[s], star_c[s]);

  /* draw tile rows far -> near (z from +VIEW down to the camera plane) */
  double front = g_prog;
  int rFar = (int)(front + VIEW / g_tile) + 2;
  int rNear = (int)(front - (DCAM + g_tile) / g_tile) - 2;
  double hz = 0.5 * g_tile;

  for (int ri = rFar; ri >= rNear; ri--) {
    double zc = ((double)ri - front) * g_tile; /* row center depth */
    double zFar = zc + hz;
    double zNear = zc - hz;
    if (zFar > VIEW) continue;
    if (zNear < -DCAM + 0.15) continue;

    /* fog: tiles far away melt into the sky */
    double fog = (zFar / VIEW) * 0.85;
    if (fog < 0.0) fog = 0.0;
    if (fog > 0.85) fog = 0.85;

    /* ring corners for this row (view space) */
    double rx[MAXN + 1], ry[MAXN + 1];
    for (int c = 0; c <= g_n; c++) corner(c, &rx[c], &ry[c]);

    for (int side = 0; side < g_n; side++) {
      int rowIdx = ri;
      if (!solid_at(side, rowIdx)) {
        /* void: paint the empty side strip near-black so gaps read as holes */
        uint32_t vcol = mixc(rgb(4, 5, 11), sky, fog * 0.35);
        double p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y;
        proj(rx[side], ry[side], zFar, &p0x, &p0y);
        proj(rx[side + 1], ry[side + 1], zFar, &p1x, &p1y);
        proj(rx[side + 1], ry[side + 1], zNear, &p2x, &p2y);
        proj(rx[side], ry[side], zNear, &p3x, &p3y);
        fill_quad(p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y, vcol);
        continue;
      }
      uint32_t base;
      if (side == g_side) base = PAL[th][1];
      else if (side == (g_side + 1) % g_n || side == (g_side + g_n - 1) % g_n)
        base = PAL[th][2];
      else
        base = PAL[th][3];
      uint32_t col = mixc(base, sky, fog);
      /* tiny alternation so individual tiles read on long walls */
      if ((side & 1) && side != g_side) col = mixc(col, sky, 0.10);

      for (int l = 0; l < g_k; l++) {
        double t0 = (double)l / (double)g_k;
        double t1 = (double)(l + 1) / (double)g_k;
        double ax = rx[side] + (rx[side + 1] - rx[side]) * t0;
        double ay = ry[side] + (ry[side + 1] - ry[side]) * t0;
        double bx = rx[side] + (rx[side + 1] - rx[side]) * t1;
        double by = ry[side] + (ry[side + 1] - ry[side]) * t1;
        double p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y;
        proj(ax, ay, zFar, &p0x, &p0y);
        proj(bx, by, zFar, &p1x, &p1y);
        proj(bx, by, zNear, &p2x, &p2y);
        proj(ax, ay, zNear, &p3x, &p3y);
        fill_quad(p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y, col);
      }
    }
  }

  /* the runner: stationary at the bottom-center of the rolled view.
     Surface of the current side is at view-space y = -g_ap (+g_jump). */
  double vy = -g_ap + g_jump;
  double vz = 0.0;
  if (g_state == S_DEAD) {
    double f = g_fallT * 1.4;
    if (f > 1.5) f = 1.5;
    vy -= f; /* sink through the floor into the void */
  }
  double sx, sy;
  proj(0.0, vy, vz, &sx, &sy);

  double shrink = 1.0;
  if (g_state == S_DEAD) {
    double f = g_fallT * 0.9;
    if (f > 0.55) f = 0.55;
    shrink = 1.0 - f;
    if (shrink < 0.45) shrink = 0.45;
  }
  int r = (int)(12.0 * shrink + 0.5);

  if (g_state == S_DEAD) {
    /* tumbling fall: just a shrinking blob */
    fill_circle((int)sx, (int)sy, r, rgb(200, 96, 110));
  } else {
    /* little round runner seen from behind */
    fill_circle((int)sx, (int)sy - r / 3, r, rgb(235, 244, 255));     /* body */
    fill_circle((int)sx, (int)sy - r - 1, r / 2, rgb(235, 244, 255)); /* head */
    fill_circle((int)sx, (int)sy - r - 1, r / 4, rgb(36, 40, 56));    /* back of helmet */
    fill_circle((int)sx, (int)sy - r - 1, 1, rgb(36, 40, 56));
    fill_circle((int)sx + 2, (int)sy - r - 3, 1, rgb(36, 40, 56));
  }
}
