/* run3.h - shared declarations for the two engine translation units
 * (run3.c = simulation/state/exports, render.c = drawing). Level content
 * lives in the levels directory and is not part of the engine. */
#ifndef RUN3_H
#define RUN3_H

#include <stdint.h>

/* screen / projection constants */
#define W 640
#define H 360
#define CX 320
#define CY 178            /* screen y of the tunnel axis (vanishing point) */
#define FOCAL 230.0
#define DCAM 5.0          /* camera distance behind the runner plane (z=0) */
#define VIEW 34.0
#define NEARZ -4.55

#define MAXN 16
#define MAXK 4
#define MAPW 512          /* rows kept in the per-level window (45s*7rps+pad) */
#define PADW 120          /* rows of far lookahead beyond the level end row */

#define TAU 6.283185307179586
#define PI 3.141592653589793

/* movement */
#define GRAV 10.0
#define JUMPV 4.6
#define LATSPD 2.6        /* max lateral speed, tiles/s */
#define STEER_EASE 6.5    /* ease-in/out rate toward the target lateral speed */
#define FLIGHT 0.92       /* seconds airborne after a full jump */

#define MAX_TUNNELS 16
#define MAX_LEVELS 120
#define MAX_RPS 7.0
#define MAX_HOLE 0.26

/* ---- tunnel profile (authored in the levels files) ---- */
typedef struct {
  uint8_t shape;       /* 0..7 index into the shape archetype table */
  uint8_t theme;       /* palette 0..4 */
  uint16_t levels;     /* checkpoint levels in this tunnel */
  uint8_t blockEvery;  /* rows between 4-row wall voids (0 = none) */
  uint16_t blockStart; /* first level that has void blocks */
  double baseRps;      /* rows/s at level 0 */
  double rpsPer;       /* rows/s added per level */
  double maxRps;
  double holeStart;    /* hazard probability at level 0 */
  double holePer;      /* probability added per level */
  double maxHole;
  double tileMul;      /* tile size multiplier applied to the archetype */
} tunnel_t;

extern const tunnel_t TUNNELS[MAX_TUNNELS];
extern const uint16_t NTUNNELS;

/* ---- live game state (defined in run3.c, read by render.c) ---- */
typedef enum {
  S_READY = 0, S_RUN = 1, S_DEAD = 2, S_GATE = 3, S_DONE = 4
} gstate_t;

typedef struct {
  uint8_t state;
  uint16_t tun;              /* current tunnel index */
  uint16_t lvl;              /* current level within the tunnel */
  uint8_t charm;             /* character 0..2 */
  uint8_t theme;
  uint8_t shape;             /* n sides */
  uint8_t k;                 /* tiles per side */
  double tile;
  double rowsPer;            /* rows/s for the current level */
  double holeP;
  uint16_t blockEvery;
  double prog;               /* absolute row (continuous through the tunnel) */
  double rowStart;           /* absolute row where this level starts (gate) */
  double rowEnd;             /* absolute row where this level ends */
  double ring;               /* player position around the tube, in tiles */
  double vRing;              /* lateral speed, eased */
  double jump;               /* height above the wall surface */
  double jv;
  double fallT;
  double rot, rotT;          /* view roll (eases toward side_under flat) */
  double input;              /* steering axis -1..1 */
} game_t;

extern game_t G;
extern uint8_t GMAP[MAXN][MAPW]; /* missing-lane bitmask per (side, window row) */
extern int GMAP_BASE;            /* absolute row of GMAP row 0 */

/* math helpers (run3.c), usable by render.c */
double ssin(double x);
double scos(double x);
double ssqrt(double x);
uint32_t h32(uint32_t x);

/* renderer (render.c) */
void render_init_stars(uint32_t seed);
void render_frame(void);

/* small pure helpers shared by both units */
static inline int wrap_side(double ring, int k, int n) {
  double tot = (double)(n * k);
  ring -= tot * ((long long)(ring / tot));
  if (ring < 0.0) ring += tot;
  int s = (int)(ring / (double)k);
  if (s >= n) s = 0;
  return s;
}
static inline int wrap_lane(double ring, int k) {
  return ((int)ring) % k;
}
static inline uint32_t mixc(uint32_t c0, uint32_t c1, double t) {
  if (t <= 0.0) return c0;
  if (t >= 1.0) return c1;
  int lr = (int)((double)((int)(c0 >> 16) & 0xff) +
                 ((double)((int)(c1 >> 16) & 0xff) - (double)((int)(c0 >> 16) & 0xff)) * t);
  int lg = (int)((double)((int)(c0 >> 8) & 0xff) +
                 ((double)((int)(c1 >> 8) & 0xff) - (double)((int)(c0 >> 8) & 0xff)) * t);
  int lb = (int)((double)(c0 & 0xff) +
                 ((double)(c1 & 0xff) - (double)(c0 & 0xff)) * t);
  return 0xFF000000u | ((uint32_t)lr << 16) | ((uint32_t)lg << 8) | (uint32_t)lb;
}
#define rgb(r, g, b) \
  (0xFF000000u | ((uint32_t)(r) << 16) | ((uint32_t)(g) << 8) | (uint32_t)(b))

#endif
