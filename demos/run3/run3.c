/*
 * run3.c - engine core (simulation, state, exports).
 *
 * Tunnel cross-sections: convex polygon with n sides (4..32), k tiles per
 * side (1..8). The player has a precise continuous ring position. Lateral
 * steering is eased. Death = falling through a missing tile into the void.
 *
 * Infinite mode: endless tunnel with increasing speed and hazard density.
 * Power cells: earned by clearing checkpoints, spent in the shop.
 * All characters unlock through gameplay (clearing tunnels).
 */
#include <stdint.h>
#include "run3.h"

game_t G;
uint8_t GMAP[MAXN][MAPW];
int GMAP_BASE = 0;

static double g_levelRows[MAX_LEVELS];
static double g_rowStart[MAX_LEVELS + 1];
static uint32_t g_seedT;

/* infinite mode state */
static double g_infSpeed;       /* rows/s in infinite mode */
static double g_infHoleP;       /* hole probability */
static int    g_infRows;        /* rows cleared */
static int    g_infScore;       /* score (cells earned) */
static uint32_t g_infSeed;      /* infinite mode seed */

/* shop state (exported to host) */
static int32_t g_powercells;

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
  /* halve into range first: 6 Newton steps from y=x never converge for
     large x (e.g. squared edge lengths ~1e5), which broke checkpoint pitch */
  if (y > 1.0) {
    double lim = 16.0 * x;
    while (y * y > lim && y > 0.0) y *= 0.5;
    if (y <= 0.0) y = 1.0;
  }
  for (int i = 0; i < 8 && y > 0.0; i++) y = 0.5 * (y + x / y);
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

/* fill GMAP for the current level window */
static void build_window(void) {
  const tunnel_t *t = tun();
  int n = t->n_sides, k = t->k_tiles;
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
    if (i < 4) continue;
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

/* build GMAP for infinite mode at current position */
static void build_inf_window(int baseRow) {
  int n = G.shape, k = G.k;
  int all = (1 << k) - 1;
  int r0 = baseRow;
  int rEnd = r0 + MAPW;
  GMAP_BASE = r0;
  for (int i = 0; i < MAPW; i++)
    for (int s = 0; s < MAXN; s++) GMAP[s][i] = 0;
  for (int R = r0; R <= rEnd; R++) {
    int i = R - r0;
    if (i < 4) continue;
    for (int s2 = 0; s2 < n; s2++) {
      uint32_t h = h32(g_infSeed ^ (uint32_t)(s2 * 1013u) ^ (uint32_t)(R * 7919u));
      uint8_t m = 0;
      if ((double)((h >> 8) & 0xffff) / 65536.0 < g_infHoleP) {
        uint32_t x = h32(h ^ 0x9e3779b9u);
        int want = 1 + (int)((x & 0xffff) * (double)k / 65536.0);
        if (want > k) want = k;
        while (want > 0) {
          x = h32(x + 0x85ebca6bu);
          int lane = (int)((x & 0xffff) * (double)k / 65536.0) % k;
          if (!(m & (1u << lane))) { m |= (uint8_t)(1u << lane); want--; }
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
  G.shape = t->n_sides;
  G.k = t->k_tiles;
  G.tile = t->baseTile;
  G.theme = t->theme;
  G.rowsPer = rpsAt(lvl);
  G.holeP = holeAt(lvl);
  G.blockEvery = (lvl >= t->blockStart) ? t->blockEvery : 0;
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = g_rowStart[lvl + 1];
  build_window();
  G.state = S_RUN; /* instant start: the runner never waits */
  G.prog = G.rowStart;
  G.ring = (double)G.k * 0.5;
  G.vRing = 0.0;
  G.jump = 0.0;
  G.jv = 0.0;
  G.fallT = 0.0;
  G.rot = 0.0;
  G.rotT = 0.0;
  G.input = 0.0;
  G.animT = 0.0;
  G.landT = 0.0;
}

/* open the next checkpoint WITHOUT stopping: keep everything that places the
   runner (ring/vRing/roll/jump/input/clocks) so there is no teleport — only
   fresh tunnel/level tuning is loaded. prog carries its overshoot. */
static void open_level_continue(int lvl, double over) {
  const tunnel_t *t = tun();
  G.lvl = (uint16_t)lvl;
  compute_rows();
  G.shape = t->n_sides;
  G.k = t->k_tiles;
  G.tile = t->baseTile;
  G.theme = t->theme;
  G.rowsPer = rpsAt(lvl);
  G.holeP = holeAt(lvl);
  G.blockEvery = (lvl >= t->blockStart) ? t->blockEvery : 0;
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = g_rowStart[lvl + 1];
  build_window();
  G.state = S_RUN;
  G.prog = G.rowStart + over;
  if (G.prog >= G.rowEnd) G.prog = G.rowEnd - 0.001;
  /* ring, vRing, rot, rotT, jump, jv, input, animT, landT preserved */
}

/* ---------------- helpers ---------------- */
static int side_under(void) { return wrap_side(G.ring, G.k, G.shape); }
static int lane_under(void) { return wrap_lane(G.ring, G.k); }

/* character stats: lat speed, jump velocity, gravity multipliers */
static const double CHAR_LAT[6]  = { 1.00, 1.25, 0.85, 1.00, 0.90, 0.95 };
static const double CHAR_JUMP[6] = { 1.00, 0.85, 1.10, 1.00, 0.95, 1.05 };
static const double CHAR_GRAV[6] = { 1.00, 1.00, 0.70, 0.60, 0.65, 0.90 };

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
  g_infSeed = h32(seed ^ 0xdeadbeefu);
  render_init_stars(seed);
  g_powercells = 0;
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

/* start infinite mode */
void run3_start_inf(void) {
  G.tun = 0;
  G.shape = 4;  /* start with a square tunnel */
  G.k = 4;
  G.tile = 0.70;
  G.theme = 0;
  g_infSpeed = 2.5;
  g_infHoleP = 0.04;
  g_infRows = 0;
  g_infScore = 0;
  G.rowStart = 0.0;
  G.rowEnd = 999999.0;
  G.prog = 0.0;
  G.ring = (double)G.k * 0.5;
  G.vRing = 0.0;
  G.jump = 0.0;
  G.jv = 0.0;
  G.fallT = 0.0;
  G.rot = 0.0;
  G.rotT = 0.0;
  G.input = 0.0;
  G.animT = 0.0;
  G.landT = 0.0;
  G.rowsPer = g_infSpeed;
  G.holeP = g_infHoleP;
  G.blockEvery = 0;
  build_inf_window(0);
  G.state = S_RUN; /* instant start */
}

void run3_flap(void) {
  if (G.state == S_READY) {
    G.state = S_RUN;
  } else if (G.state == S_RUN) {
    if (G.jump <= 0.001 && G.jv <= 0.0) {
      int cm = G.charm < 6 ? G.charm : 0;
      G.jump = 0.001;
      G.jv = JUMPV * CHAR_JUMP[cm];
      G.landT = 0.0; /* leaving ground cancels the landing pose */
    }
  } else if (G.state == S_DEAD) {
    if (G.rowEnd > 900000.0) {
      /* infinite mode: restart */
      G.state = S_RUN;
      G.prog = 0.0;
      G.ring = (double)G.k * 0.5;
      G.vRing = 0.0;
      G.jump = 0.0;
      G.jv = 0.0;
      G.fallT = 0.0;
      G.animT = 0.0;
      G.landT = 0.0;
      g_infSpeed = 2.5;
      g_infHoleP = 0.04;
      g_infRows = 0;
      build_inf_window(0);
    } else {
      open_level(G.lvl);
      G.state = S_RUN;
    }
  } else if (G.state == S_GATE) {
    /* earn power cells for clearing a checkpoint */
    g_powercells += 5;
    if (G.rowEnd > 900000.0) {
      /* infinite mode: keep going, increase difficulty */
      g_infSpeed += 0.3;
      if (g_infSpeed > MAX_RPS) g_infSpeed = MAX_RPS;
      g_infHoleP += 0.008;
      if (g_infHoleP > MAX_HOLE) g_infHoleP = MAX_HOLE;
      G.rowsPer = g_infSpeed;
      G.holeP = g_infHoleP;
      G.rowStart = G.prog;
      G.rowEnd = G.prog + 999999.0;
      G.state = S_READY;
      build_inf_window((int)G.prog);
    } else if (G.lvl + 1 < tun()->levels) {
      open_level(G.lvl + 1);
      G.state = S_RUN; /* fallback path also never waits */
    } else {
      g_powercells += 10; /* bonus for finishing a tunnel */
      G.state = S_DONE;
    }
  }
}

void run3_step(double dt) {
  if (dt <= 0.0) dt = 1.0 / 60.0;
  if (dt > 0.1) dt = 0.1;
  int n = G.shape, k = G.k;

  if (G.state == S_RUN) {
    G.prog += G.rowsPer * SPEED_MUL * dt;
    G.animT += dt; /* run-cycle clock (time-based, not distance-based) */
    if (G.landT > 0.0) {
      G.landT -= dt;
      if (G.landT < 0.0) G.landT = 0.0;
    }

    /* infinite mode: rebuild window as we advance */
    if (G.rowEnd > 900000.0) {
      int curRow = (int)G.prog;
      if (curRow - GMAP_BASE > MAPW / 2) {
        build_inf_window(curRow);
      }
      g_infRows = curRow;
    }

    if (G.prog >= G.rowEnd && G.rowEnd < 900000.0) {
      /* checkpoint reached — roll straight into the next one, no stopping.
         Only respawns teleport; gates preserve the runner exactly. */
      double over = G.prog - G.rowEnd;
      g_powercells += 5; /* checkpoint cleared */
      if (G.lvl + 1 < tun()->levels) {
        open_level_continue(G.lvl + 1, over);
      } else {
        g_powercells += 10; /* bonus for finishing a tunnel */
        G.state = S_DONE;
      }
    } else {
      /* eased lateral steering */
      int cm = G.charm < 6 ? G.charm : 0;
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
        int cm2 = G.charm < 6 ? G.charm : 0;
        G.jump += G.jv * dt;
        G.jv -= GRAV * CHAR_GRAV[cm2] * dt;
        if (G.jump <= 0.0) {
          if (lane_ok_at((int)G.prog)) {
            G.jump = 0.0;
            G.jv = 0.0;
            G.landT = 0.25; /* touchdown -> landing pose */
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
    G.animT += dt; /* keep the fall cycle playing while falling */
    if (G.fallT >= 0.8) {
      /* instant respawn at the checkpoint start (the one allowed teleport) */
      open_level(G.lvl);
      /* open_level auto-starts (S_RUN) */
    }
  }

  /* ease the view roll along the shortest path.
     Without the wrap, the wrap-around corner (side n-1 -> 0) eases almost a
     full turn instead of one step like every other corner. */
  double target2 = -(TAU * (double)side_under()) / (double)n;
  double d = target2 - G.rot;
  while (d > PI) d -= TAU;
  while (d <= -PI) d += TAU;
  if (d * d > 1e-6) {
    double step = d * (dt * 14.0);
    if (step > 0.0 && step > d) step = d;
    if (step < 0.0 && step < d) step = d;
    G.rot += step;
    /* keep bounded: +/-TAU is visually identical, so normalize freely */
    while (G.rot > PI) G.rot -= TAU;
    while (G.rot <= -PI) G.rot += TAU;
  } else {
    G.rot += d; /* snap the (short) remainder */
    while (G.rot > PI) G.rot -= TAU;
    while (G.rot <= -PI) G.rot += TAU;
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
  if (G.rowEnd > 900000.0) return 0.5; /* infinite: always show 50% */
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
  G.charm = (uint8_t)(c < 0 ? 0 : (c > 5 ? 5 : c));
}
int32_t run3_width(void) { return W; }
int32_t run3_height(void) { return H; }

/* power cell / shop API */
int32_t run3_powercells(void) { return g_powercells; }
void run3_add_cells(int32_t n) { g_powercells += n; }
void run3_spend_cells(int32_t n) { if (g_powercells >= n) g_powercells -= n; }
int32_t run3_inf_score(void) { return g_infScore; }
int32_t run3_inf_rows(void) { return g_infRows; }

/* ==================== MAP MODE ==================== */
#include "levels/map_assets.h"

static int map_scroll_y = 0;  /* vertical scroll for the map */
static int map_selected = -1; /* selected tunnel id, -1 = none */
static int map_selected_level = -1; /* selected checkpoint lvl, -1 = node/none */
static int map_hovered = -1;  /* hovered tunnel id */
static int map_hovered_level = -1; /* hovered checkpoint lvl */
static uint8_t map_locked[MAX_TUNNELS];
static uint8_t map_cleared[MAX_TUNNELS];
static int map_parent[MAX_TUNNELS];
static int map_parents_built = 0;

/* menu state */
static int menu_char = 0;     /* selected character on menu */
static int menu_hover = -1;   /* hover target: 0=play, 1=inf, 2=char area */
static int menu_char_count = 17;

static int map_scroll_x = 0;
void run3_enter_map(void) {
  G.state = S_MAP;
  map_selected = -1;
  map_selected_level = -1;
  map_hovered = -1;
  map_hovered_level = -1;
  map_scroll_y = 0;
  map_scroll_x = 0;
  /* default: only tunnel 0 unlocked, rest locked until JS syncs */
  for (int i = 0; i < MAX_TUNNELS; i++) { map_locked[i] = 1; map_cleared[i] = 0; }
  if (MAX_TUNNELS > 0) map_locked[0] = 0;
}
void run3_enter_menu(void) {
  G.state = S_MENU;
}
void run3_set_char_count(int n) { if (n > 0) menu_char_count = n; }
int  run3_menu_char(void) { return menu_char; }
void run3_menu_select_char(int c) { if (c >= 0 && c < menu_char_count) menu_char = c; }

int run3_map_scroll_y(void) { return map_scroll_x; }
int run3_map_scroll_x(void) { return map_scroll_x; }
void run3_map_scroll(int dx) {
  map_scroll_x += dx;
  /* 1D horizontal scroll — world extends past 4000px (root stub at 30px pitch),
     so allow deep negative scroll to reach its far end */
  if (map_scroll_x < -3200) map_scroll_x = -3200;
  if (map_scroll_x > 600) map_scroll_x = 600;
  map_scroll_y = map_scroll_x; // keep y in sync for legacy
}
void run3_map_scroll_delta(int dx) { run3_map_scroll(dx); }

/* ---- checkpoints: every level of a continuous tunnel shows on the map ----
   Checkpoints lie along the tunnel's incoming edge (parent -> node), so each
   tunnel reads as one continuous playable run. The root tunnel (no parent)
   extends checkpoints horizontally right of its node. */
static void build_map_parents(void) {
  if (map_parents_built) return;
  for (int i = 0; i < MAX_TUNNELS; i++) map_parent[i] = -1;
  for (int i = 0; i < MAP_EDGE_COUNT; i++) {
    int a = map_edges[i].a, b = map_edges[i].b;
    if (a < 0 || a >= MAX_TUNNELS || b < 0 || b >= MAX_TUNNELS) continue;
    if (map_parent[b] < 0) map_parent[b] = a; /* first incoming wins */
  }
  map_parents_built = 1;
}

int run3_map_checkpoint_count(int tun) {
  if (tun < 0 || tun >= MAP_TUNNEL_COUNT || tun >= MAX_TUNNELS) return 0;
  return TUNNELS[tun].levels;
}

/* per-tunnel progress: best = checkpoints cleared (0 = fresh). Dot j shows iff j <= best. */
static uint16_t map_best[MAX_TUNNELS];
void run3_map_set_best(int tun, int best) {
  if (tun < 0 || tun >= MAX_TUNNELS) return;
  if (best < 0) best = 0;
  if (best > MAX_LEVELS) best = MAX_LEVELS;
  map_best[tun] = (uint16_t)best;
}
int run3_map_best(int tun) {
  if (tun < 0 || tun >= MAX_TUNNELS) return 0;
  return map_best[tun];
}

#define MAP_CKPT_PITCH 30 /* px between connected checkpoints */
void run3_map_checkpoint_pos(int tun, int lvl, int *x, int *y) {
  build_map_parents();
  int nx = 0, ny = 0;
  if (tun >= 0 && tun < MAP_TUNNEL_COUNT) { nx = map_nodes[tun].x; ny = map_nodes[tun].y; }
  int count = run3_map_checkpoint_count(tun);
  if (count <= 0) { if (x) *x = nx; if (y) *y = ny; return; }
  if (lvl < 0) lvl = 0;
  if (lvl >= count) lvl = count - 1;
  int p = (tun >= 0 && tun < MAX_TUNNELS) ? map_parent[tun] : -1;
  if (p < 0) {
    /* root: horizontal stub right of the node at fixed pitch */
    if (x) *x = nx + (lvl + 1) * MAP_CKPT_PITCH;
    if (y) *y = ny;
  } else {
    /* trail back from the node toward the parent at fixed pitch, so every
       connected pair is exactly 30px apart (overshoots past short parents) */
    int px = map_nodes[p].x, py = map_nodes[p].y;
    double dx = (double)(nx - px), dy = (double)(ny - py);
    double len = ssqrt(dx * dx + dy * dy);
    double back = (double)MAP_CKPT_PITCH * (double)(count - lvl);
    if (len < 1.0) {
      if (x) *x = nx + (int)back;
      if (y) *y = ny;
    } else {
      double fx = nx - dx / len * back;
      double fy = ny - dy / len * back;
      if (x) *x = (int)(fx + (fx >= 0.0 ? 0.5 : -0.5));
      if (y) *y = (int)(fy + (fy >= 0.0 ? 0.5 : -0.5));
    }
  }
}

/* shared picker: nearest wins across nodes and checkpoint dots. Only discovered.
   (Short edges pack a tunnel's first dots inside the parent node's ring,
   so first-match would bury them — nearest-match keeps every dot hittable.) */
static int map_pick(int mx, int my, int *lvlOut) {
  build_map_parents();
  int bestI = -1, bestJ = -1, bestD = 24*24 + 1;
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (run3_map_is_locked(i)) continue;
    int nx = map_nodes[i].x + map_scroll_x;
    int ny = map_nodes[i].y;
    int dx = mx - nx;
    int dy = my - ny;
    int dd = dx*dx + dy*dy;
    if (dd < 24*24 && dd < bestD) { bestD = dd; bestI = i; bestJ = -1; }
  }
  /* checkpoints: nearest within radius; only unlocked dots (j <= best) */
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (run3_map_is_locked(i)) continue;
    int count = run3_map_checkpoint_count(i);
    int unlocked = run3_map_best(i);
    for (int j = 0; j < count && j <= unlocked; j++) {
      int cx, cy;
      run3_map_checkpoint_pos(i, j, &cx, &cy);
      cx += map_scroll_x;
      int dx = mx - cx;
      int dy = my - cy;
      int dd = dx*dx + dy*dy;
      if (dd < 12*12 && dd < bestD) { bestD = dd; bestI = i; bestJ = j; }
    }
  }
  if (bestI >= 0) { if (lvlOut) *lvlOut = bestJ; return bestI; }
  if (lvlOut) *lvlOut = -1;
  return -1;
}

/* hit-test: which tunnel node/checkpoint is at canvas coords? Horizontal scroll, discovered only */
int run3_map_hover(int mx, int my) {
  return map_pick(mx, my, 0);
}

int run3_map_hover_level(int mx, int my) {
  int lvl = -1;
  map_pick(mx, my, &lvl);
  return lvl;
}

/* click on a map node/checkpoint: selects tunnel + optional checkpoint level */
void run3_map_click(int mx, int my) {
  int lvl = -1;
  int hit = map_pick(mx, my, &lvl);
  if (hit >= 0) { map_selected = hit; map_selected_level = lvl; }
  else { map_selected = -1; map_selected_level = -1; }
}

int run3_map_selected(void) { return map_selected; }
int run3_map_selected_level(void) { return map_selected_level; }
int run3_map_hovered(void) { return map_hovered; }
void run3_map_set_hover(int id) {
  if (id < -1) id = -1;
  if (id >= MAP_TUNNEL_COUNT) id = -1;
  map_hovered = id;
}
void run3_map_set_hover_level(int lvl) { map_hovered_level = lvl; }
int run3_map_hovered_level(void) { return map_hovered_level; }
void run3_map_set_locked(int tun, int locked) {
  if (tun < 0 || tun >= MAX_TUNNELS) return;
  map_locked[tun] = locked ? 1 : 0;
}
void run3_map_set_cleared(int tun, int cleared) {
  if (tun < 0 || tun >= MAX_TUNNELS) return;
  map_cleared[tun] = cleared ? 1 : 0;
}
int run3_map_is_locked(int tun) {
  if (tun < 0 || tun >= MAX_TUNNELS) return 1;
  return map_locked[tun];
}
int run3_map_is_cleared(int tun) {
  if (tun < 0 || tun >= MAX_TUNNELS) return 0;
  return map_cleared[tun];
}
int run3_map_is_discovered(int tun) {
  if (tun < 0 || tun >= MAX_TUNNELS) return 0;
  return !map_locked[tun];
}
void run3_map_sync_state(int tun, int locked, int cleared) {
  if (tun < 0 || tun >= MAX_TUNNELS) return;
  map_locked[tun] = locked ? 1 : 0;
  map_cleared[tun] = cleared ? 1 : 0;
}

static uint8_t char_locked[32] = {0};
void run3_char_set_locked(int id, int locked) {
  if (id < 0 || id >= 32) return;
  char_locked[id] = locked ? 1 : 0;
}
int run3_char_is_locked(int id) {
  if (id < 0 || id >= 32) return 1;
  return char_locked[id];
}

/* menu click/hover: returns button id (0=play, 1=infinite, 2+=char) — bigger boxes, spread, 2 rows */
int run3_menu_hover(int mx, int my) {
  int cx = W / 2;
  if (mx > cx - 160 && mx < cx + 160 && my > 340 && my < 400) return 0;
  if (mx > cx - 160 && mx < cx + 160 && my > 420 && my < 480) return 1;
  // character grid: 80x80 boxes, 90px pitch, 9 per row, 2 rows
  // row 0: y 520-600, row 1: y 620-700
  for (int i = 0; i < menu_char_count; i++) {
    int row = i / 9;
    int col = i % 9;
    int bx = 40 + col * 90;
    int by = 520 + row * 100;
    if (mx >= bx && mx < bx + 80 && my >= by && my < by + 80) return 2 + i;
  }
  return -1;
}
void run3_menu_click(int mx, int my) {
  menu_hover = run3_menu_hover(mx, my);
  if (menu_hover >= 2) {
    menu_char = menu_hover - 2;
  }
}
