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
/* glowing tiles: ordinary solid tiles whose surface is the tunnel's own light
   (the Low-Power Tunnel ends on a strip of them, so they stay lit with the
   power off). Static, so they are rebuilt with the window like GCR0. */
static uint8_t GGLOW[MAXN][MAPW];
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

/* infinite mode state */
static double g_infSpeed;       /* rows/s in infinite mode */
static int    g_infRows;        /* rows cleared */
static int    g_infScore;       /* score */

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
/* roll quantization (camera-spec.md): while the player is steering the roll
   eases onto the next facet so a 360/n step is not a one-frame jerk; the
   moment the steering settles it snaps to the exact facet angle */
#define ROLL_EASE_RATE 12.0  /* roll ease onto the next facet (per second) */
#define ROLL_SNAP_FRAC 0.012 /* snap when the residual is this fraction of a step */
#define ROLL_MAX_RATE  6.0   /* hard cap on how fast the view may turn (rad/s) */
static int g_trigIdx = 0;          /* next power trigger to fire */
static double g_prevProg = 0.0;    /* last prog seen (glimpse row clock) */
/* staged scene camera, continuous: side -1..1 (pan/roll), lift -1..1
   (height); the host eases both, so they are never quantised */
static double g_stageSide = 0.0, g_stageLift = 0.0;
/* the authored staged camera (the overhaul): px position + quaternion, set
   by run3_stage_camera further down; forward-declared so the fallback path in
   run3_stage_cam can see whether a scene has an authored camera at all */
static double g_stageX = 0.0, g_stageY = 0.0, g_stageZ = 0.0;
static double g_stageRot[4] = {0.0, 0.0, 0.0, 1.0};
static int    g_stageAuthored = 0;
static double cam_rot_target(void); /* view roll for the current position */
static void cam_place(void);        /* place the camera for the current frame */
static double level_tilew(int lvl); /* a level's tile width (world units) */
void run3_stage_cam(double side, double lift) {
  if (side < -1.0) side = -1.0;
  if (side > 1.0) side = 1.0;
  if (lift < -1.0) lift = -1.0;
  if (lift > 1.0) lift = 1.0;
  g_stageSide = side;
  g_stageLift = lift;
  /* a normalised-pan call means "this scene has NO authored camera": clear
     the flag so a fallback scene after an authored one is not swallowed, and
     reset the rotation to the rest pose (identity, straight down the bore),
     so it cannot inherit the previous scene's authored quaternion either */
  g_stageAuthored = 0;
  g_stageRot[0] = g_stageRot[1] = g_stageRot[2] = 0.0;
  g_stageRot[3] = 1.0;
  /* Scenes with an AUTHORED camera (run3_stage_camera) ignore the normalised
     pan entirely — the scene set position and rotation in original pixels and
     that is the whole camera. This path remains for scenes the bake found no
     camera setup in: the port stages them at the axis plus (side, lift) with
     the held frame's facet roll, as before. */
  if (G.state == S_CUT) {
    G.rot = cam_rot_target() + g_rotOff;
    G.rotT = G.rot;
    cam_place();
  }
}
double run3_stage_liftf(void) { return g_stageLift; }
double run3_stage_sidef(void) { return g_stageSide; }
/* staged cast lives in render.c (drawn in S_CUT / S_GATE); mid-gate arming
   lives here. Mid-level cutscene gates: an armed (tun, lvl) checkpoint
   PAUSES at S_GATE instead of auto-advancing, so the scene stages on the
   level just completed; a fired arm is consumed (one-shot). */
#define MAXMID 32
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

/* ssin / scos / ssqrt / satan2 / h32 live in math.c */

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
/* 1 = the tile glows (parallel layout to baked_tile). */
static int baked_glow(const baked_level_t *L, int row, int side, int lane) {
  if (!L || row < 0 || side < 0 || side >= L->n || lane < 0 || lane >= L->k) return 0;
  if (row >= L->rows) return 0;
  uint32_t idx = L->bit + (uint32_t)row * (uint32_t)L->n * (uint32_t)L->k +
                 (uint32_t)side * (uint32_t)L->k + (uint32_t)lane;
  return (BAKED_GLOW[idx >> 3] >> (idx & 7)) & 1;
}
/* combined missing-lane mask (holes + fallen crumble tiles) */
static int missmask(int side, int i) {
  if (i < 0 || i >= MAPW || side < 0 || side >= MAXN) return 0;
  return (int)(GMAP[side & (MAXN - 1)][i] | GCRUMB[side & (MAXN - 1)][i]);
}

/* ---- tube cross-section geometry, shared by the sim and the renderer ----
   A level's layout is a regular n-gon with k tiles per side; the tube
   position of a tile index is (side*k + lane) out of n*k. */
/* the wall point at ring position r on the unit circumradius n-gon */
static void tube_pt(double r, int n, int k, double *x, double *y) {
  if (n < 1 || k < 1) { *x = 0.0; *y = -1.0; return; }
  double tot = (double)n * (double)k;
  while (r < 0.0) r += tot;
  while (r >= tot) r -= tot;
  int s = (int)(r / (double)k);
  if (s >= n) s = n - 1;
  double f = r / (double)k - (double)s;
  double a0 = -PI / 2.0 - PI / (double)n + TAU * (double)s / (double)n;
  double a1 = a0 + TAU / (double)n;
  *x = (1.0 - f) * scos(a0) + f * scos(a1);
  *y = (1.0 - f) * ssin(a0) + f * ssin(a1);
}
/* Re-express ring r in a different cross-section so it stays on the SAME
   spot of the tube wall. A tile index only means something relative to its
   own grid, so a checkpoint whose layout changes ("tunnel8,2" -> "tunnel16,1")
   used to move the runner to a different wall — and with them the camera roll
   that follows their wall — the instant the next level loaded, which reads as
   a teleport. Bisect for the new ring whose wall point lies on the same ray
   from the tube axis. */
/* Where the runner stands on the tube wall, in tube space (before the camera's
   roll). The camera is bolted to the runner — the original's camera class sets
   its rotation from the character's own position on the tube,
   angle = atan2(y, x) - PI/2 (character §8J§ §-A§), and its pitch from the
   tunnel's forward vector — so the runner never moves on screen and it is the
   LEVEL that rotates and changes shape as it goes past.
   A side of the n-gon is one flat chord, so this is a continuous function of
   the runner's ring position: it does NOT step by TAU/n when they cross onto
   the next wall, and because a ring remap at a checkpoint keeps the runner on
   the same spot of the wall, a change of sides or size does not move them
   either. The point is taken from the cross-section actually being drawn for
   the runner's row, blended toward the neighbouring level over the transition,
   so the runner keeps their footing while the tube morphs around them. */
static double ring_remap(double r, int n0, int k0, int n1, int k1);
static void runner_wall_pt(double *px, double *py) {
  int n = G.shape > 0 ? G.shape : 1;
  int k = G.k > 0 ? G.k : 1;
  double x, y;
  tube_pt(G.ring, n, k, &x, &y);
  rowcross_t xc;
  if (run3_row_cross((int)G.prog, &xc) && xc.bn > 0 && xc.t > 0.0) {
    double r2 = ring_remap(G.ring, n, k, xc.bn, xc.bk);
    double qx, qy;
    tube_pt(r2, xc.bn, xc.bk, &qx, &qy);
    x += (qx - x) * xc.t;
    y += (qy - y) * xc.t;
  }
  if (px) *px = x;
  if (py) *py = y;
}
static double ring_remap(double r, int n0, int k0, int n1, int k1) {
  if (n0 < 1 || k0 < 1 || n1 < 1 || k1 < 1) return r;
  if (n0 == n1 && k0 == k1) return r;
  double px, py;
  tube_pt(r, n0, k0, &px, &py);
  double lo = 0.0, hi = (double)n1 * (double)k1;
  for (int it = 0; it < 34; it++) {
    double mid = 0.5 * (lo + hi);
    double qx, qy;
    tube_pt(mid, n1, k1, &qx, &qy);
    /* cross(q, p) > 0 -> q has not reached p's angle yet */
    if (qx * py - qy * px > 0.0) lo = mid; else hi = mid;
  }
  double out = 0.5 * (lo + hi);
  double tot = (double)n1 * (double)k1;
  while (out < 0.0) out += tot;
  while (out >= tot) out -= tot;
  return out;
}
int run3_missmask(int side, int rowAbs) { return missmask(side, rowAbs - GMAP_BASE); }
/* surface texture a tile renders with (the renderer's choice, and what the
   crumble tests pin): 0 = the flat tint, TEX_CRUMBLING = a crumbling tile
   still standing, shaking or not. A hole — authored gap or a crumble tile
   that already fell — has no surface at all. */
/* 1 = the tile's surface glows (stays lit with the low-power lights out). */
int run3_tile_glow(int side, int rowAbs, int lane) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW || side < 0 || side >= MAXN || lane < 0 || lane >= MAXK) return 0;
  if (missmask(side, i) & (uint8_t)(1u << lane)) return 0;
  return (GGLOW[side][i] >> lane) & 1;
}
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
/* baked presentation index for (tun, lvl), or -1 if the level is missing */
static int baked_idx(int tun, int lvl) {
  if (tun < 0 || tun >= BAKED_TUNNELS || tun >= MAX_TUNNELS) return -1;
  if (lvl < 0 || lvl >= BAKED_TUN_COUNT[tun]) return -1;
  return (int)BAKED_TUN_START[tun] + lvl;
}

/* Every level loads ALL of its authored rows. The original's `result-win`
   trigger (BAKED_WIN) is NOT the end of the level's terrain: it is the row
   where that checkpoint's cutscene starts. A handful of levels carry one —
   the Low-Power Tunnel's last part (its closing glow wedge keeps widening and
   then narrows past the trigger) and home 1 (its narrow corridor runs on) —
   and cutting the terrain there left those rows unloaded, so the tunnel ended
   in the solid fill a few rows past the trigger. The win row is kept as the
   level's FINISH row (see level_finish_row), which is what gameplay and the
   cutscene staging use. */
static void compute_rows(void) {
  const tunnel_t *t = tun();
  g_rowStart[0] = 0.0;
  for (int j = 0; j < (int)t->levels; j++) {
    const baked_level_t *B = 0;
    double rows = 45.0;
    if (baked_at(G.tun, j, &B)) rows = (double)B->rows;
    g_levelRows[j] = rows;
    g_rowStart[j + 1] = g_rowStart[j] + rows;
  }
}
/* The row where a level's checkpoint fires and its scene stages: the authored
   `result-win` row when the level has one ("the cutscene starts here"), the
   end of its terrain otherwise. The terrain past a finish row is still this
   level's own (see compute_rows), so a scene staged on it looks down the real
   tunnel. */
/* The level's own tile width, in world pixels. BAKED_TILEW is the original's
   own `tileWidth` value verbatim (so it is ALREADY pixels - no scaling), and
   a level whose data carried no `tileWidth` uses the original loader's
   default of 75 (see TunnelSection's parseInt(..., "tileWidth", 75)). */
#define DEFAULT_TILEW 75.0
static double level_tilew(int lvl) {
  int bi = baked_idx(G.tun, lvl);
  if (bi >= 0 && BAKED_TILEW[bi] > 0) return (double)BAKED_TILEW[bi];
  return DEFAULT_TILEW;
}
/* The tile width a tunnel's own levels use (its first baked level's own
   `tileWidth`, else the loader's 75 default). The space layer draws a branch
   tunnel at its own levels' scale, and `baseTile` is now a single constant
   (the default), so it has to ask per tunnel. */
double run3_tunnel_tile(int tun) {
  if (tun < 0 || tun >= (int)NTUNNELS) return DEFAULT_TILEW;
  int bi = baked_idx((uint16_t)tun, 0);
  if (bi >= 0 && BAKED_TILEW[bi] > 0) return (double)BAKED_TILEW[bi];
  return DEFAULT_TILEW;
}
static double level_finish_row(int lvl) {
  double end = g_rowStart[lvl + 1];
  int bi = baked_idx(G.tun, lvl);
  if (bi >= 0 && BAKED_WIN[bi] > 0) {
    double w = g_rowStart[lvl] + (double)BAKED_WIN[bi];
    if (w < end) end = w;
  }
  return end;
}

static void apply_level_look(int lvl) {
  /* per-level tile size / roll / music / light state (authored data) */
  int bi = baked_idx(G.tun, lvl);
  G.tile = DEFAULT_TILEW;
  g_col0 = 0; g_col1 = 0; g_mus = 0; g_rotOff = 0.0;
  g_powerBase = 1.0; g_trigIdx = 0; g_glimpseLeft = 0.0;
  if (bi >= 0) {
    if (BAKED_TILEW[bi] > 0) G.tile = (double)BAKED_TILEW[bi];
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

/* ---- per-level cross-section table (drives the renderer's row shapes) ----
   Sides, tiles per side, tile width and tint are all per level, so a
   checkpoint can change the tube's shape. */
static void level_xsec(int lvl, int *n, int *k, double *tile, uint32_t *col0) {
  const tunnel_t *t = tun();
  int nn = t->n_sides, kk = t->k_tiles;
  double tl = DEFAULT_TILEW;
  uint32_t c0 = 0;
  const baked_level_t *B = 0;
  if (baked_at(G.tun, lvl, &B)) {
    nn = B->n; kk = B->k;
    int bi = baked_idx(G.tun, lvl);
    if (bi >= 0) {
      if (BAKED_TILEW[bi] > 0) tl = (double)BAKED_TILEW[bi];
      c0 = BAKED_COLOR0[bi];
    }
  }
  *n = nn; *k = kk; *tile = tl; *col0 = c0;
}
static double xsec_R(int n, int k, double tile) {
  if (n < 1 || k < 1) return 1.0;
  return (double)k * tile / (2.0 * ssin(PI / (double)n));
}
/* which level of the current tunnel owns an absolute row (-1 = none) */
static int level_of_row(int rowAbs) {
  const tunnel_t *t = tun();
  int nl = (int)t->levels;
  if (nl <= 0) return -1;
  int lo = 0, hi = nl - 1;
  while (lo < hi) {
    int mid = (lo + hi + 1) >> 1;
    if (g_rowStart[mid] <= (double)rowAbs) lo = mid; else hi = mid - 1;
  }
  if (g_rowStart[lo] <= (double)rowAbs && (double)rowAbs < g_rowStart[lo + 1]) return lo;
  return -1;
}
/* How far this row leans toward the level on the other side of the nearest
   boundary: 0 away from it, 0.5 sitting on it, easing over ROWXC_ROWS rows.
   That is the run of tiles the transition happens across. */
static double xsec_blend(int rowAbs, int lvl, int *nb) {
  *nb = -1;
  if (G.rowEnd > 900000.0 || lvl < 0) return 0.0;
  int nl = (int)tun()->levels;
  double dp = (double)rowAbs - g_rowStart[lvl];          /* from the level head */
  double dn = g_rowStart[lvl + 1] - 1.0 - (double)rowAbs; /* to the level tail */
  double half = (double)ROWXC_ROWS * 0.5;
  if (dp < half && lvl > 0) { *nb = lvl - 1; return 0.5 - dp / (double)ROWXC_ROWS; }
  if (dn < half && lvl + 1 < nl) { *nb = lvl + 1; return 0.5 - dn / (double)ROWXC_ROWS; }
  return 0.0;
}
static void rowcross_fill(int lvl, int nb, double t, rowcross_t *o) {
  level_xsec(lvl, &o->n, &o->k, &o->tile, &o->col0);
  o->R = xsec_R(o->n, o->k, o->tile);
  o->bn = -1; o->bk = 0; o->bR = o->R; o->btile = o->tile; o->bcol0 = o->col0;
  o->t = 0.0;
  if (nb >= 0 && t > 0.0) {
    int n2, k2;
    double tl2;
    uint32_t c2;
    level_xsec(nb, &n2, &k2, &tl2, &c2);
    o->bn = n2; o->bk = k2; o->bR = xsec_R(n2, k2, tl2);
    o->btile = tl2; o->bcol0 = c2; o->t = t;
  }
}
int run3_row_cross(int rowAbs, rowcross_t *out) {
  if (!out) return 0;
  if (G.rowEnd > 900000.0) { /* endless: one authored shape, no boundaries */
    out->n = G.shape; out->k = G.k;
    out->tile = G.tile; out->col0 = run3_level_color0();
    out->R = xsec_R(out->n, out->k, out->tile);
    out->bn = -1; out->bk = 0; out->bR = out->R;
    out->btile = out->tile; out->bcol0 = out->col0; out->t = 0.0;
    return 1;
  }
  int lvl = level_of_row(rowAbs);
  if (lvl < 0) return 0;
  int nb;
  double t = xsec_blend(rowAbs, lvl, &nb);
  rowcross_fill(lvl, nb, t, out);
  return 1;
}

/* Fill one row of the window from a baked level. GMAP is indexed by absolute
   row, and each row is written with its own level's grid, so a window can
   carry two levels at once and the renderer reads each row with the grid it
   was written with. */
static void fill_rows(int R0, int R1, const baked_level_t *L, int lvlRow0,
                      int seamHead, int seamTail) {
  if (!L) return;
  for (int R = R0; R <= R1; R++) {
    int i = R - GMAP_BASE;
    if (i < 0 || i >= MAPW) continue;
    if (i < 4) continue;
    int lr = R - lvlRow0;
    /* The level is entered and left on normal tiles: a checkpoint changes the
       tube's cross-section, and the runner has to cross that on a solid,
       unbroken run of floors. Holes and crumbling tiles are suppressed for
       SEAM_SOLID rows either side of a boundary — the same run the shapes
       morph over — so the transition is always 2*SEAM_SOLID (12) tiles of
       ordinary tile, never a gap straddling two layouts. */
    int seam = 0;
    if (lr >= 0 && lr < L->rows) {
      if (seamHead && lr < SEAM_SOLID) seam = 1;
      if (seamTail && lr >= L->rows - SEAM_SOLID) seam = 1;
    }
    for (int s2 = 0; s2 < L->n; s2++) {
      uint8_t m = 0, mc = 0, mg = 0;
      if (!seam && lr >= 0 && lr < L->rows) {
        for (int ln = 0; ln < L->k; ln++) {
          if (!baked_tile(L, lr, s2, ln)) m |= (uint8_t)(1u << ln);
          else if (baked_crumb(L, lr, s2, ln)) mc |= (uint8_t)(1u << ln);
          if (baked_glow(L, lr, s2, ln)) mg |= (uint8_t)(1u << ln);
        }
      } /* otherwise (seam band, or past the baked rows): solid */
      GMAP[s2][i] = m;
      GCR0[s2][i] = (uint8_t)(mc & ~m); /* crumble only where solid */
      GGLOW[s2][i] = (uint8_t)(mg & ~m); /* glow only where solid */
    }
  }
}

/* Fill GMAP for the current level window. Every tunnel ships authored bitmaps
   (levels_baked.h), so nothing here is generated: the engine only reads the
   levels it was given. The far lookahead is filled from the NEXT level's own
   bitmap (not as all-solid), because the rows ahead of a boundary really are
   the next level: that is what makes the shape morph a spatial change you can
   see coming rather than a snap at the moment the runner crosses. */
static void build_window(void) {
  const baked_level_t *B = 0;
  baked_at(G.tun, G.lvl, &B);
  int r0 = (int)g_rowStart[G.lvl];
  GMAP_BASE = r0;
  for (int i = 0; i < MAPW; i++)
    for (int s = 0; s < MAXN; s++) { GMAP[s][i] = 0; GCR0[s][i] = 0; GCRUMB[s][i] = 0; GGLOW[s][i] = 0; }
  if (!B) return; /* no data: an unbroken tunnel */
  int nextRow0 = (int)g_rowStart[G.lvl + 1];
  int last = (int)tun()->levels - 1;
  /* The tail seam band is the solid run a level boundary is crossed on. A
     level with no following level has no boundary there, and a level whose
     finish row (result-win: where the cutscene starts) sits before the end of
     its own terrain keeps its authored rows, so the tunnel's closing stretch
     is drawn — the Low-Power Tunnel's glow wedge narrows right to the end. */
  int tailSeam = (G.lvl < last) || (G.rowEnd >= g_rowStart[G.lvl + 1]);
  fill_rows(r0, nextRow0 - 1, B, r0, G.lvl > 0, tailSeam);
  int lim = nextRow0 + PADW;
  if (lim > r0 + MAPW - 1) lim = r0 + MAPW - 1;
  const baked_level_t *N = 0;
  if (baked_at(G.tun, G.lvl + 1, &N)) fill_rows(nextRow0, lim, N, nextRow0, 1, G.lvl + 1 < last);
}

/* ---- infinite mode: hand-made segments, played in order, looping.
   The endless tunnel is literally a chain of the authored bitmaps in
   INF_SEG_* (baked from ext_levels.txt) - no geometry is generated. The
   segments are authored easiest-first, so the loop keeps escalating. ---- */
static int g_infStart[INF_SEG_COUNT + 1];
static int g_infTotal = 0;
static void inf_init(void) {
  if (g_infTotal > 0) return;
  int acc = 0;
  for (int i = 0; i < INF_SEG_COUNT; i++) {
    g_infStart[i] = acc;
    acc += (int)INF_SEG_ROWS[i];
  }
  g_infStart[INF_SEG_COUNT] = acc;
  g_infTotal = acc > 0 ? acc : 1;
}
static int inf_tile(int seg, int row, int side, int lane) {
  if (seg < 0 || seg >= INF_SEG_COUNT) return 1;
  if (row < 0 || row >= (int)INF_SEG_ROWS[seg]) return 1;
  if (side < 0 || side >= INF_SEG_N || lane < 0 || lane >= INF_SEG_K) return 1;
  uint32_t idx = INF_SEG_BIT[seg] + (uint32_t)row * (INF_SEG_N * INF_SEG_K) +
                 (uint32_t)side * INF_SEG_K + (uint32_t)lane;
  return (INF_SEG_BITS[idx >> 3] >> (idx & 7)) & 1;
}
static int inf_crumb(int seg, int row, int side, int lane) {
  if (seg < 0 || seg >= INF_SEG_COUNT) return 0;
  if (row < 0 || row >= (int)INF_SEG_ROWS[seg]) return 0;
  if (side < 0 || side >= INF_SEG_N || lane < 0 || lane >= INF_SEG_K) return 0;
  uint32_t idx = INF_SEG_BIT[seg] + (uint32_t)row * (INF_SEG_N * INF_SEG_K) +
                 (uint32_t)side * INF_SEG_K + (uint32_t)lane;
  return (INF_SEG_CRUMB[idx >> 3] >> (idx & 7)) & 1;
}
/* slide the dynamic crumble state when the window moves forward, so a wave
   set off in front of the runner is not resurrected by the rebuild */
static void shift_window(int delta) {
  if (delta <= 0 || delta >= MAPW) {
    for (int s = 0; s < MAXN; s++)
      for (int i = 0; i < MAPW; i++) GCRUMB[s][i] = 0;
    for (int s = 0; s < MAXN; s++)
      for (int l = 0; l < MAXK; l++)
        for (int i = 0; i < MAPW; i++) g_crumble[s][l][i] = 0;
    g_armedN = 0;
    return;
  }
  for (int s = 0; s < MAXN; s++) {
    for (int i = 0; i + delta < MAPW; i++) GCRUMB[s][i] = GCRUMB[s][i + delta];
    for (int i = MAPW - delta; i < MAPW; i++) GCRUMB[s][i] = 0;
  }
  for (int s = 0; s < MAXN; s++)
    for (int l = 0; l < MAXK; l++) {
      for (int i = 0; i + delta < MAPW; i++) g_crumble[s][l][i] = g_crumble[s][l][i + delta];
      for (int i = MAPW - delta; i < MAPW; i++) g_crumble[s][l][i] = 0;
    }
}
/* build GMAP for infinite mode at current position */
static void build_inf_window(int baseRow) {
  inf_init();
  const int n = INF_SEG_N, k = INF_SEG_K;
  G.shape = (uint8_t)n;
  G.k = (uint8_t)k;
  shift_window(baseRow - GMAP_BASE);
  GMAP_BASE = baseRow;
  for (int i = 0; i < MAPW; i++)
    for (int s = 0; s < MAXN; s++) { GMAP[s][i] = 0; GCR0[s][i] = 0; }
  for (int i = 0; i < MAPW; i++) {
    if (i < 4) continue;
    int R = baseRow + i;
    int m = R % g_infTotal;
    int seg = 0;
    while (seg < INF_SEG_COUNT && g_infStart[seg + 1] <= m) seg++;
    if (seg >= INF_SEG_COUNT) seg = INF_SEG_COUNT - 1;
    int row = m - g_infStart[seg];
    for (int s2 = 0; s2 < n; s2++) {
      uint8_t mm = 0, cm = 0;
      for (int ln = 0; ln < k; ln++) {
        if (!inf_tile(seg, row, s2, ln)) mm |= (uint8_t)(1u << ln);
        else if (inf_crumb(seg, row, s2, ln)) cm |= (uint8_t)(1u << ln);
      }
      GMAP[s2][i] = mm;
      GCR0[s2][i] = (uint8_t)(cm & ~mm);
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
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = level_finish_row(lvl);
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
  /* load the view roll for this spot instead of starting at 0 and easing the
     camera round: 78% of levels spawn on a wall that is not "up", so zeroing
     the roll made every level load visibly spin the tunnel into place (and a
     staged cutscene that had just loaded a level showed the wrong angle). */
  G.rot = G.rotT = cam_rot_target();
  cam_place();
  G.input = 0.0;
  G.animT = 0.0;
  G.landT = 0.0;
}

/* open the next checkpoint WITHOUT stopping: keep everything that places the
   runner (ring/vRing/roll/jump/input/clocks) so there is no teleport — only
   fresh tunnel/level tuning is loaded. prog carries its overshoot. */
static void open_level_continue(int lvl, double over) {
  const tunnel_t *t = tun();
  int n0 = G.shape, k0 = G.k;
  double ring0 = G.ring;
  G.lvl = (uint16_t)lvl;
  compute_rows();
  G.shape = t->n_sides;
  G.k = t->k_tiles;
  const baked_level_t *B = 0;
  if (baked_at(G.tun, G.lvl, &B)) { G.shape = B->n; G.k = B->k; }
  apply_level_look(lvl);
  G.theme = t->theme;
  G.rowsPer = rpsAt(lvl);
  G.rowStart = g_rowStart[lvl];
  G.rowEnd = level_finish_row(lvl);
  build_window();
  crumb_reset();
  g_hintDirty = 1;
  G.state = S_RUN;
  G.prog = G.rowStart + over;
  if (G.prog >= G.rowEnd) G.prog = G.rowEnd - 0.001;
  /* ring, vRing, rot, rotT, jump, jv, input, animT, landT preserved. The ring
     is re-expressed in the new level's grid so the runner keeps their wall;
     gravSide follows, so the camera roll does not jump either. */
  G.ring = ring_remap(ring0, n0, k0, G.shape, G.k);
  G.gravSide = (uint8_t)wrap_side(G.ring, G.k, G.shape);
}

/* ---------------- helpers ---------------- */
/* A scene staged as a checkpoint is completed sits the camera at the level's
   TAIL (see backdrop_at) so it shows the stretch just run. Past a level's last
   row the window is filled from the NEXT level's own bitmap — but the tunnel's
   FINAL checkpoint has no next level, so those rows are the solid fill and a
   camera sitting on rowEnd stares at a blank wall. Back the staged camera up
   so the level's own tail rows are what fills the view. A level whose finish
   row sits before the end of its terrain (the win trigger: the scene fires
   while the authored tunnel still runs on) needs no back-off — the view is
   already the level's own rows. */
#define STAGE_TAIL_BACK 16.0
static void stage_back_from_tail(void) {
  const tunnel_t *t = tun();
  if (G.lvl + 1 < (int)t->levels) return; /* a next level really is drawn ahead */
  if (g_rowStart[G.lvl + 1] > G.rowEnd + 1.0) return; /* authored rows still ahead */
  double back = G.rowEnd - STAGE_TAIL_BACK;
  if (back < G.rowStart) back = G.rowStart;
  if (G.prog > back) G.prog = back;
}
static int side_under(void) { return wrap_side(G.ring, G.k, G.shape); }
static int lane_under(void) { return wrap_lane(G.ring, G.k); }

/* character stats, baked from the original game's character classes.
 * Order: runner, skater, child, angel, ghost(=child), lizard, ninja,
 * student, gentleman, pastafarian, bunny, climber, duplicator,
 * pirate(=pastafarian), skier, iceskater, jackolantern.
 * Base values from the base character class: jump 900, speed 270,
 * run 300, fall 300, ease 0.9; per-character multipliers/overrides from
 * each character's constructor (Runner extends base 1.17x/1.21x/...,
 * Skater maxspeed 600, Lizard jump 1080 / fall 285 (Lizard.as ctor * 1.2 and
 * §,A§'s awake branch), Ghost/Pirate reuse the Child / Pastafarian factories,
 * ...). Normalized to Runner = 1.0.
 * Angel is the ONE row below that is not a direct copy: Angel.as overrides no
 * fall value at all (its 0.4 is §>!7§ air control, and its glide lives in the
 * §4Y§/§'s§ ability objects, which this engine does not have), so the 0.3636
 * GRAV value is this port's stand-in for that unported glide.
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
  0.9917, /* lizard 1080 (Lizard.as ctor: jump * 1.2, and §,A§ sets §?!>§=1080) */
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
  0.8333, /* lizard 285 (Lizard.as §,A§ awake branch; 240 when asleep) */
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
/* The guide must only plan moves the player can actually EXECUTE, so the
   envelope is DERIVED from the runner's own physics instead of guessed:
     running: lanes/row  = lateral speed / forward speed
     leaping: rows       = airtime * forward speed  (the jump is ballistic, so
                           its length is set by the airtime, not by the level)
              lanes      = airtime * lateral speed
   LEAP_ROW_MIN is the one measured exception, and it is a property of the DP's
   grid rather than of the runner: the plan's row axis is one forward row, but
   the follower tracks it with the eased steering ramp (STEER_EASE), so a plan
   that steps ONE lane per row asks for a sustained lateral speed the runner
   cannot hold — measured on the Side Path F levels, the follower clears 0/6 at
   a 1-lane allowance and 6/6 at 2. The lateral step therefore stays at 2: the
   coarser step is what makes the plan TRACKABLE, which is the whole point of
   the guide. The leap numbers have no such fudge — they are pure ballistics. */
#define HINT_MAXDC_CAP 4  /* hard caps so a freak level cannot blow the DP up */
#define HINT_LEAP_CAP 24
#define HINT_LEAPDC_CAP 24
#define HINT_LANE_MIN 2   /* lanes/row floor: a 1-lane plan cannot be tracked */
static void hint_envelope(int *maxdc, int *leap, int *leapdc) {
  int cm = char_idx();
  double fwd = G.rowsPer * SPEED_MUL * CHAR_FWD[cm]; /* rows/s */
  if (!(fwd > 0.05)) fwd = 0.05;
  double lat = LATSPD * CHAR_LAT[cm];                /* lanes/s */
  double grav = GRAV * CHAR_GRAV[cm];
  if (!(grav > 0.05)) grav = 0.05;
  double air = 2.0 * (JUMPV * CHAR_JUMP[cm]) / grav; /* s airborne */
  int d = (int)(lat / fwd + 0.5);
  int l = (int)(air * fwd + 0.5);
  int dl = (int)(air * lat + 0.5);
  if (d < HINT_LANE_MIN) d = HINT_LANE_MIN;
  if (d > HINT_MAXDC_CAP) d = HINT_MAXDC_CAP;
  if (l < 2) l = 2;
  if (l > HINT_LEAP_CAP) l = HINT_LEAP_CAP;
  if (dl < 1) dl = 1;
  if (dl > HINT_LEAPDC_CAP) dl = HINT_LEAPDC_CAP;
  *maxdc = d; *leap = l; *leapdc = dl;
}
/* the planner's envelope for the runner's current physics (test seam) */
void run3_hint_env(double *maxdc, double *leap, double *leapdc) {
  int d, l, dl;
  hint_envelope(&d, &l, &dl);
  if (maxdc) *maxdc = d;
  if (leap) *leap = l;
  if (leapdc) *leapdc = dl;
}

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
  int envDc, envLeap, envLeapDc;
  hint_envelope(&envDc, &envLeap, &envLeapDc);
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
        for (int dc = -envDc; dc <= envDc; dc++) {
          int nc = c + dc; while (nc < 0) nc += N; while (nc >= N) nc -= N;
          int ncost = base + 1;
          if (ncost >= h_cost[ro + 1][nc]) continue;
          if (!hint_solid(nc, rowAbs + 1, n, k, avoidCrumb)) continue;
          h_cost[ro + 1][nc] = (int16_t)ncost;
          h_prev[ro + 1][nc] = (int32_t)(ro * HINT_COLS + c + 1);
        }
      }
      for (int d = 2; d <= envLeap && ro + d < R; d++) {
        for (int dc = -envLeapDc; dc <= envLeapDc; dc++) {
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
  render_init_stars(seed);
  g_powercells = 0;
  g_power = 1.0;
  g_dislodged = 0;
  if (NTUNNELS > 0) {
    G.tun = 0;
    open_level(0);
  }
}

void run3_open(int tunIdx) {
  if (tunIdx < 0 || tunIdx >= (int)NTUNNELS) tunIdx = 0;
  G.tun = (uint16_t)tunIdx;
  open_level(0);
}

void run3_seek(int tunIdx, int lvl) {
  if (tunIdx < 0 || tunIdx >= (int)NTUNNELS) tunIdx = 0;
  G.tun = (uint16_t)tunIdx;
  const tunnel_t *t = tun();
  if (lvl < 0) lvl = 0;
  if (lvl >= (int)t->levels) lvl = (int)t->levels - 1;
  open_level(lvl);
}

/* start infinite mode */
void run3_start_inf(void) {
  G.tun = 0;
  G.shape = INF_SEG_N;
  G.k = INF_SEG_K;
  G.tile = DEFAULT_TILEW;
  G.theme = 0;
  g_infSpeed = INF_BASE_SPEED;
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
  /* endless mode has no level look to inherit: clear the roll offset and put
     the camera on the spawn wall straight away (see open_level) */
  g_rotOff = 0.0;
  G.rot = G.rotT = cam_rot_target();
  cam_place();
  G.input = 0.0;
  G.animT = 0.0;
  G.landT = 0.0;
  G.rowsPer = g_infSpeed;
  crumb_reset();
  GMAP_BASE = 0;
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

/* restart the endless run at the first authored segment */
static void inf_restart(void) {
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
  G.input = 0.0;
  g_infSpeed = INF_BASE_SPEED;
  g_infRows = 0;
  g_infScore = 0;
  crumb_reset();
  GMAP_BASE = 0;
  build_inf_window(0);
}

void run3_flap(void) {
  if (G.state == S_READY) {
    G.state = S_RUN;
  } else if (G.state == S_RUN) {
    if (G.jump <= 0.1 && G.jv <= 0.0) {
      G.jump = 0.1;
      G.jv = JUMPV * CHAR_JUMP[char_idx()];
      G.landT = 0.0; /* leaving ground cancels the landing pose */
    }
  } else if (G.state == S_DEAD) {
    if (G.rowEnd > 900000.0) inf_restart();
    else open_level(G.lvl); /* open_level auto-starts (S_RUN) */
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

    /* infinite mode: rebuild the window as we advance, and let the endless
       run ramp up on top of the authored segment order */
    if (G.rowEnd > 900000.0) {
      int curRow = (int)G.prog;
      if (curRow - GMAP_BASE > MAPW / 2) {
        build_inf_window(curRow);
      }
      g_infRows = curRow;
      g_infScore = curRow / 2;
      g_infSpeed = INF_BASE_SPEED + (double)curRow * INF_SPEED_PER_ROW;
      if (g_infSpeed > MAX_RPS) g_infSpeed = MAX_RPS;
      G.rowsPer = g_infSpeed;
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
        stage_back_from_tail(); /* last checkpoint: keep authored rows ahead */
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
        G.jump = 0.1;
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
      /* instant respawn at the checkpoint start (the one allowed teleport),
         or from the top of the authored segment chain in endless mode */
      if (G.rowEnd > 900000.0) inf_restart();
      else open_level(G.lvl);
    }
  }

  /* The camera is bolted to the runner and the LEVEL moves around them: the
     roll lays the flat facet under them level (an exact -360*side/n, so 90 deg
     steps on a square), the camera pans laterally onto their spot along that
     chord, and it follows the jump / death drift vertically. The runner is
     pinned at the low third by construction. While airborne the roll is
     FROZEN (see below) and while steering it eases onto the next facet, so the
     step is never a one-frame jerk. */
  /* a staged scene (S_CUT / S_GATE) adds no authored roll: its camera is a
     POSITION (see run3_stage_cam), it does not tilt the held tunnel. It does
     keep the level's AUTHORED roll offset, which gameplay drops so the floor is
     exactly level. */
  double target2 = cam_rot_target();
  if (G.state == S_CUT || G.state == S_GATE) target2 += g_rotOff;
  if (G.state == S_RUN && (G.jump > 0.0 || G.jv > 0.0)) {
    /* airborne: the roll is FROZEN. gravSide does not follow the wall until a
       touchdown, so the view cannot flip under the player mid-jump; the target
       is re-quantized and glided onto the moment they land. */
  } else {
    /* Ease onto the facet so the 360/n step is never a one-frame jerk — this
       covers both steering across a side and the re-quantize on landing — and
       snap as soon as the residual is a small fraction of a step, so a settled
       player (and a level load) is EXACTLY upright. */
    double d = target2 - G.rot;
    while (d > PI) d -= TAU;
    while (d <= -PI) d += TAU;
    double ad = d < 0.0 ? -d : d;
    double snapAt = run3_roll_step() * ROLL_SNAP_FRAC;
    if (G.state == S_CUT || ad <= snapAt) {
      G.rot = target2;
    } else {
      double ease = ROLL_EASE_RATE * dt;
      if (ease > 0.5) ease = 0.5;
      double mv = d * ease;
      /* a cap in rad/s keeps a big re-quantize (e.g. landing a long jump on a
         different wall) a visible glide rather than a snap */
      double cap = ROLL_MAX_RATE * dt;
      if (mv > cap) mv = cap; else if (mv < -cap) mv = -cap;
      G.rot += mv;
    }
  }
  G.rotT = target2;
  cam_place();

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
/* THE VERSION LIVES HERE AND NOWHERE ELSE.

   It is the engine's own build string, handed to the host so the page can show
   which wasm it is actually running - the point being that a stale cached
   build can never silently masquerade as a new one. index.html and the JS
   carry no version number at all: the host reads it back out of the engine it
   loaded (run3_version/run3_version_len) and paints the label from that, and
   the engine is fetched with cache revalidation so the bytes are never the
   old ones. Bump this ONE line per build. */
#define RUN3_VERSION "0.9.11"
const char *run3_version(void) { return RUN3_VERSION; }
int32_t run3_version_len(void) { return (int32_t)(sizeof(RUN3_VERSION) - 1); }
int32_t run3_sides(void) { return G.shape; }
int32_t run3_lanes(void) { return G.k; }
int32_t run3_theme(void) { return G.theme; }
int32_t run3_side(void) { return side_under(); }
int32_t run3_lane(void) { return lane_under(); }
int32_t run3_row(void) { return (int32_t)G.prog; }
double run3_rowf(void) { return G.prog; }
/* the runner's height above the wall (test seam) */
double run3_jump(void) { return G.jump; }
/* pointer a host test can pass to the exports that write doubles back (test
   seam; wasm has no way to hand a caller a JS array) */
static double g_scratch[32];
double *run3_scratch(void) { return g_scratch; }
double run3_level_rows(void) { return G.rowEnd - G.rowStart; }
/* the level's authored row count (test seam). `level_finish_row` can sit
   BEFORE this when the level carries a result-win trigger, and whether it does
   is exactly what decides whether the staged camera has to back off the tail:
   rows past a finish row inside the level's own terrain are real tunnel, rows
   past the authored end are the solid fill. */
double run3_level_authored_rows(void) {
  if (G.lvl < 0 || G.lvl >= MAX_LEVELS) return 0.0;
  return g_levelRows[G.lvl];
}
double run3_ring(void) { return G.ring; }
/* the view roll the current frame renders with (test seam) */
double run3_rot(void) { return G.rot; }
double run3_rot_at(double rowAbs) {
  /* test seam: the view roll the camera would hold at absolute row rowAbs for
     the runner's current wall, without disturbing the sim. Lets a suite walk
     a transition row by row and prove the roll never jumps. */
  double save = G.prog;
  G.prog = rowAbs;
  double r = cam_rot_target();
  G.prog = save;
  return r;
}
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

/* the runner's distance from the tube axis (the hint dots and the framing
   solver use it) */
double run3_runner_rad(void) {
  double px, py;
  runner_wall_pt(&px, &py);
  /* runner_wall_pt is on the UNIT n-gon, so scale it by the radius of the tube
     row the runner is standing on — the same blended radius the renderer
     draws. */
  double len = ssqrt(px * px + py * py);
  rowcross_t xc;
  if (run3_row_cross((int)G.prog, &xc)) {
    double R = xc.R + (xc.bR - xc.R) * xc.t;
    return len * R;
  }
  return len * xsec_R(G.shape, G.k, G.tile);
}
/* the runner's wall point in tube space (test seam / renderer) */
void run3_runner_pt(double *px, double *py) { runner_wall_pt(px, py); }

/* ---- camera model (camera-spec.md) ------------------------------------
   The camera is bolted to the runner in every sense:
     * ORIENTATION: the roll is quantized to the flat facet under them, so the
       floor is horizontal and the runner is UPRIGHT. For an n-sided tunnel the
       roll is an exact multiple of 360/n — 90-degree steps for a square, 60
       for a hexagon — never in between (except while the shape itself is
       mid-morph, where the two angles are blended across the seam).
     * POSITION: panned laterally onto the runner's own spot on that facet, so
       they never leave centre-x, and raised with their jump, so a jump does
       not move them on screen either. It is the TUNNEL that rotates, pans,
       rises and morphs around them.
     * DISTANCE: a multiple of the facet APOTHEM, so the framing is identical
       halfway along a side and at a corner, and in a 0.3-tile level as in a
       3.0-tile one.                                                    */
#define CAM_BACK 1.25       /* chase camera behind the runner plane (apothems) */
#define CAM_BACK_STAGE 1.0  /* staged camera behind the scene (apothems): used
                               when the scene sets no camera of its own */
#define CAM_OUT  0.35 /* camera offset from the runner toward the axis */
static double g_camX = 0.0, g_camY = 0.0;   /* camera in the rolled view frame */
static double g_camBack = 0.0, g_camOff = 0.0;
static double g_castRef = 0.0;  /* cast sprite scale reference (runner plane) */
static double g_runRx = 0.0, g_runRy = 0.0; /* the runner, rolled */

/* ---- STAGED SCENE CAMERA: the original's own model (overhaul) ----
   A cutscene camera in the original is an unparented Transform whose position
   AND rotation the scene sets per frame:

     Point3D = tunnel.<cam>.<position>;  _loc1_.x/y/z = <x>, <y>, <z>;
     var _loc2_ = tunnel.<cam>.<rotation>;      (a quaternion)
     _loc2_.x = a*sin(A); ... .w = cos(A);      (a turn of 2A about axis a,b,c)

   and the renderer (`Context3DUtils`) projects with a fixed VERTICAL fov of
   1.2566370614359172 rad = 72 degrees, near 15, far 3000. So a staged frame is
   fully authored in ORIGINAL PIXELS, and the port stages it the same way:

   * WORLD SCALE: one engine unit IS one original world pixel (see run3.h's
     WORLD UNITS note). A 75-px tile level is 75 units across, and z = 11298
     in Obvious is 11298 units down the bore — sensible against the original's
     own 15..3000 near/far and against scenes that `translate(0, 0, 80)` their
     camera as a dolly. Nothing is converted on the way in.
   * REST POSE: position (2, 0, z), rotation identity — the unparented camera
     rests ON THE TUNNEL AXIS looking straight down the bore (Tunnel's own
     camera rest is x=2, y=0).
   * VIEW BASIS: the renderer looks down -z with +y up (Billboard.lookAt
     orients `position - target` to the camera's -z with up +y). The tunnel's
     bore runs along +z with the floor at -y (corner() puts side 0 below the
     axis), which is the SAME handedness once the camera's own +z faces back
     up the bore; the projection multiplies depth by -1, so the authored z
     (always large and positive) means 'down the tunnel'.
   * ORIENTATION: the quaternion is consumed as-is — every component of it,
     as one turn. The view is `R^-1 * (p - camPos)`, exactly the original's
     own `QuaternionUtils.rotateVector(camera.rotation.conjugate(), offset)`:
     the roll about the bore AND the tilt of the bore come out of the same
     rotation, so a scene that rolls its camera gets a rolled frame rather
     than a tilt across the bore. The port's 'rotate the level by G.rot'
     emulation stays for GAMEPLAY only; a staged scene draws the level
     unrotated (G.rot = 0) and lets the camera carry the turn. */
#define STAGE_PX 1.0         /* engine units per original pixel: 1 - the same unit */
/* THE STAGED CAMERA'S PAN OFFSET, in original pixels, calibrated on
   ComingThrough.

   A scene's authored x/y is a place in the original's cross-section, so the
   port turns it into its own frame before it is subtracted from the world.
   That place is not the bore axis, though: ComingThrough's frame 0 sets the
   camera to (2, 106) - x equal to the camera's own rest pose and y the scene's
   first raised pan - and the original's whole camera rig carries that offset.
   Subtracting it puts ComingThrough's camera exactly ON the bore axis (so the
   centre pixel of the frame IS the tunnel axis, at every depth) while every
   other scene keeps its own authored pan relative to that rig, rather than the
   pan being thrown away. `notes.txt` §7 has the measurements. */
#define STAGE_PAN_X 2.0      /* the rig's x, from ComingThrough's authored x */
#define STAGE_PAN_Y 106.0    /* the rig's y, from that same frame's pan */
/* the cast's own z baseline: bake_cutscenes.py emits a scene's cast z as
   STAGE_NEAR_ROWS + (row - sceneFront), so the FRONT cast member sits here */
#define STAGE_NEAR_ROWS 1.0

/* Per frame: the camera's authored z, the base it is measured from, and the
   FRONT cast member's raw row (the same anchor bake_cutscenes.py measures the
   cast z from).

   The original writes the camera's z in one of two ways, and only the first is
   resolvable from the data (see camera-spec.md 10):

     zb 1  `<level>.endZ + z`  — z px before the level's END, where a cutscene
            fires (Candy's setPosition(0, 150, endZ - 800)). The level's own
            end is a place this port knows, so the distance is EXACT:
            (front row + z) ahead of the front cast — no level origin
            needed, because the cast's rows and the level's end are both in
            the level's own coordinates.
     zb 2  `<level>.startZ + z` — measured from the level's start.
     zb 0  a bare literal: the absolute coordinate the scene was authored in.
            Its origin is not recoverable (measured across the baked scenes it
            disagrees with the cast's own place by -90..+130 tunnel radii), so
            this form keeps the port's own shot: the authored z read against
            the cast's rows when that lands inside the original's 15..3000 px
            near/far band, and one tube radius otherwise. */
static double g_stageZb = 0.0, g_stageFront = 0.0; /* g_stageZ is the camera's z */
void run3_stage_shot(double zpx, double zb, double frontRow) {
  g_stageZ = zpx;
  g_stageZb = zb;
  g_stageFront = frontRow;
}
/* The camera's distance ahead of the front cast member, in engine units.

   The cast's rows and the camera's authored z are the SAME coordinate: the
   level's own row chain, a row being the level's own tile width (levels differ
   — the game ships tile widths from a few tens of px to a few hundred, and
   level_tilew is the one this level uses). So `front * tilew` is the front
   member's place and `z / 100` the camera's, and the difference is the shot —
   exactly the authored data, used as it is. There is no fallback: a scene whose
   camera could not be read would be a scene the port simply cannot stage. */
/* The port's own staged camera distance: one facet apothem behind the front
   cast. This is the shot a scene with NO readable camera gets, and the one a
   bare-literal camera z falls back to when its reading is not usable. */
static double stage_own_dist(void) {
  int n = G.shape > 0 ? G.shape : 1;
  double apo = xsec_R(n, G.k, G.tile) * scos(PI / (double)n);
  if (!(apo > 0.05)) apo = 2.0;
  return CAM_BACK_STAGE * apo;
}
/* The original's camera near/far planes, in world px. A bare-literal authored
   z is only believed when the shot it implies lands inside this band; see the
   base-0 note above. */
#define STAGE_SHOT_NEAR 15.0
#define STAGE_SHOT_FAR  3000.0
static double stage_shot_dist(void) {
  if (!g_stageAuthored) {
    /* NO authored camera for this scene (the bake found no setPosition on its
       camera): there is no shot to read, so the port's own staged camera
       stands where `run3_stage_cam` puts it, one apothem off the wall. Every
       scene that HAS one goes through the authored path below. */
    return stage_own_dist();
  }
  double tw = level_tilew((int)G.lvl);
  if (g_stageZb > 1.5) /* `startZ + z`: z is measured from the level's start */
    return g_stageZ * STAGE_PX - g_stageFront * tw;
  /* `endZ + z` and the bare literal both put the camera at `z` in the level's
     own coordinate, ahead of the front cast by `front * tilew`. The endZ form
     is the one that resolves exactly: the level's own length cancels, because
     the end IS `R` rows in — Candy's `setPosition(0, 150, endZ - 800)` with the
     front cast at row -6.9 is `-6.9 * tilew + 8` units.

     The BARE LITERAL does not: its origin is the scene's own section chain
     while the cast's rows are level-local, so read as a distance it lands
     anywhere from -13000 to +6400 px across the baked scenes (215 of the 219
     authored segments are this form). Believing it unconditionally staged
     most scenes with their cast BEHIND the camera, which draws an empty
     frame — the mid-gate scene `OfCourse` resolves to -9739 px that way.
     So the bare form is believed only where it lands inside the original's
     own near/far band, and otherwise the port keeps its own shot. The
     authored PAN, orientation and gauge are unaffected: this decides the
     distance only. */
  double d = g_stageFront * tw - g_stageZ * STAGE_PX;
  if (d >= STAGE_SHOT_NEAR && d <= STAGE_SHOT_FAR) return d;
  return stage_own_dist();
}

void run3_stage_camera(double px, double py, double pz,
                       double qx, double qy, double qz, double qw) {
  g_stageX = px; g_stageY = py; g_stageZ = pz;
  g_stageRot[0] = qx; g_stageRot[1] = qy; g_stageRot[2] = qz; g_stageRot[3] = qw;
  double n = ssqrt(qx * qx + qy * qy + qz * qz + qw * qw);
  if (n > 1e-6) {
    g_stageRot[0] /= n; g_stageRot[1] /= n;
    g_stageRot[2] /= n; g_stageRot[3] /= n;
  } else {
    g_stageRot[0] = g_stageRot[1] = g_stageRot[2] = 0.0; g_stageRot[3] = 1.0;
  }
  g_stageAuthored = 1;
  if (G.state == S_CUT) {
    G.rot = 0.0;               /* the level stays put; the camera turns */
    G.rotT = 0.0;
    cam_place();
  }
}
/* the staged frame's authored camera, in engine units (render.c consumes):
   the authored position turned INTO THE PORT'S OWN CROSS-SECTION FRAME,
   straight in original pixels. z is in the SAME frame the renderer draws the
   cast in — a camera-relative depth where the front cast row is 0
   (run3_stage_row_z) — so the camera sits `d` units BEHIND the front cast,
   minus how far the scene has dollied it forward ((z - z0)): moving the
   authored z forward brings the camera closer, exactly as the original's
   `camera.translate(0, 0, ...)` does.

   THE SAME TURN APPLIES TO THE CAMERA, INVERSE. `stage_view_map` turns the
   world offset by the gauge (`STAGE_GAUGE`) to lift the port's tube space
   into the original's frame, so the authored camera POSITION — which is a
   place in that same original frame — has to be turned by the INVERSE of the
   gauge before it is subtracted, or the world turns under a camera that does
   not. The rig's own pan offset (`STAGE_PAN_X/Y`, calibrated on ComingThrough)
   comes off first, in the ORIGINAL's frame, so that scene lands on the axis
   and every other scene keeps its pan relative to the same rig.

   The gauge is `PI/2 + PI` (render.c): the cross-section quarter turn that
   makes the port's ring index the original's side index, plus the half turn
   the scenes are presented with. Its inverse is `R(-3*PI/2) = R(PI/2)`, i.e.
   `(x, y) -> (-y, x)`, and BOTH the offset and the turn have to move together
   with the gauge or the world turns under a camera that does not. */
double run3_stage_pos_x(void) { return -(g_stageY - STAGE_PAN_Y) * STAGE_PX; }
double run3_stage_pos_y(void) { return  (g_stageX - STAGE_PAN_X) * STAGE_PX; }
double run3_stage_pos_z(void) { return -stage_shot_dist(); }
/* the shot distance itself: render.c sizes the staged cast against it, so a
   front cast member always reads at the same fraction of the screen */
double run3_stage_dist(void) { return stage_shot_dist(); }
/* A cast row as a depth in the same frame: row 1 (the bake's STAGE_NEAR_ROWS,
   the scene's front member) is 0 and rows advance a level tile each, which is
   how the renderer's own rows advance — so the cast spans the level's real
   geometry instead of a rescaled copy of it. */
double run3_stage_row_z(double zrow) {
  return (zrow - STAGE_NEAR_ROWS) * level_tilew((int)G.lvl);
}
const double *run3_stage_quat(void) { return g_stageRot; }
int run3_stage_has_camera(void) { return g_stageAuthored; }

/* the side the roll is quantized to. gravSide only follows the wall on a
   touchdown, so the roll is FROZEN while airborne and re-quantized on landing */
static int roll_side(void) { return (int)G.gravSide; }
/* shortest-path angle interpolation (the two facets can straddle ±PI) */
static double ang_lerp(double a, double b, double t) {
  double d = b - a;
  while (d > PI) d -= TAU;
  while (d <= -PI) d += TAU;
  return a + d * t;
}
/* the view roll the camera holds at the current position: the facet under the
   runner laid flat. Side s of an n-gon has its midpoint at -PI/2 + TAU*s/n, so
   laying that side down is exactly -TAU*s/n — the 360/n step. Across a
   cross-section change the two quantized angles are blended by the same t the
   shape morph uses, so the camera turns with the ring. The authored per-level
   roll offset is deliberately NOT applied in gameplay: the floor must be
   exactly level. */
static double cam_rot_target(void) {
  int n = G.shape > 0 ? G.shape : 1;
  int k = G.k > 0 ? G.k : 1;
  double t = -TAU * (double)roll_side() / (double)n;
  rowcross_t xc;
  if (run3_row_cross((int)G.prog, &xc) && xc.bn > 0 && xc.t > 0.0) {
    double r2 = ring_remap(G.ring, n, k, xc.bn, xc.bk);
    int s2 = wrap_side(r2, xc.bk, xc.bn);
    t = ang_lerp(t, -TAU * (double)s2 / (double)xc.bn, xc.t);
  }
  return t;
}
/* the runner's point in tube space, in world units, on the blended shape that
   is actually drawn for their row */
void run3_runner_world(double *px, double *py) {
  double ux, uy;
  runner_wall_pt(&ux, &uy);
  double R = xsec_R(G.shape, G.k, G.tile);
  rowcross_t xc;
  if (run3_row_cross((int)G.prog, &xc)) R = xc.R + (xc.bR - xc.R) * xc.t;
  if (px) *px = ux * R;
  if (py) *py = uy * R;
}
/* the facet apothem of the runner's row (blended): the perpendicular distance
   from the axis to the floor they stand on */
static double runner_apothem(void) {
  rowcross_t xc;
  if (run3_row_cross((int)G.prog, &xc)) {
    double a0 = xc.R * scos(PI / (double)xc.n);
    if (xc.bn > 0 && xc.t > 0.0) {
      double a1 = xc.bR * scos(PI / (double)xc.bn);
      return a0 + (a1 - a0) * xc.t;
    }
    return a0;
  }
  int n = G.shape > 0 ? G.shape : 1;
  return xsec_R(G.shape, G.k, G.tile) * scos(PI / (double)n);
}
/* the runner's vertical world offset this frame: the jump (or the fall out of
   the tunnel) plus the landing bob. The camera follows it one-for-one, so the
   runner holds their screen row and the tunnel does the moving. */
#define LAND_BOB_AMP 3.0 /* world pixels of the touchdown dip */
double run3_runner_lift(void) {
  if (G.state == S_DEAD) {
    double dd = G.fallT;
    if (dd > VOID_TIME) dd = VOID_TIME;
    return 2.0 - dd * 110.0;
  }
  double lift = 2.0 + G.jump;
  if (G.landT > 0.0) {
    double p = G.landT / 0.25;
    if (p > 1.0) p = 1.0;
    lift -= LAND_BOB_AMP * p * p;
  }
  return lift;
}
/* place the camera for the current runner position (see the model above) */
static void cam_place(void) {
  double apo = runner_apothem();
  if (apo < 0.02) apo = 0.02;
  g_camBack = CAM_BACK * apo;
  g_camOff = (1.0 - CAM_OUT) * apo;
  double Px, Py;
  run3_runner_world(&Px, &Py);
  double c = scos(G.rot), s = ssin(G.rot);
  g_runRx = Px * c - Py * s;
  g_runRy = Px * s + Py * c;
  if (G.state == S_CUT || G.state == S_GATE) {
    /* STAGED SCENE. Two models, chosen per scene:

       AUTHORED (the overhaul — run3_stage_camera): the scene set the camera's
       position and rotation itself, in original pixels. The position converts
       about the rest pose (2, 0) in original pixels, the bore slides by the
       authored z (g_stageZ), and the quaternion is passed to render.c as-is.
       The camera is expressed in the VIEW frame (x right, y up, z up the
       bore), so no roll rotation is applied to it here — the renderer tilts
       the bore by the quaternion instead. The level draws unrotated.

       FALLBACK (scenes the bake found no camera setup in): the old normalised
       (side, lift) pan on the axis, in the held frame's own rolled axes, with
       the level rolled by the facet + authored offset as before. */
    if (g_stageAuthored) {
      g_camBack = 1.0;                 /* nominal depth 0 (the bore slides) */
      g_camX = run3_stage_pos_x();
      g_camY = run3_stage_pos_y();
    } else {
      g_camBack = CAM_BACK_STAGE * apo;
      double ox = g_stageSide * apo, oy = -g_stageLift * apo; /* +y = up here */
      g_camX = ox * c - oy * s;
      g_camY = ox * s + oy * c;
    }
  } else {
    g_camX = g_runRx;                      /* lateral pan: runner dead centre */
    g_camY = g_runRy + g_camOff + run3_runner_lift();
  }
  /* the distance at which a cast sprite is cast_base_h() px tall — the SAME
     world scale the runner has on the track (CAM_BACK * apo), so a character
     reads against the tunnel in a cutscene exactly as it does in gameplay.
     A staged frame moves the camera's PLACE, never the world's scale: sizing
     the cast off the staged camera's nominal depth instead made every
     cutscene character a speck (render.c's cast_depth_scale). */
  g_castRef = (G.state == S_CUT || G.state == S_GATE) ? CAM_BACK * apo : g_camBack;
}
double run3_cast_ref(void) { return g_castRef; }
double run3_cam_x(void) { return g_camX; }
double run3_cam_y(void) { return g_camY; }
double run3_cam_back(void) { return g_camBack; }
double run3_cam_off(void) { return g_camOff; }
double run3_runner_world_x(void) { return g_runRx; }
double run3_runner_world_y(void) { return g_runRy; }
/* test seam: how far the runner sits off the camera's own centre line. The pan
   is derived from exactly this point, so it is zero in every frame — which is
   the point: a camera left on the axis (no pan) fails here. */
double run3_runner_offset(void) {
  double Px, Py;
  run3_runner_world(&Px, &Py);
  double c = scos(G.rot), s = ssin(G.rot);
  return Px * c - Py * s - g_camX;
}
/* the quantized roll step for the current cross-section: 360/n degrees */
double run3_roll_step(void) {
  int n = G.shape > 0 ? G.shape : 1;
  return TAU / (double)n;
}
/* 1 when the view roll is exactly a facet angle (runner exactly upright) */
int run3_roll_is_facet(void) {
  double step = run3_roll_step();
  if (step <= 0.0) return 0;
  double q = G.rot / step;
  double r = q - (double)(long long)(q < 0.0 ? q - 0.5 : q + 0.5);
  return (r < 1e-7 && r > -1e-7) ? 1 : 0;
}
/* cutscene staging: hold a tunnel frame behind the dialogue overlay.
   hold() freezes the just-finished tunnel (end cutscenes); backdrop()
   seeks to a tunnel/level first (start cutscenes). Neither runs the sim. */
void run3_cutscene_hold(void) {
  if (G.rowEnd > 900000.0) return; /* never stage infinite mode */
  G.state = S_CUT;
  g_stageSide = 0; g_stageLift = 0;
  stage_back_from_tail(); /* no next level past the tunnel's last checkpoint */
  /* place the STAGED camera even before the host pushes its first keyframe
     (a scene with no cast never calls run3_stage_cam): the held tunnel is
     viewed from the cutscene camera, not the gameplay chase camera */
  G.rot = G.rotT = cam_rot_target() + g_rotOff;
  cam_place();
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
  const tunnel_t *t = tun();
  if (lvl < 0) lvl = 0;
  if (lvl >= (int)t->levels) lvl = (int)t->levels - 1;
  g_power = 1.0; /* staged scenes play with the lights on */
  open_level(lvl);
  if (atEnd && G.rowEnd < 900000.0) {
    G.prog = G.rowEnd - 0.001;
    stage_back_from_tail(); /* no next level past the tunnel's last checkpoint */
  }
  /* load the camera angle for the staged spot instead of easing in from the
     level-start roll (open_level resets the view). A staged scene keeps the
     level's authored roll offset, which gameplay drops. */
  G.rot = G.rotT = cam_rot_target() + g_rotOff;
  G.state = S_CUT;
  g_stageSide = 0; g_stageLift = 0;
  cam_place();
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
static int menu_char = 0;     /* selected character on menu (sprite-atlas id) */
static int menu_hover = -1;   /* hover target: 0=play, 1=inf, 2=char area */
static int menu_char_count = 17;

/* The selection grid is drawn in the ORIGINAL game's character registry order
   (character/§'O§.init()): Runner, Skater, Student, Angel, Lizard, Gentleman,
   Duplicator, Skier, Bunny, Child, Pastafarian, Jack-o-Lantern, Climber,
   Ghost, Ice Skater, Pirate, Ninja. The entries are THIS port's sprite-atlas
   ids: the atlas order (levels/bake_assets.py CHARS) is only a storage
   detail and must not decide the selection screen. Ids 6 (unused random slot)
   and 7 (Zombie, no class) in the original registry are not playable. */
static const int CHAR_MENU_ORDER[NCHAR] = {
  0, 1, 7, 3, 5, 8, 12, 14, 10, 2, 9, 16, 11, 4, 15, 13, 6,
};
int run3_char_order(int pres) {
  if (pres < 0 || pres >= NCHAR) return 0;
  return CHAR_MENU_ORDER[pres];
}
int run3_char_pres(int atlas) {
  int i;
  for (i = 0; i < NCHAR; i++) if (CHAR_MENU_ORDER[i] == atlas) return i;
  return (atlas >= 0 && atlas < NCHAR) ? atlas : 0;
}

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

int run3_map_scroll_y(void) { return map_scroll_y; }
int run3_map_scroll_x(void) { return map_scroll_x; }
/* clamp the pan so the map cannot be thrown entirely out of view */
#define MAP_CLAMP_X 6400
#define MAP_CLAMP_Y 640
static int clamp_scroll(int v, int lim) {
  if (v < -lim) return -lim;
  if (v > lim) return lim;
  return v;
}
void run3_map_scroll2(int dx, int dy) {
  /* 2D pan. The original map spans x ~55..3400 and the extended world
     (Wormhole X and its branches) runs out past 6200, with Far Drift's tail
     the furthest point; y is the map's own vertical extent. Both axes are
     clamped so the map cannot be thrown entirely out of view. */
  map_scroll_x = clamp_scroll(map_scroll_x + dx, MAP_CLAMP_X);
  map_scroll_y = clamp_scroll(map_scroll_y + dy, MAP_CLAMP_Y);
}
/* both axes (drag / wheel / WASD path) */
void run3_map_scroll_xy(int dx, int dy) { run3_map_scroll2(dx, dy); }
/* horizontal-only pan (legacy path) */
void run3_map_scroll(int dx) { run3_map_scroll2(dx, 0); }
void run3_map_scroll_delta(int dx) { run3_map_scroll2(dx, 0); }
/* centre the view on a tunnel (used when a level finishes and the map opens).
   The map is drawn into the same framebuffer the world is, so its centre is the
   viewport's centre (CX, CY) — the 4:3 base box's centre — rather than a
   hard-coded 640x360 that only matches a 1280-wide frame. */
#define MAP_VIEW_CX CX
#define MAP_VIEW_CY CY
void run3_map_center_on(int tun) {
  if (tun < 0 || tun >= MAP_TUNNEL_COUNT) return;
  map_scroll_x = clamp_scroll(MAP_VIEW_CX - map_nodes[tun].x, MAP_CLAMP_X);
  map_scroll_y = clamp_scroll(MAP_VIEW_CY - map_nodes[tun].y, MAP_CLAMP_Y);
}

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

/* the tunnel's own map node (path start), un-scrolled. checkpoint_pos(t, -1)
   is NOT this: a negative lvl clamps to the first checkpoint dot. */
void run3_map_node_pos(int tun, int *x, int *y) {
  if (tun < 0 || tun >= MAP_TUNNEL_COUNT) { if (x) *x = 0; if (y) *y = 0; return; }
  if (x) *x = map_nodes[tun].x;
  if (y) *y = map_nodes[tun].y;
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
    int ny = map_nodes[i].y + map_scroll_y;
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
      cy += map_scroll_y;
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

/* hit-test: which tunnel node/checkpoint is at canvas coords? Both scroll
   axes apply, discovered only */
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
  /* the SAME 1280x720 design space render_menu translates onto the viewport
     centre (see there), so the drawn boxes and these hit boxes cannot drift
     apart on a window that is not 1280x720 */
  int cx = CX;
  int ox = CX - 640, oy = CY - 360;
  if (mx > cx - 160 && mx < cx + 160 && my > 340 + oy && my < 400 + oy) return 0;
  if (mx > cx - 160 && mx < cx + 160 && my > 420 + oy && my < 480 + oy) return 1;
  // character grid: 80x80 boxes, 90px pitch, 9 per row, 2 rows
  // row 0: y 520-600, row 1: y 620-700. The CELL is the character's
  // PRESENTATION slot (run3_char_pres) because that is where render_menu draws
  // the box; indexing by the sprite id put the hit box on a different
  // character wherever the two orders differ. The returned id is that slot, so
  // run3_menu_click's run3_char_order(hover - 2) resolves it back to a sprite.
  for (int i = 0; i < menu_char_count && i < NCHAR; i++) {
    int pres = run3_char_pres(i);
    int row = pres / 9;
    int col = pres % 9;
    int bx = ox + 40 + col * 90;
    int by = oy + 520 + row * 100;
    if (mx >= bx && mx < bx + 80 && my >= by && my < by + 80) return 2 + pres;
  }
  return -1;
}
void run3_menu_click(int mx, int my) {
  menu_hover = run3_menu_hover(mx, my);
  if (menu_hover >= 2) {
    menu_char = run3_char_order(menu_hover - 2);
  }
}
