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
/* staged scene camera: side -1/0/1 (roll), lift -1/0/1 (height) */
static int g_stageSide = 0, g_stageLift = 0;
void run3_stage_cam(int side, int lift) {
  g_stageSide = side < -1 ? -1 : (side > 1 ? 1 : side);
  g_stageLift = lift < -1 ? -1 : (lift > 1 ? 1 : lift);
}
int run3_stage_lift(void) { return g_stageLift; }

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
      if (B) {
        int lr = R - r0;
        if (lr >= 0 && lr < B->rows) {
          uint8_t mm = 0;
          for (int ln = 0; ln < k; ln++)
            if (!baked_tile(B, lr, s2, ln)) mm |= (uint8_t)(1u << ln);
          m = mm;
        } /* past the baked rows (far lookahead): solid */
      } else if (voidSide >= 0) {
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

static int lane_ok_at(int rowAbs) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  int s = side_under();
  if (s >= G.shape) return 0;
  return (GMAP[s][i] & (1u << lane_under())) ? 0 : 1;
}

/* tile under an arbitrary ring position (1 = solid) */
static int tile_at(int rowAbs, double ring) {
  int i = rowAbs - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 1;
  int s = wrap_side(ring, G.k, G.shape);
  int l = wrap_lane(ring, G.k);
  if (s >= G.shape || l >= G.k) return 0;
  return (GMAP[s][i] & (1u << l)) ? 0 : 1;
}

/* proactive landing assist: while falling, predict the touchdown row and
 * gently push the ring toward the nearest solid lane center there, so the
 * runner drifts onto the tile it is aiming at instead of clipping its edge.
 * The ring is continuous around the tube, so this automatically catches the
 * neighboring wall when landing on the edge of turning gravity. Capped to
 * +/-2 lanes: jumps aimed into wide gaps are still falls. */
static void landing_assist(double dt) {
  if (!(G.jump > 0.0 || G.jv > 0.0)) return;
  if (G.jv >= 0.0) return; /* still rising: nothing to aim at yet */
  int cm = char_idx();
  double g = GRAV * CHAR_GRAV[cm];
  if (g <= 0.0) return;
  double disc = G.jv * G.jv + 2.0 * g * G.jump;
  if (disc <= 0.0) return;
  double t = (G.jv + ssqrt(disc)) / g; /* fall time left */
  if (t <= 0.0 || t > 3.0) return;
  double spd = G.rowsPer * SPEED_MUL * CHAR_FWD[cm];
  int rowL = (int)(G.prog + spd * t);
  double tot = (double)G.shape * (double)G.k;
  if (tot <= 0.0) return;
  double base = G.ring;
  while (base < 0.0) base += tot;
  while (base >= tot) base -= tot;
  long long li = (long long)(base < 0.0 ? base - 1.0 : base);
  double best = 0.0;
  int have = 0;
  for (int dl = -2; dl <= 2; dl++) {
    double rc = (double)li + 0.5 + (double)dl; /* nearby lane center */
    double w = rc;
    while (w < 0.0) w += tot;
    while (w >= tot) w -= tot;
    if (!tile_at(rowL, w)) continue;
    double d = w - base;
    while (d > tot * 0.5) d -= tot; /* shortest way around the tube */
    while (d < -tot * 0.5) d += tot;
    double ad = d < 0.0 ? -d : d;
    double ab = best < 0.0 ? -best : best;
    if (!have || ad < ab) { best = d; have = 1; }
  }
  if (!have) return;
  double k = dt * 6.0; /* converge over ~0.3s of falling */
  if (k > 1.0) k = 1.0;
  G.ring = base + best * k;
  while (G.ring < 0.0) G.ring += tot;
  while (G.ring >= tot) G.ring -= tot;
}

/* touchdown backstop: the exact lane first, then a small sideways grab
 * (+/-0.55 tiles) onto the neighboring tile in the SAME row. Rarely fires
 * now that the airborne push does the main work; kept to forgive edge
 * clips the push could not fully correct. */
static int landing_grab(void) {
  static const double offs[3] = { 0.0, 0.55, -0.55 };
  int r = (int)G.prog;
  for (int o = 0; o < 3; o++) {
    double ring = G.ring + offs[o];
    double tot = (double)G.shape * (double)G.k;
    if (tot > 0.0) {
      while (ring < 0.0) ring += tot;
      while (ring >= tot) ring -= tot;
    }
    if (tile_at(r, ring)) {
      G.ring = ring;
      return 1;
    }
  }
  return 0;
}

/* ---------------- API ---------------- */
void run3_init(uint32_t seed) {
  seed = seed ? seed : 1u;
  g_seedT = h32(seed ^ 0x85ebca6bu);
  g_infSeed = h32(seed ^ 0xdeadbeefu);
  render_init_stars(seed);
  g_powercells = 0;
  g_power = 1.0;
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
        if (G.jump > 0.0) landing_assist(dt); /* mid-air push to the aim tile */
        if (G.jump <= 0.0) {
          if (landing_grab()) {
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

  /* ease the view roll along the shortest path toward the LATCHED gravity
     wall (not the live ring: mid-air drift must not swing gravity).
     Without the wrap, the wrap-around corner (side n-1 -> 0) eases almost a
     full turn instead of one step like every other corner. */
   int gs = G.gravSide < n ? G.gravSide : 0;
    double target2 = -(TAU * (double)gs) / (double)n + g_rotOff;
    if (G.state == S_CUT) target2 += -(double)g_stageSide * 0.28;
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

/* low-power light level for the renderer and the host (music ducking) */
double run3_power(void) { return g_power; }

/* per-level presentation for the renderer/host (0 = theme default) */
uint32_t run3_level_color0(void) { return g_col0; }
uint32_t run3_level_color1(void) { return g_col1; }
int32_t run3_level_music(void) { return g_mus; }

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
void run3_cutscene_backdrop(int32_t tunIdx, int32_t lvl) {
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
  G.state = S_CUT;
  g_stageSide = 0; g_stageLift = 0;
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
