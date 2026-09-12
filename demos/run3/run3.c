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
#include "levels/levels_baked.h"

game_t G;
uint8_t GMAP[MAXN][MAPW];
int GMAP_BASE = 0;
/* crumbling tiles: authored crumble lanes (GCR0, rebuilt per level window)
   plus fallen lanes (GCRUMB, dynamic). The tile the runner steps on drops
   at once; the rest of its CONNECTED group follows as a wave, one tile
   every CRUMB_WAVE_CS, so the runner can try to outrun it. */
static uint8_t GCR0[MAXN][MAPW];
static uint8_t GCRUMB[MAXN][MAPW];
#define CRUMB_WAVE_CS 10                 /* wave step, centiseconds */
static uint16_t g_crumble[MAXN][MAXK][MAPW]; /* wave timer, centiseconds */
static int g_armedN = 0;
static double g_crumbAcc = 0.0;  /* fractional centiseconds carried between steps */
static int32_t g_dislodged = 0;
/* hint route (H): on/needs a rebuild/waypoint count. The route is planned
   from the runner's live position (row + lane), so it behaves as a GPS rather
   than a route frozen where H was pressed: g_hintRow0/g_hintCol0 remember the
   origin it was planned from. */
static int g_hintOn = 0, g_hintDirty = 0, g_hintN = 0;
static int g_hintRow0 = -1, g_hintCol0 = -1;

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

/* low-power light level 0..1 (theme 5 tunnels: lights fade out and back
   along the run; the host also ducks the music with it) */
static double g_power = 1.0;
static double g_powerTarget = 1.0; /* eased toward this at g_powerRate/s */
static double g_powerRate = 1.5;
static double g_powerBase = 1.0;   /* level's authored base light */
static double g_glimpseLeft = 0.0; /* rows left of a glimpse flash */
/* per-level presentation from levels_baked.h (0 = theme default) */
static uint32_t g_col0 = 0, g_col1 = 0;
static int g_mus = 0;
static double g_rotOff = 0.0;      /* authored camera roll offset (rad) */
static int g_trigIdx = 0;          /* next power trigger to fire */
static double g_prevProg = 0.0;    /* last prog seen (glimpse row clock) */
/* staged scene camera, continuous: side -1..1 (pan/roll), lift -1..1
   (height); the host eases both, so they are never quantised */
static double g_stageSide = 0.0, g_stageLift = 0.0;
static double cam_rot_target(void); /* view roll for the current position */
void run3_stage_cam(double side, double lift) {
  if (side < -1.0) side = -1.0;
  if (side > 1.0) side = 1.0;
  if (lift < -1.0) lift = -1.0;
  if (lift > 1.0) lift = 1.0;
  g_stageSide = side;
  g_stageLift = lift;
}
double run3_stage_liftf(void) { return g_stageLift; }
double run3_stage_sidef(void) { return g_stageSide; }
/* staged cast lives in render.c (drawn in S_CUT / S_GATE); mid-gate arming
   lives here. Mid-level cutscene gates: an armed (tun, lvl) checkpoint
   PAUSES at S_GATE instead of auto-advancing, so the scene stages on the
   level just completed; a fired arm is consumed (one-shot). */
#define MAXMID 8
static int8_t g_midTun[MAXMID];
static int16_t g_midLvl[MAXMID];
static int g_midN = 0;
void run3_mid_arm(int32_t tun, int32_t lvl) {
  if (g_midN >= MAXMID) return;
  for (int i = 0; i < g_midN; i++)
    if (g_midTun[i] == tun && g_midLvl[i] == lvl) return;
  g_midTun[g_midN] = (int8_t)tun;
  g_midLvl[g_midN] = (int16_t)lvl;
  g_midN++;
}
void run3_mid_clear(void) { g_midN = 0; }
static int mid_armed(int tun, int lvl) {
  for (int i = 0; i < g_midN; i++)
    if (g_midTun[i] == tun && g_midLvl[i] == lvl) return 1;
  return 0;
}
/* consume an arm: a gate fires once, so the host never has to clear the list */
static void mid_disarm(int tun, int lvl) {
  for (int i = 0; i < g_midN; i++) {
    if (g_midTun[i] == tun && g_midLvl[i] == lvl) {
      for (int j = i + 1; j < g_midN; j++) {
        g_midTun[j - 1] = g_midTun[j];
        g_midLvl[j - 1] = g_midLvl[j];
      }
      g_midN--;
      return;
    }
  }
}

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

/* ---- authored level bitmaps (levels_baked.h, baked from the original game).
 * Most original levels are mostly empty space: sparse holes in an otherwise
 * solid tunnel. Tunnels without baked data (Wormhole Space) fall back to
 * procedural holes. ---- */
static int baked_at(int tun, int lvl, const baked_level_t **out) {
  if (tun < 0 || tun >= BAKED_TUNNELS || tun >= MAX_TUNNELS) return 0;
  if (lvl < 0 || lvl >= BAKED_TUN_COUNT[tun]) return 0;
  const baked_level_t *L = &BAKED_LEVELS[BAKED_TUN_START[tun] + lvl];
  if (L->rows == 0) return 0;
  if (out) *out = L;
  return 1;
}
/* 1 = solid. Lanes outside the baked area read solid (safe lookahead). */
static int baked_tile(const baked_level_t *L, int row, int side, int lane) {
  if (!L || row < 0 || side < 0 || side >= L->n || lane < 0 || lane >= L->k) return 1;
  if (row >= L->rows) return 1;
  uint32_t idx = L->bit + (uint32_t)row * (uint32_t)L->n * (uint32_t)L->k +
                 (uint32_t)side * (uint32_t)L->k + (uint32_t)lane;
  return (BAKED_BITS[idx >> 3] >> (idx & 7)) & 1;
}
/* 1 = crumbles when stepped on (parallel layout to baked_tile). */
static int baked_crumb(const baked_level_t *L, int row, int side, int lane) {
  if (!L || row < 0 || side < 0 || side >= L->n || lane < 0 || lane >= L->k) return 0;
  if (row >= L->rows) return 0;
  uint32_t idx = L->bit + (uint32_t)row * (uint32_t)L->n * (uint32_t)L->k +
                 (uint32_t)side * (uint32_t)L->k + (uint32_t)lane;
  return (BAKED_CRUMB[idx >> 3] >> (idx & 7)) & 1;
}
/* combined missing-lane mask (holes + fallen crumble tiles) */
static int missmask(int side, int i) {
  if (i < 0 || i >= MAPW || side < 0 || side >= MAXN) return 0;
  return (int)(GMAP[side & (MAXN - 1)][i] | GCRUMB[side & (MAXN - 1)][i]);
}
int run3_missmask(int side, int rowAbs) { return missmask(side, rowAbs - GMAP_BASE); }
/* surface texture a tile renders with (the renderer's choice, and what the
   crumble tests pin): 0 = the flat tint, TEX_CRUMBLING = a crumbling tile
   still standing, shaking or not. A hole — authored gap or a crumble tile
   that already fell — has no surface at all. */
int run3_tile_tex(int side, int rowAbs, int lane) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW || side < 0 || side >= MAXN || lane < 0 || lane >= 8) return 0;
  uint8_t bit = (uint8_t)(1u << lane);
  if (missmask(side, i) & bit) return 0;
  if ((GCR0[side][i] & bit) && !(GCRUMB[side][i] & bit)) return TEX_CRUMBLING;
  return 0;
}
/* seconds left before this tile drops (0 = steady), for the renderer */
double run3_shake(int side, int rowAbs, int lane) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW || side < 0 || side >= MAXN ||
      lane < 0 || lane >= MAXK) return 0.0;
  return (double)g_crumble[side][lane][i] / 100.0;
}
/* One touch: the stepped-on tile goes at once, then the connected group
   (4-neighbour on the unwrapped tube surface, col = side*k + lane) follows
   as a wave, one tile per CRUMB_WAVE_CS of BFS distance. */
#define CRUMB_STACK 4096
static void crumb_arm(int row, int side, int lane) {
  int k = G.k, n = G.shape;
  if (k <= 0 || k > MAXK || n <= 0) return;
  int N = n * k;
  int c0 = side * k + lane;
  int i0 = row - GMAP_BASE;
  if (c0 < 0 || c0 >= N || i0 < 0 || i0 >= MAPW) return;
  uint8_t bit0 = (uint8_t)(1u << lane);
  if (!(GCR0[side][i0] & bit0)) return;   /* not a crumbling tile */
  if (GCRUMB[side][i0] & bit0) return;    /* already fell */
  if (g_crumble[side][lane][i0]) return;  /* wave already running */

  /* the tile under the runner goes immediately */
  GCRUMB[side][i0] |= bit0;
  g_dislodged++;

  static int16_t st[CRUMB_STACK][3];      /* col, row, wave distance */
  int top = 0;
  /* seed from the touched tile's neighbours (it is already gone) */
  {
    int cm = c0 - 1; if (cm < 0) cm += N;
    int cp = c0 + 1; if (cp >= N) cp -= N;
    st[top][0] = (int16_t)cm; st[top][1] = (int16_t)i0; st[top][2] = 1; top++;
    st[top][0] = (int16_t)cp; st[top][1] = (int16_t)i0; st[top][2] = 1; top++;
    if (i0 > 0)        { st[top][0] = (int16_t)c0; st[top][1] = (int16_t)(i0 - 1); st[top][2] = 1; top++; }
    if (i0 + 1 < MAPW) { st[top][0] = (int16_t)c0; st[top][1] = (int16_t)(i0 + 1); st[top][2] = 1; top++; }
  }
  while (top > 0) {
    top--;
    int col = st[top][0], i = st[top][1], dist = st[top][2];
    if (col < 0 || col >= N || i < 0 || i >= MAPW) continue;
    int s = col / k, l = col - s * k;
    uint8_t bit = (uint8_t)(1u << l);
    if (!(GCR0[s][i] & bit)) continue;  /* not a crumbling tile */
    if (GCRUMB[s][i] & bit) continue;   /* already fell */
    if (GMAP[s][i] & bit) continue;     /* a hole is not a tile */
    if (g_crumble[s][l][i]) continue;   /* wave already running here */
    g_crumble[s][l][i] = (uint16_t)(dist * CRUMB_WAVE_CS + 1);
    g_armedN++;
    if (top + 4 > CRUMB_STACK) continue;
    int cm = col - 1; if (cm < 0) cm += N;
    int cp = col + 1; if (cp >= N) cp -= N;
    st[top][0] = (int16_t)cm; st[top][1] = (int16_t)i; st[top][2] = (int16_t)(dist + 1); top++;
    st[top][0] = (int16_t)cp; st[top][1] = (int16_t)i; st[top][2] = (int16_t)(dist + 1); top++;
    if (i > 0)        { st[top][0] = (int16_t)col; st[top][1] = (int16_t)(i - 1); st[top][2] = (int16_t)(dist + 1); top++; }
    if (i + 1 < MAPW) { st[top][0] = (int16_t)col; st[top][1] = (int16_t)(i + 1); st[top][2] = (int16_t)(dist + 1); top++; }
  }
}
static void crumb_reset(void) {
  for (int s = 0; s < MAXN; s++)
    for (int l = 0; l < MAXK; l++)
      for (int i = 0; i < MAPW; i++) g_crumble[s][l][i] = 0;
  g_armedN = 0;
  g_crumbAcc = 0.0;
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

/* baked presentation index for (tun, lvl), or -1 for procedural levels */
static int baked_idx(int tun, int lvl) {
  if (tun < 0 || tun >= BAKED_TUNNELS || tun >= MAX_TUNNELS) return -1;
  if (lvl < 0 || lvl >= BAKED_TUN_COUNT[tun]) return -1;
  return (int)BAKED_TUN_START[tun] + lvl;
}

static void compute_rows(void) {
  const tunnel_t *t = tun();
  g_rowStart[0] = 0.0;
  for (int j = 0; j < (int)t->levels; j++) {
    const baked_level_t *B = 0;
    double rows;
    if (baked_at(G.tun, j, &B)) rows = (double)B->rows;
    else rows = (double)((int)(45.0 * rpsAt(j) + 0.5));
    /* authored early level end (result-win trigger): finish at that row */
    {
      int bi = baked_idx(G.tun, j);
      if (bi >= 0 && BAKED_WIN[bi] > 0 && (double)BAKED_WIN[bi] < rows)
        rows = (double)BAKED_WIN[bi];
    }
    g_levelRows[j] = rows;
    g_rowStart[j + 1] = g_rowStart[j] + rows;
  }
}

static void apply_level_look(int lvl) {
  /* per-level tile size / roll / music / light state (authored data) */
  const tunnel_t *t = tun();
  int bi = baked_idx(G.tun, lvl);
  G.tile = t->baseTile;
  g_col0 = 0; g_col1 = 0; g_mus = 0; g_rotOff = 0.0;
  g_powerBase = 1.0; g_trigIdx = 0; g_glimpseLeft = 0.0;
  if (bi >= 0) {
    if (BAKED_TILEW[bi] > 0) G.tile = (double)BAKED_TILEW[bi] / 100.0;
    g_col0 = BAKED_COLOR0[bi];
    g_col1 = BAKED_COLOR1[bi];
    g_mus = BAKED_MUSIC[bi];
    g_rotOff = (double)BAKED_ROT[bi] / 10.0 * PI / 180.0;
    if (BAKED_PBASE[bi] <= 254) g_powerBase = (double)BAKED_PBASE[bi] / 254.0;
  }
  g_power = g_powerBase;
  g_powerTarget = g_powerBase;
  g_powerRate = 1.5;
}

/* fill GMAP for the current level window (authored bitmap or procedural) */
static void build_window(void) {
  const tunnel_t *t = tun();
  const baked_level_t *B = 0;
  baked_at(G.tun, G.lvl, &B);
  int n = B ? B->n : t->n_sides, k = B ? B->k : t->k_tiles;
  int all = (1 << k) - 1;
  int r0 = (int)g_rowStart[G.lvl];
  int rEnd = (int)g_rowStart[G.lvl + 1] + PADW;
  if (rEnd > r0 + MAPW - 1) rEnd = r0 + MAPW - 1;
  GMAP_BASE = r0;
  for (int i = 0; i < MAPW; i++)
    for (int s = 0; s < MAXN; s++) { GMAP[s][i] = 0; GCR0[s][i] = 0; GCRUMB[s][i] = 0; }
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
      uint8_t m = 0, mc = 0;
      if (B) {
        int lr = R - r0;
        if (lr >= 0 && lr < B->rows) {
          uint8_t mm = 0, cm = 0;
          for (int ln = 0; ln < k; ln++) {
            if (!baked_tile(B, lr, s2, ln)) mm |= (uint8_t)(1u << ln);
            else if (baked_crumb(B, lr, s2, ln)) cm |= (uint8_t)(1u << ln);
          }
          m = mm;
          mc = cm;
        } /* past the baked rows (far lookahead): solid */
      } else if (voidSide >= 0) {
        m = (s2 == voidSide) ? (uint8_t)all : 0;
      } else if (!buffered) {
        /* Procedural hazard with an explicit void target, so these levels
           read like the baked originals (a sparse floor, not a slab). The
           per-tunnel holeP shifts the target from 30% up to 45%. */
        double vt = 0.32 + G.holeP * 0.6;
        if (vt > 0.45) vt = 0.45;
        uint32_t h = h32(g_seedT ^ (uint32_t)(s2 * 1013u) ^ (uint32_t)(R * 7919u));
        double wantD = vt * (double)k;
        int want = (int)wantD;
        double frac = wantD - (double)want;
        if (frac > 0.0 && (double)((h >> 8) & 0xffff) / 65536.0 < frac) want++;
        if (want > k) want = k;
        uint32_t x = h32(h ^ 0x9e3779b9u);
        uint8_t mask = 0;
        while (want > 0) {
          x = h32(x + 0x85ebca6bu);
          int lane = (int)((x & 0xffff) * (double)k / 65536.0) % k;
          if (!(mask & (1u << lane))) { mask |= (uint8_t)(1u << lane); want--; }
        }
        m = mask;
      }
      GMAP[s2][i] = m;
      GCR0[s2][i] = (uint8_t)(mc & ~m); /* crumble only where solid */
    }
  }
}

/* build GMAP for infinite mode at current position */
static void build_inf_window(int baseRow) {
  int n = G.shape, k = G.k;
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
  const baked_level_t *B = 0;
  if (baked_at(G.tun, G.lvl, &B)) { G.shape = B->n; G.k = B->k; }
  apply_level_look(lvl);
  G.theme = t->theme;
  G.rowsPer = rpsAt(lvl);
  G.holeP = holeAt(lvl);
  G.blockEvery = (lvl >= t->blockStart) ? t->blockEvery : 0;
  if (B) G.blockEvery = 0; /* authored levels have no wall-void blocks */
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = g_rowStart[lvl + 1];
  build_window();
  crumb_reset();
  g_hintDirty = 1;
  G.state = S_RUN; /* instant start: the runner never waits */
  G.prog = G.rowStart;
  G.ring = (double)G.k * 0.5;
  if (B && B->spawn < (uint16_t)(G.shape * G.k)) G.ring = (double)B->spawn + 0.5;
  G.gravSide = (uint8_t)wrap_side(G.ring, G.k, G.shape);
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
  const baked_level_t *B = 0;
  if (baked_at(G.tun, G.lvl, &B)) { G.shape = B->n; G.k = B->k; }
  apply_level_look(lvl);
  G.theme = t->theme;
  G.rowsPer = rpsAt(lvl);
  G.holeP = holeAt(lvl);
  G.blockEvery = (lvl >= t->blockStart) ? t->blockEvery : 0;
  if (B) G.blockEvery = 0;
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = g_rowStart[lvl + 1];
  build_window();
  crumb_reset();
  g_hintDirty = 1;
  G.state = S_RUN;
  G.prog = G.rowStart + over;
  if (G.prog >= G.rowEnd) G.prog = G.rowEnd - 0.001;
  /* ring, vRing, rot, rotT, jump, jv, input, animT, landT preserved; only
     rewrap the ring if the next level has a different cross-section */
  {
    double tot = (double)G.shape * (double)G.k;
    if (tot > 0.0) {
      while (G.ring < 0.0) G.ring += tot;
      while (G.ring >= tot) G.ring -= tot;
    }
  }
}

/* ---------------- helpers ---------------- */
static int side_under(void) { return wrap_side(G.ring, G.k, G.shape); }
static int lane_under(void) { return wrap_lane(G.ring, G.k); }

/* character stats, baked from the original game's character classes.
 * Order: runner, skater, child, angel, ghost(=child), lizard, ninja,
 * student, gentleman, pastafarian, bunny, climber, duplicator,
 * pirate(=pastafarian), skier, iceskater, jackolantern.
 * Base values from the base character class: jump 900, speed 270,
 * run 300, fall 300, ease 0.9; per-character multipliers/overrides from
 * each character's constructor (Runner extends base 1.17x/1.21x/...,
 * Skater maxspeed 600, Angel gravity 0.4, Ghost/Pirate reuse the Child /
 * Pastafarian factories, ...). Normalized to Runner = 1.0.
 * JUMP = jump velocity, FWD = forward speed, LAT = strafe speed,
 * GRAV = fall gravity (Angel uses its 0.4 glide factor), EASE = steering
 * response. Special abilities (bridges, glides, duplicates, wall-sticks)
 * have no equivalent in this engine and are not ported. */
static const double CHAR_JUMP[NCHAR] = {
  1.0000, /* runner 1089 */
  0.8017, /* skater 873 */
  0.3306, /* child 360 */
  0.8264, /* angel (base 900) */
  0.3306, /* ghost = child */
  0.8264, /* lizard (base) */
  0.8264, /* ninja (base) */
  0.6612, /* student 720 */
  0.5372, /* gentleman 585 */
  0.5785, /* pastafarian 630 */
  1.2397, /* bunny 1350 */
  0.6612, /* climber 720 */
  0.8264, /* duplicator (base) */
  0.5785, /* pirate = pastafarian */
  0.8264, /* skier (base 900) */
  0.6814, /* iceskater 742 */
  0.7438, /* jackolantern 810 */
};
static const double CHAR_FWD[NCHAR] = {
  1.0000, /* runner 300 */
  1.3767, /* skater 413 */
  0.8000, /* child 240 */
  1.0000, /* angel (base) */
  0.8000, /* ghost = child */
  1.0000, /* lizard (base) */
  1.0000, /* ninja (base) */
  1.0000, /* student (base) */
  0.6000, /* gentleman 180 */
  0.8000, /* pastafarian 240 */
  1.0000, /* bunny (base) */
  1.0000, /* climber (base) */
  1.0000, /* duplicator (base) */
  0.8000, /* pirate = pastafarian */
  1.7000, /* skier 510 */
  1.3767, /* iceskater (skater) */
  1.0000, /* jackolantern (base) */
};
static const double CHAR_LAT[NCHAR] = {
  1.0000, /* runner 316 */
  0.9231, /* skater 292 */
  0.5128, /* child 162 */
  0.8547, /* angel (base 270) */
  0.5128, /* ghost = child */
  0.8547, /* lizard (base) */
  0.8547, /* ninja (base) */
  0.7265, /* student 230 */
  0.8547, /* gentleman (base) */
  0.8547, /* pastafarian (base) */
  1.0256, /* bunny 324 */
  0.6838, /* climber 216 */
  0.8547, /* duplicator (base) */
  0.8547, /* pirate = pastafarian */
  0.8547, /* skier (base) */
  0.9231, /* iceskater (skater) */
  0.8547, /* jackolantern (base) */
};
static const double CHAR_GRAV[NCHAR] = {
  1.0000, /* runner */
  1.7544, /* skater 600 */
  0.8333, /* child 285 */
  0.3636, /* angel glide 0.4 */
  0.8333, /* ghost = child */
  0.8772, /* lizard (base 300) */
  0.8772, /* ninja (base) */
  0.7895, /* student 270 */
  0.8333, /* gentleman 285 */
  0.7895, /* pastafarian 270 */
  0.8772, /* bunny (base) */
  0.7895, /* climber 270 */
  0.8772, /* duplicator (base) */
  0.7895, /* pirate = pastafarian */
  0.3070, /* skier 105 */
  1.7544, /* iceskater (skater) */
  0.8333, /* jackolantern 285 */
};
static const double CHAR_EASE[NCHAR] = {
  1.1111, /* runner (grippy) */
  1.0000, /* skater */
  1.0000, /* child */
  1.0000, /* angel */
  1.0000, /* ghost */
  1.0000, /* lizard */
  1.0000, /* ninja */
  1.0000, /* student */
  1.0000, /* gentleman */
  1.0000, /* pastafarian */
  1.0000, /* bunny */
  1.0000, /* climber */
  1.0000, /* duplicator */
  1.0000, /* pirate */
  1.0000, /* skier */
  0.9000, /* iceskater (slick) */
  1.0000, /* jackolantern */
};
static int char_idx(void) { return G.charm < NCHAR ? G.charm : 0; }

/* tile under an arbitrary ring position (1 = solid) */
static int tile_at(int rowAbs, double ring) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  int s = wrap_side(ring, G.k, G.shape);
  int l = wrap_lane(ring, G.k);
  if (s >= G.shape || l >= G.k) return 0;
  return (missmask(s, i) & (1u << l)) ? 0 : 1;
}

/* Tile hit boxes are 20% wider than the visual tile (10% past each edge):
   the runner stays supported while a solid tile lies within a tenth of a
   tile to either side. There is no automatic lane change any more, so this
   edge slack is what keeps a near-miss landing out of the void. */
#define HIT_PAD 0.1
static int tile_hit(int rowAbs, double ring) {
  if (tile_at(rowAbs, ring)) return 1;
  double tot = (double)G.shape * (double)G.k;
  double a = ring + HIT_PAD, b = ring - HIT_PAD;
  if (tot > 0.0) {
    while (a < 0.0) a += tot;
    while (a >= tot) a -= tot;
    while (b < 0.0) b += tot;
    while (b >= tot) b -= tot;
  }
  return tile_at(rowAbs, a) || tile_at(rowAbs, b);
}

/* the runner is on solid ground when a hit box supports them (auto-jump) */
static int lane_ok_at(int rowAbs) { return tile_hit(rowAbs, G.ring); }
/* test seam: the 20%-bigger tile hit box (1 = supported at this ring) */
int run3_tile_hit(int rowAbs, double ring) { return tile_hit(rowAbs, ring); }

/* ---------------- hint: a route to the end of the level ---------------- */
/* Pressing H overlays a route to the level end as tiny grey billboards. The
   tube surface is an (n*k)-by-rows grid (col = side*k + lane, wrapping), so
   the route is a forward walk: run one row at a time with a little lateral
   drift, or leap over a gap of up to HINT_LEAP rows. Crumbling tiles are
   avoided while an alternative exists, and fallen ones are never used.
   The route is replanned whenever the runner crosses a row or a lane, so the
   dots always lead on from where the player actually is (a live GPS, not a
   pre-planned line). */
#define HINT_MAX 600
#define HINT_COLS (MAXN * MAXK)
#define HINT_MAXDC 2     /* lanes of drift over one row of running */
#define HINT_LEAP 8      /* rows a jump can clear */
#define HINT_LEAPDC 6    /* lanes of drift available inside a jump */

static int g_hintRow[HINT_MAX];
static float g_hintRing[HINT_MAX];
static int32_t h_prev[MAPW][HINT_COLS];
static int16_t h_cost[MAPW][HINT_COLS];
static int h_tmpRow[HINT_MAX];
static float h_tmpRing[HINT_MAX];

static int hint_solid(int col, int rowAbs, int n, int k, int avoidCrumb) {
  int N = n * k;
  col %= N; if (col < 0) col += N;
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;      /* outside the window: safe */
  int s = col / k, l = col % k;
  uint8_t bit = (uint8_t)(1u << l);
  if (missmask(s, i) & bit) return 0;
  if (avoidCrumb && (GCR0[s][i] & bit) && !(GCRUMB[s][i] & bit)) return 0;
  return 1;
}

/* One forward pass; returns the furthest reachable row offset. Running a row
   costs 1, a leap costs its length plus HINT_JUMPPEN, so the route only jumps
   where a gap leaves no choice. */
#define HINT_INF 25000
#define HINT_JUMPPEN 4
static int hint_pass(int r0, int R, int n, int k, int c0, int avoidCrumb) {
  int N = n * k;
  for (int ro = 0; ro < R; ro++)
    for (int c = 0; c < N; c++) { h_prev[ro][c] = 0; h_cost[ro][c] = (int16_t)HINT_INF; }
  h_cost[0][c0] = 0;
  h_prev[0][c0] = -1;
  int best = 0;
  for (int ro = 0; ro < R; ro++) {
    int rowAbs = r0 + ro;
    for (int c = 0; c < N; c++) {
      int base = h_cost[ro][c];
      if (base >= HINT_INF) continue;
      if (ro > best) best = ro;
      if (ro + 1 < R) {
        for (int dc = -HINT_MAXDC; dc <= HINT_MAXDC; dc++) {
          int nc = c + dc; while (nc < 0) nc += N; while (nc >= N) nc -= N;
          int ncost = base + 1;
          if (ncost >= h_cost[ro + 1][nc]) continue;
          if (!hint_solid(nc, rowAbs + 1, n, k, avoidCrumb)) continue;
          h_cost[ro + 1][nc] = (int16_t)ncost;
          h_prev[ro + 1][nc] = (int32_t)(ro * HINT_COLS + c + 1);
        }
      }
      for (int d = 2; d <= HINT_LEAP && ro + d < R; d++) {
        for (int dc = -HINT_LEAPDC; dc <= HINT_LEAPDC; dc++) {
          int nc = c + dc; while (nc < 0) nc += N; while (nc >= N) nc -= N;
          int ncost = base + d + HINT_JUMPPEN;
          if (ncost >= h_cost[ro + d][nc]) continue;
          if (!hint_solid(nc, rowAbs + d, n, k, avoidCrumb)) continue;
          h_cost[ro + d][nc] = (int16_t)ncost;
          h_prev[ro + d][nc] = (int32_t)(ro * HINT_COLS + c + 1);
        }
      }
    }
  }
  return best;
}

/* the runner's surface column (side*k + lane), -1 when there is no tube */
static int hint_col(void) {
  int n = G.shape, k = G.k;
  if (n <= 0 || n > MAXN || k <= 0 || k > MAXK) return -1;
  return wrap_side(G.ring, k, n) * k + wrap_lane(G.ring, k);
}

static void hint_build(void) {
  g_hintDirty = 0;
  g_hintN = 0;
  /* the origin this route is planned from (also what the live replan tests) */
  g_hintRow0 = (int)G.prog;
  g_hintCol0 = hint_col();
  int n = G.shape, k = G.k;
  if (n <= 0 || n > MAXN || k <= 0 || k > MAXK) return;
  int N = n * k;
  int r0 = (int)G.prog;
  int rEnd = (int)G.rowEnd;
  if (rEnd <= r0) return;
  int R = rEnd - r0 + 2;
  if (R > MAPW) R = MAPW;
  int c0 = wrap_side(G.ring, k, n) * k + wrap_lane(G.ring, k);
  if (c0 < 0 || c0 >= N) c0 = 0;
  int best = hint_pass(r0, R, n, k, c0, 1);
  if (r0 + best < rEnd) best = hint_pass(r0, R, n, k, c0, 0);
  if (best <= 0) return;
  int ro = best, cg = -1;
  for (int c = 0; c < N; c++) if (h_cost[ro][c] < HINT_INF) { cg = c; break; }
  if (cg < 0) return;
  int cnt = 0;
  while (ro >= 0 && cnt < HINT_MAX) {
    h_tmpRow[cnt] = r0 + ro;
    h_tmpRing[cnt] = (float)(cg + 0.5);
    cnt++;
    int32_t p = h_prev[ro][cg];
    if (p < 0) break;
    int32_t q = p - 1;
    ro = (int)(q / HINT_COLS);
    cg = (int)(q % HINT_COLS);
  }
  g_hintN = cnt;
  for (int i = 0; i < cnt; i++) {
    g_hintRow[i] = h_tmpRow[cnt - 1 - i];
    g_hintRing[i] = h_tmpRing[cnt - 1 - i];
  }
}

void run3_hint_toggle(void) { g_hintOn = !g_hintOn; g_hintDirty = 1; }
int run3_hint_on(void) { return g_hintOn; }
int run3_hint_count(void) {
  if (!g_hintOn) return 0;
  /* replan from the live position: the runner crossing a row or a lane is
     exactly when the old plan stops leading on from where they are */
  if (g_hintDirty || (int)G.prog != g_hintRow0 || hint_col() != g_hintCol0)
    hint_build();
  return g_hintN;
}
int run3_hint_row(int i) { return (i >= 0 && i < g_hintN) ? g_hintRow[i] : 0; }
double run3_hint_ring(int i) { return (i >= 0 && i < g_hintN) ? (double)g_hintRing[i] : 0.0; }

/* ---------------- API ---------------- */
void run3_init(uint32_t seed) {
  seed = seed ? seed : 1u;
  g_seedT = h32(seed ^ 0x85ebca6bu);
  g_infSeed = h32(seed ^ 0xdeadbeefu);
  render_init_stars(seed);
  g_powercells = 0;
  g_power = 1.0;
  g_dislodged = 0;
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
  G.gravSide = (uint8_t)wrap_side(G.ring, G.k, G.shape);
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

/* leave S_GATE: roll into the next checkpoint (or finish the tunnel) keeping
   the runner's placement, so a gated scene never teleports the player */
static void gate_release(void) {
  if (G.state != S_GATE) return;
  double over = G.prog - G.rowEnd;
  if (over < 0.0) over = 0.0;
  if (G.lvl + 1 < tun()->levels) {
    open_level_continue(G.lvl + 1, over);
  } else {
    g_powercells += 10; /* bonus for finishing a tunnel */
    G.state = S_DONE;
  }
}
void run3_gate_resume(void) { gate_release(); }

void run3_flap(void) {
  if (G.state == S_READY) {
    G.state = S_RUN;
  } else if (G.state == S_RUN) {
    if (G.jump <= 0.001 && G.jv <= 0.0) {
      G.jump = 0.001;
      G.jv = JUMPV * CHAR_JUMP[char_idx()];
      G.landT = 0.0; /* leaving ground cancels the landing pose */
    }
  } else if (G.state == S_DEAD) {
    if (G.rowEnd > 900000.0) {
      /* infinite mode: restart */
      G.state = S_RUN;
      G.prog = 0.0;
      G.ring = (double)G.k * 0.5;
      G.gravSide = (uint8_t)wrap_side(G.ring, G.k, G.shape);
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
    /* host finished the mid-tunnel scene (or the tap is the fallback):
       leave the pause and roll into the next checkpoint */
    gate_release();
  }
}

void run3_step(double dt) {
  if (dt <= 0.0) dt = 1.0 / 60.0;
  if (dt > 0.1) dt = 0.1;
  int n = G.shape, k = G.k;

  /* authored light automation: per-level base light plus z-row triggers
     with per-mode fade rates (glimpse = brief flash, then back to base).
     Procedural theme-5 tunnels keep a slow fallback cycle. */
  {
    double dz = G.prog - g_prevProg;
    if (dz < 0.0) dz = 0.0;
    g_prevProg = G.prog;
    if (G.state == S_RUN && G.rowEnd < 900000.0) {
      int bi = baked_idx(G.tun, G.lvl);
      if (bi >= 0 && BAKED_TRIG_COUNT[bi] > 0) {
        double z = G.prog - G.rowStart;
        int nc = BAKED_TRIG_COUNT[bi];
        while (g_trigIdx < nc) {
          uint32_t tr = BAKED_TRIGS[BAKED_TRIG_START[bi] + g_trigIdx];
          if (z < (double)(int)(tr >> 16)) break;
          double pv = (double)((tr >> 8) & 0xff) / 254.0;
          int mode = (int)(tr & 0xff);
          g_powerTarget = pv;
          if (mode == 0) { g_power = pv; g_powerRate = 1e9; }
          else if (mode == 2) { g_powerRate = 4.0; }
          else if (mode == 3) { g_powerRate = 0.5; }
          else if (mode == 4) { g_powerRate = 0.35; }
          else if (mode == 5) { g_power = pv; g_powerRate = 2.0; g_glimpseLeft = 25.0; }
          else { g_powerRate = 1.5; }
          g_trigIdx++;
        }
      } else if (bi < 0 && tun()->theme == 5) {
        double q = G.prog / 150.0;
        long long qi = (long long)(q < 0.0 ? q - 1.0 : q);
        double ph = G.prog - 150.0 * (double)qi;
        double p;
        if (ph < 100.0) p = 1.0;
        else if (ph < 112.0) { double t = (ph - 100.0) / 12.0; p = 1.0 - t * t * (3.0 - 2.0 * t); }
        else if (ph < 138.0) p = 0.0;
        else { double t = (ph - 138.0) / 12.0; if (t > 1.0) t = 1.0; p = t * t * (3.0 - 2.0 * t); }
        g_powerTarget = p;
        g_powerRate = 3.0;
      }
    }
    if (g_glimpseLeft > 0.0) {
      g_glimpseLeft -= dz;
      if (g_glimpseLeft <= 0.0) {
        g_glimpseLeft = 0.0;
        g_powerTarget = g_powerBase;
        g_powerRate = 2.0;
      }
    }
    if (g_power != g_powerTarget) {
      double d = g_powerTarget - g_power;
      double mx = g_powerRate * dt;
      if (d > mx) d = mx;
      else if (d < -mx) d = -mx;
      g_power += d;
    }
  }

  /* crumbling wave: each armed tile drops when its delay runs out. Runs in
     every state, so a wave set off just before a fall keeps going. */
  if (g_armedN > 0) {
    g_crumbAcc += dt * 100.0;
    int dec = (int)g_crumbAcc;
    g_crumbAcc -= (double)dec;
    if (dec < 1) dec = 1;
    for (int s = 0; s < G.shape && s < MAXN; s++)
      for (int l = 0; l < G.k && l < MAXK; l++) {
        uint16_t *ct = g_crumble[s][l];
        for (int i = 0; i < MAPW; i++) {
          if (!ct[i]) continue;
          if (ct[i] > dec) { ct[i] = (uint16_t)(ct[i] - dec); continue; }
          ct[i] = 0;
          g_armedN--;
          uint8_t bit = (uint8_t)(1u << l);
          if ((GCR0[s][i] & bit) && !(GCRUMB[s][i] & bit)) {
            GCRUMB[s][i] |= bit;
            g_dislodged++;
          }
        }
      }
  }

  if (G.state == S_RUN) {
    G.prog += G.rowsPer * SPEED_MUL * CHAR_FWD[char_idx()] * dt;
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
      /* checkpoint reached. A checkpoint with an armed mid-tunnel scene
         PAUSES here (S_GATE) so the scene stages on the level just
         completed; the host plays it and calls run3_gate_resume(). Every
         other checkpoint rolls straight into the next one, no stopping.
         Only respawns teleport; a gate preserves the runner exactly. */
      g_powercells += 5; /* checkpoint cleared */
      if (mid_armed(G.tun, G.lvl)) {
        mid_disarm(G.tun, G.lvl);
        G.prog = G.rowEnd; /* sit on the tail of the finished level */
        G.state = S_GATE;
      } else {
        double over = G.prog - G.rowEnd;
        if (G.lvl + 1 < tun()->levels) {
          open_level_continue(G.lvl + 1, over);
        } else {
          g_powercells += 10; /* bonus for finishing a tunnel */
          G.state = S_DONE;
        }
      }
    } else {
      /* eased lateral steering (per-character speed and response) */
      int cm = char_idx();
      double maxV = LATSPD * CHAR_LAT[cm];
      double target = G.input * maxV;
      double ease = dt * STEER_EASE * CHAR_EASE[cm];
      if (ease > 1.0) ease = 1.0;
      G.vRing += (target - G.vRing) * ease;
      if (G.vRing > maxV) G.vRing = maxV;
      if (G.vRing < -maxV) G.vRing = -maxV;
      G.ring += G.vRing * dt;
      double tot = (double)(n * k);
      if (G.ring < 0.0) G.ring += tot;
      if (G.ring >= tot) G.ring -= tot;

      if (G.jump > 0.0 || G.jv > 0.0) {
        G.jump += G.jv * dt;
        G.jv -= GRAV * CHAR_GRAV[char_idx()] * dt;
        if (G.jump <= 0.0) {
          /* no automatic lane change: you land on the tile you are over
             (plus the 20% hit-box slack) or you fall */
          if (tile_hit((int)G.prog, G.ring)) {
            G.jump = 0.0;
            G.jv = 0.0;
            G.landT = 0.25; /* touchdown -> landing pose */
          } else {
            G.state = S_DEAD;
            G.fallT = 0.0;
          }
        }
      } else if (!lane_ok_at((int)G.prog)) {
        /* ran off an edge: automatic last-moment jump. Normal landing rules
           apply from here — if it comes down in the void, the runner dies. */
        G.jump = 0.001;
        G.jv = JUMPV * CHAR_JUMP[char_idx()];
        G.landT = 0.0;
      }
      /* gravity latches to the touched wall: grounded running (or a fresh
         touchdown) adopts the wall below; mid-air ring drift does NOT */
      if (G.state == S_RUN && !(G.jump > 0.0 || G.jv > 0.0)) {
        G.gravSide = (uint8_t)side_under();
        /* the stepped-on crumbling tile takes its whole cluster down */
        crumb_arm((int)G.prog, side_under(), lane_under());
      }
    }
  } else if (G.state == S_DEAD) {
    /* outside the tunnel: you only die after VOID_TIME of falling */
    G.fallT += dt;
    G.animT += dt; /* keep the fall cycle playing while falling */
    if (G.fallT >= VOID_TIME) {
      /* instant respawn at the checkpoint start (the one allowed teleport) */
      open_level(G.lvl);
      /* open_level auto-starts (S_RUN) */
    }
  }

  /* ease the view roll along the shortest path toward the LATCHED gravity
     wall (not the live ring: mid-air drift must not swing gravity).
     Without the wrap, the wrap-around corner (side n-1 -> 0) eases almost a
     full turn instead of one step like every other corner. */
    double target2 = cam_rot_target();
    if (G.state == S_CUT || G.state == S_GATE) target2 += -g_stageSide * 0.28;
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
  return (missmask(side, i) & (1u << lane)) ? 0 : 1;
}
int32_t run3_solid(int32_t side, int32_t row) {
  int i = row - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  return missmask(side, i) == 0 ? 1 : 0;
}
void run3_set_input(double lr) {
  if (lr < -1.0) lr = -1.0;
  if (lr > 1.0) lr = 1.0;
  G.input = lr;
}
void run3_set_char(int32_t c) {
  G.charm = (uint8_t)(c < 0 ? 0 : (c > NCHAR - 1 ? NCHAR - 1 : c));
}
int32_t run3_width(void) { return W; }
int32_t run3_height(void) { return H; }

/* power cell / shop API */
int32_t run3_powercells(void) { return g_powercells; }
void run3_add_cells(int32_t n) { g_powercells += n; }
void run3_spend_cells(int32_t n) { if (g_powercells >= n) g_powercells -= n; }
int32_t run3_inf_score(void) { return g_infScore; }
int32_t run3_inf_rows(void) { return g_infRows; }
/* crumbling tiles dislodged this session (Galactic Vandalism) */
int32_t run3_dislodged(void) { return g_dislodged; }
/* 1 while riding endless (infinite) mode */
int32_t run3_is_inf(void) { return G.rowEnd > 900000.0 ? 1 : 0; }

/* low-power light level for the renderer and the host (music ducking) */
double run3_power(void) { return g_power; }

/* per-level presentation for the renderer/host (0 = theme default) */
uint32_t run3_level_color0(void) { return g_col0; }
uint32_t run3_level_color1(void) { return g_col1; }
int32_t run3_level_music(void) { return g_mus; }

/* the view roll the camera holds at the current position (the same target
   the runner's camera eases toward in run3_step) */
static double cam_rot_target(void) {
  int n = G.shape > 0 ? G.shape : 1;
  int gs = G.gravSide < n ? G.gravSide : 0;
  return -(TAU * (double)gs) / (double)n + g_rotOff;
}
/* cutscene staging: hold a tunnel frame behind the dialogue overlay.
   hold() freezes the just-finished tunnel (end cutscenes); backdrop()
   seeks to a tunnel/level first (start cutscenes). Neither runs the sim. */
void run3_cutscene_hold(void) {
  if (G.rowEnd > 900000.0) return; /* never stage infinite mode */
  G.state = S_CUT;
  g_stageSide = 0; g_stageLift = 0;
}
/* resume the sim exactly where hold() froze it (mid-tunnel cutscenes) */
void run3_cutscene_resume(void) {
  if (G.state == S_CUT) G.state = S_RUN;
}
/* stage level lvl of tunnel tunIdx. atEnd stages the TAIL of the level
   instead of its head: only a tunnel's opening scene happens at the start of
   a tunnel, while a mid-tunnel scene fires as that checkpoint is completed
   and a tunnel's end scene is the end of its last level — staging those at
   the level start shows the wrong stretch of tunnel from the wrong camera
   angle. */
static void backdrop_at(int32_t tunIdx, int32_t lvl, int atEnd) {
  if (tunIdx < 0 || tunIdx >= (int)NTUNNELS) return;
  if (G.rowEnd > 900000.0) return;
  G.tun = (uint16_t)tunIdx;
  uint32_t base = h32(0x5eedu);
  g_seedT = h32(base ^ (uint32_t)(tunIdx * 2654435761u) ^ 0x9e3779b9u);
  const tunnel_t *t = tun();
  if (lvl < 0) lvl = 0;
  if (lvl >= (int)t->levels) lvl = (int)t->levels - 1;
  g_power = 1.0; /* staged scenes play with the lights on */
  open_level(lvl);
  if (atEnd && G.rowEnd < 900000.0) G.prog = G.rowEnd - 0.001;
  /* load the camera angle for the staged spot instead of easing in from the
     level-start roll (open_level resets the view) */
  G.rot = G.rotT = cam_rot_target();
  G.state = S_CUT;
  g_stageSide = 0; g_stageLift = 0;
}
void run3_cutscene_backdrop(int32_t tunIdx, int32_t lvl) {
  backdrop_at(tunIdx, lvl, 0);
}
void run3_cutscene_backdrop_end(int32_t tunIdx, int32_t lvl) {
  backdrop_at(tunIdx, lvl, 1);
}

/* ==================== MAP MODE ==================== */
#include "levels/map_assets.h"

static int map_scroll_y = 0;  /* vertical scroll for the map */
static int map_selected = -1; /* selected tunnel id, -1 = none */
static int map_selected_level = -1; /* selected checkpoint lvl, -1 = node/none */
static int map_hovered = -1;  /* hovered tunnel id */
static int map_hovered_level = -1; /* hovered checkpoint lvl */
static uint8_t map_locked[MAX_TUNNELS];
static uint8_t map_cleared[MAX_TUNNELS];

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
  /* 1D horizontal scroll — original map spans screen x ~55..3400,
     extended tunnels reach ~2970 (drift end) */
  if (map_scroll_x < -3200) map_scroll_x = -3200;
  if (map_scroll_x > 200) map_scroll_x = 200;
  map_scroll_y = map_scroll_x; // keep y in sync for legacy
}
void run3_map_scroll_delta(int dx) { run3_map_scroll(dx); }

/* ---- checkpoints: every level of a continuous tunnel shows on the map ----
   Checkpoints are spaced evenly along the tunnel's ORIGINAL drawn polyline
   (map_wp), so the map keeps the original game's curves. Node = path start. */
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

void run3_map_checkpoint_pos(int tun, int lvl, int *x, int *y) {
  int nx = 0, ny = 0;
  if (tun >= 0 && tun < MAP_TUNNEL_COUNT) { nx = map_nodes[tun].x; ny = map_nodes[tun].y; }
  int count = run3_map_checkpoint_count(tun);
  if (count <= 0) { if (x) *x = nx; if (y) *y = ny; return; }
  if (lvl < 0) lvl = 0;
  if (lvl >= count) lvl = count - 1;
  int n = (tun >= 0 && tun < MAP_TUNNEL_COUNT) ? map_wp_n[tun] : 0;
  if (n < 2) {
    /* degenerate path: horizontal stub right of the node */
    if (x) *x = nx + 30 * (lvl + 1);
    if (y) *y = ny;
    return;
  }
  /* walk the original polyline by arc length; dot j sits at (j+1)/(count+1) */
  const int16_t *w = map_wp[tun];
  double total = 0.0;
  for (int i = 0; i + 1 < n; i++) {
    double dx = (double)w[2 * i + 2] - (double)w[2 * i];
    double dy = (double)w[2 * i + 3] - (double)w[2 * i + 1];
    total += ssqrt(dx * dx + dy * dy);
  }
  double target = (total <= 0.0) ? 0.0 : total * (double)(lvl + 1) / (double)(count + 1);
  double acc = 0.0;
  for (int i = 0; i + 1 < n; i++) {
    double x0 = w[2 * i], y0 = w[2 * i + 1];
    double dx = (double)w[2 * i + 2] - x0;
    double dy = (double)w[2 * i + 3] - y0;
    double sl = ssqrt(dx * dx + dy * dy);
    if (sl < 0.5) continue;
    if (acc + sl >= target) {
      double t = (sl <= 0.0) ? 0.0 : (target - acc) / sl;
      double fx = x0 + dx * t, fy = y0 + dy * t;
      if (x) *x = (int)(fx + 0.5);
      if (y) *y = (int)(fy + 0.5);
      return;
    }
    acc += sl;
  }
  /* rounding safety: clamp to path end */
  if (x) *x = w[2 * (n - 1)];
  if (y) *y = w[2 * (n - 1) + 1];
}

/* shared picker: nearest wins across nodes and checkpoint dots. Only discovered.
   (Short edges pack a tunnel's first dots inside the parent node's ring,
   so first-match would bury them — nearest-match keeps every dot hittable.) */
static int map_pick(int mx, int my, int *lvlOut) {
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
