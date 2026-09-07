/*
 * run3.c - engine core (one of the two engine files; the other is render.c).
 *
 * Model (Run 3 tribute, original implementation - no code, assets or level
 * data copied from Run 3):
 *   - The world is a branching map of tunnels. A tunnel is ONE continuous
 *     tube (fixed geometry + palette + difficulty ramp) split into checkpoint
 *     levels that each last 45 seconds. Clearing the last checkpoint of a
 *     tunnel finishes it; story/rename beats happen in the host page.
 *   - Camera behind the runner; tiles stream toward the camera; rows are
 *     clipped AT the camera plane, never culled early.
 *   - Tube cross-section: convex polygon with 4..16 sides, k >= 1 uniform
 *     tiles per side. The player has a precise continuous position on the
 *     wall (a ring coordinate, in tiles). Lateral steering is eased.
 *   - The only death is falling through a missing tile into the void: holes
 *     remove single tiles (weave), whole rows (jump) or 4-row wall voids
 *     (run around the corner; gravity follows you).
 *   - Rows are generated deterministically from (tunnel seed, absolute row),
 *     so level boundaries, gates and retries are seamless.
 *
 * Build with build.sh. The host page is I/O only.
 */
#include <stdint.h>
#include "run3.h"

/* shape archetypes: sides, tiles per side, base tile size */
static const uint8_t SH_N[8] = { 4, 4, 5, 6, 8, 10, 12, 16 };
static const uint8_t SH_K[8] = { 4, 4, 2, 3, 3, 2, 2, 3 };
static const double SH_T[8] = { 0.60, 0.80, 1.00, 0.733, 0.567, 0.70, 0.60, 0.34 };

game_t G;
uint8_t GMAP[MAXN][MAPW];
int GMAP_BASE = 0;

static double g_levelRows[MAX_LEVELS];
static double g_rowStart[MAX_LEVELS + 1];
static uint32_t g_seedT; /* per-tunnel deterministic seed */

/* ---------------- math ---------------- */
double ssin(double x) {
  x -= TAU * (double)((long long)(x / TAU));
  if (x < 0.0) x += TAU;
  int sign = 1;
  if (x > PI) { x = TAU - x; sign = -1; }
  if (x > PI / 2.0) x = PI - x;
  double x2 = x * x;
  double s = x * (1.0 + x2 * (-1.0 / 6.0 + x2 * (1.0 / 120.0 +
             x2 * (-1.0 / 5040.0 + x2 / 362880.0))));
  return sign > 0 ? s : -s;
}
double scos(double x) { return ssin(PI / 2.0 - x); }
double ssqrt(double x) {
  if (x <= 0.0) return 0.0;
  double y = x;
  for (int i = 0; i < 6 && y > 0.0; i++) y = 0.5 * (y + x / y);
  return y;
}
uint32_t h32(uint32_t x) {
  x ^= x >> 16; x *= 0x7feb352du;
  x ^= x >> 15; x *= 0x846ca68bu;
  x ^= x >> 16;
  return x;
}

/* ---------------- tunnel / level setup ---------------- */

static const tunnel_t *tun(void) { return &TUNNELS[G.tun]; }

static double rpsAt(int lvl) {
  const tunnel_t *t = tun();
  double m = t->maxRps < MAX_RPS ? t->maxRps : MAX_RPS;
  double r = t->baseRps + t->rpsPer * (double)lvl;
  return r > m ? m : r;
}
static double holeAt(int lvl) {
  const tunnel_t *t = tun();
  double m = t->maxHole < MAX_HOLE ? t->maxHole : MAX_HOLE;
  double h = t->holeStart + t->holePer * (double)lvl;
  return h > m ? m : h;
}

static void compute_rows(void) {
  const tunnel_t *t = tun();
  g_rowStart[0] = 0.0;
  for (int j = 0; j < (int)t->levels; j++) {
    g_levelRows[j] = (double)((int)(45.0 * rpsAt(j) + 0.5));
    g_rowStart[j + 1] = g_rowStart[j] + g_levelRows[j];
  }
}

/* fill GMAP (missing-lane bitmasks) for the current level's row window */
static void build_window(void) {
  const tunnel_t *t = tun();
  int n = SH_N[t->shape], k = SH_K[t->shape];
  int all = (1 << k) - 1;
  int r0 = (int)g_rowStart[G.lvl];
  int rEnd = (int)g_rowStart[G.lvl + 1] + PADW;
  if (rEnd > r0 + MAPW - 1) rEnd = r0 + MAPW - 1;
  GMAP_BASE = r0;
  for (int i = 0; i < MAPW; i++)
    for (int s = 0; s < MAXN; s++) GMAP[s][i] = 0;
  int be = (int)G.blockEvery;
  for (int R = r0; R <= rEnd; R++) {
    int i = R - r0;
    if (i < 4) continue; /* a clean stretch right after each gate */
    int voidSide = -1, buffered = 0;
    if (be > 0) {
      int w0 = (R - 4) / be; if (w0 < 0) w0 = 0;
      int w1 = (R + 2) / be; if (w1 < 0) w1 = 0;
      for (int w = w0; w <= w1; w++) {
        int br = w * be;
        if (R >= br - 2 && R <= br + 4) {
          buffered = 1;
          if (R >= br && R <= br + 3) voidSide = (int)((w + 2) % n);
          break;
        }
      }
    }
    for (int s2 = 0; s2 < n; s2++) {
      uint8_t m = 0;
      if (voidSide >= 0) {
        m = (s2 == voidSide) ? (uint8_t)all : 0;
      } else if (!buffered) {
        uint8_t prev = (i - 1 >= 0) ? GMAP[s2][i - 1] : 0;
        if (prev == 0) {
          uint32_t h = h32(g_seedT ^ (uint32_t)(s2 * 1013u) ^ (uint32_t)(R * 7919u));
          if ((double)((h >> 8) & 0xffff) / 65536.0 < G.holeP) {
            uint32_t x = h32(h ^ 0x9e3779b9u);
            uint8_t mask = 0;
            int want = 1 + (int)((x & 0xffff) * (double)k / 65536.0);
            if (want > k) want = k;
            while (want > 0) {
              x = h32(x + 0x85ebca6bu);
              int lane = (int)((x & 0xffff) * (double)k / 65536.0) % k;
              if (!(mask & (1u << lane))) { mask |= (uint8_t)(1u << lane); want--; }
            }
            m = mask;
          }
        }
      }
      GMAP[s2][i] = m;
    }
  }
}

static void open_level(int lvl) {
  const tunnel_t *t = tun();
  G.lvl = (uint16_t)lvl;
  compute_rows();
  G.shape = SH_N[t->shape];
  G.k = SH_K[t->shape];
  G.tile = SH_T[t->shape] * t->tileMul;
  G.theme = t->theme;
  G.rowsPer = rpsAt(lvl);
  G.holeP = holeAt(lvl);
  G.blockEvery = (lvl >= t->blockStart) ? t->blockEvery : 0;
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = g_rowStart[lvl + 1];
  build_window();
  G.state = S_READY;
  G.prog = G.rowStart;
  G.ring = (double)G.k * 0.5;
  G.vRing = 0.0;
  G.jump = 0.0;
  G.jv = 0.0;
  G.fallT = 0.0;
  G.rot = 0.0;
  G.rotT = 0.0;
  G.input = 0.0;
}

/* ---------------- helpers ---------------- */
static int side_under(void) { return wrap_side(G.ring, G.k, G.shape); }
static int lane_under(void) { return wrap_lane(G.ring, G.k); }
/* character stats: lat speed, jump velocity, gravity multipliers */
static const double CHAR_LAT[3] = { 1.00, 1.25, 0.85 };
static const double CHAR_JUMP[3] = { 1.00, 0.85, 1.10 };
static const double CHAR_GRAV[3] = { 1.00, 1.00, 0.70 };

static int lane_ok_at(int rowAbs) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  int s = side_under();
  if (s >= G.shape) return 0;
  return (GMAP[s][i] & (1u << lane_under())) ? 0 : 1;
}

/* ---------------- API ---------------- */
void run3_init(uint32_t seed) {
  seed = seed ? seed : 1u;
  g_seedT = h32(seed ^ 0x85ebca6bu);
  render_init_stars(seed);
  if (NTUNNELS > 0) {
    G.tun = 0;
    g_seedT = h32(h32(seed) ^ (uint32_t)(G.tun * 2654435761u) ^ 0x9e3779b9u);
    open_level(0);
  }
}
void run3_open(int tunIdx) {
  if (tunIdx < 0 || tunIdx >= (int)NTUNNELS) tunIdx = 0;
  G.tun = (uint16_t)tunIdx;
  uint32_t base = h32(0x5eedu);
  g_seedT = h32(base ^ (uint32_t)(tunIdx * 2654435761u) ^ 0x9e3779b9u);
  open_level(0);
}
void run3_seek(int tunIdx, int lvl) {
  if (tunIdx < 0 || tunIdx >= (int)NTUNNELS) tunIdx = 0;
  G.tun = (uint16_t)tunIdx;
  uint32_t base = h32(0x5eedu);
  g_seedT = h32(base ^ (uint32_t)(tunIdx * 2654435761u) ^ 0x9e3779b9u);
  const tunnel_t *t = tun();
  if (lvl < 0) lvl = 0;
  if (lvl >= (int)t->levels) lvl = (int)t->levels - 1;
  open_level(lvl);
}

void run3_flap(void) {
  if (G.state == S_READY) {
    G.state = S_RUN;
  } else if (G.state == S_RUN) {
    if (G.jump <= 0.001 && G.jv <= 0.0) {
      int cm = G.charm < 3 ? G.charm : 0;
      G.jump = 0.001;
      G.jv = JUMPV * CHAR_JUMP[cm];
    }
  } else if (G.state == S_DEAD) {
    open_level(G.lvl);
    G.state = S_RUN;
  } else if (G.state == S_GATE) {
    if (G.lvl + 1 < tun()->levels) {
      open_level(G.lvl + 1);
      G.state = S_READY;
    } else {
      G.state = S_DONE;
    }
  }
  /* S_DONE: page returns to the map and calls run3_open(next) */
}

void run3_step(double dt) {
  if (dt <= 0.0) dt = 1.0 / 60.0;
  if (dt > 0.1) dt = 0.1;
  int n = G.shape, k = G.k;

  if (G.state == S_RUN) {
    G.prog += G.rowsPer * dt;
    if (G.prog >= G.rowEnd) {
      G.state = (G.lvl + 1 < tun()->levels) ? S_GATE : S_DONE;
    } else {
      /* eased lateral steering (per-character stats) */
      int cm = G.charm < 3 ? G.charm : 0;
      double maxV = LATSPD * CHAR_LAT[cm];
      double target = G.input * maxV;
      double ease = dt * STEER_EASE;
      if (ease > 1.0) ease = 1.0;
      G.vRing += (target - G.vRing) * ease;
      if (G.vRing > maxV) G.vRing = maxV;
      if (G.vRing < -maxV) G.vRing = -maxV;
      G.ring += G.vRing * dt;
      double tot = (double)(n * k);
      if (G.ring < 0.0) G.ring += tot;
      if (G.ring >= tot) G.ring -= tot;

      if (G.jump > 0.0 || G.jv > 0.0) {
        int cm = G.charm < 3 ? G.charm : 0;
        G.jump += G.jv * dt;
        G.jv -= GRAV * CHAR_GRAV[cm] * dt;
        if (G.jump <= 0.0) {
          if (lane_ok_at((int)G.prog)) {
            G.jump = 0.0;
            G.jv = 0.0;
          } else {
            G.state = S_DEAD;
            G.fallT = 0.0;
          }
        }
      } else if (!lane_ok_at((int)G.prog)) {
        G.state = S_DEAD;
        G.fallT = 0.0;
      }
    }
  } else if (G.state == S_DEAD) {
    G.fallT += dt;
  }

  /* ease the view roll so the wall under the runner is flat at the bottom */
  double target2 = -(TAU * (double)side_under()) / (double)n;
  double d = target2 - G.rot;
  if (d * d > 1e-6) {
    double step = d * (dt * 14.0);
    if (step > 0.0 && step > d) step = d;
    if (step < 0.0 && step < d) step = d;
    G.rot += step;
  } else {
    G.rot = target2;
  }
  G.rotT = target2;

  render_frame();
}

/* ---------------- exported accessors ---------------- */
int32_t run3_state(void) { return G.state; }
int32_t run3_tun(void) { return G.tun; }
int32_t run3_lvl(void) { return G.lvl; }
int32_t run3_tunnel_count(void) { return NTUNNELS; }
int32_t run3_tunnel_levels(void) { return tun()->levels; }
int32_t run3_levels_in(int32_t tunIdx) {
  if (tunIdx < 0 || tunIdx >= (int)NTUNNELS) return 0;
  return TUNNELS[tunIdx].levels;
}
double run3_progress(void) {
  double span = G.rowEnd - G.rowStart;
  double p = span > 0.0 ? (G.prog - G.rowStart) / span : 0.0;
  return p < 0.0 ? 0.0 : (p > 1.0 ? 1.0 : p);
}
double run3_rows_per(void) { return G.rowsPer; }
int32_t run3_sides(void) { return G.shape; }
int32_t run3_lanes(void) { return G.k; }
int32_t run3_theme(void) { return G.theme; }
int32_t run3_side(void) { return side_under(); }
int32_t run3_lane(void) { return lane_under(); }
int32_t run3_row(void) { return (int32_t)G.prog; }
double run3_rowf(void) { return G.prog; }
double run3_level_rows(void) { return G.rowEnd - G.rowStart; }
double run3_ring(void) { return G.ring; }
int32_t run3_tile(int32_t side, int32_t row, int32_t lane) {
  int i = row - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  return (GMAP[side & (MAXN - 1)][i] & (1u << lane)) ? 0 : 1;
}
int32_t run3_solid(int32_t side, int32_t row) {
  int i = row - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  return GMAP[side & (MAXN - 1)][i] == 0 ? 1 : 0;
}
void run3_set_input(double lr) {
  if (lr < -1.0) lr = -1.0;
  if (lr > 1.0) lr = 1.0;
  G.input = lr;
}
void run3_set_char(int32_t c) {
  G.charm = (uint8_t)(c < 0 ? 0 : (c > 2 ? 2 : c));
}
int32_t run3_width(void) { return W; }
int32_t run3_height(void) { return H; }
