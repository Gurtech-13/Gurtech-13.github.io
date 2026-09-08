/* run3.h - shared declarations for the two engine translation units
 * (run3.c = simulation/state/exports, render.c = drawing). Level content
 * lives in the levels directory and is not part of the engine. */
#ifndef RUN3_H
#define RUN3_H

#include <stdint.h>

/* screen / projection constants — 1280x720 (2x) covers whole page at higher res */
#define W 1280
#define H 720
#define CX 640
#define CY 358            /* screen y of the tunnel axis (vanishing point) — H/2 -2 */
#define FOCAL 460.0       /* doubled for 2x res to keep FOV */
#define DCAM 5.0          /* camera distance behind the runner plane (z=0) */
#define VIEW 34.0
#define NEARZ -4.55

#define MAXN 32
#define MAXK 8
#define MAPW 512          /* rows kept in the per-level window (45s*7rps+pad) */
#define PADW 120          /* rows of far lookahead beyond the level end row */

#define TAU 6.283185307179586
#define PI 3.141592653589793

/* movement — doubled player speed, gravity slowed a bit (not full fix) */
#define GRAV 10.0
#define JUMPV 5.6
#define LATSPD 8.4        /* doubled from 4.2 */
#define STEER_EASE 9.5    /* keep snappy */
#define FLIGHT 0.84
#define SPEED_MUL 2.0     /* forward speed multiplier */

#define MAX_TUNNELS 30 /* original Run 3 map paths only, no invented tunnels */
#define MAX_LEVELS 200
#define MAX_RPS 7.0
#define MAX_HOLE 0.26
#define INF_MODE_SCORE_MAX 999999

/* infinite mode state */
#define S_INF_RUN 5

/* texture IDs for baked-in assets */
#define TEX_CHAR_RUNNER  0
#define TEX_CHAR_SKATER  1
#define TEX_CHAR_CHILD   2
#define TEX_CRUMBLING    3
#define TEX_WARNSTRIPES  4
#define TEX_ICETILE      5
#define TEX_RUINEDTILE   6
#define TEX_BALLOON      7
#define TEX_PLUS         8
#define TEX_ARROW        9
#define TEX_BATTERY     10
#define TEX_ACCEL       11
#define TEX_COUNT       12

/* ---- tunnel profile (authored in the levels files) ---- */
typedef struct {
  uint8_t n_sides;     /* number of sides (4..32) */
  uint8_t k_tiles;     /* tiles per side (1..8) */
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
  double baseTile;     /* base tile size for this tunnel */
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
  double rot, rotT;          /* view roll (eases toward gravity wall flat) */
  uint8_t gravSide;          /* latched gravity wall: changes only on landing */
  double input;              /* steering axis -1..1 */
  double animT;              /* animation clock (s), drives frame cycling */
  double landT;              /* landing-pose timer (s), counts down */
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
  double q = ring / tot;
  /* floor (not trunc) so negatives wrap correctly on every corner */
  long long qi = (long long)(q < 0.0 ? q - 1.0 : q);
  ring -= tot * (double)qi;
  while (ring < 0.0) ring += tot;
  while (ring >= tot) ring -= tot;
  int s = (int)(ring / (double)k);
  if (s < 0) s = 0;
  if (s >= n) s = 0; /* ring ~= tot wraps to side 0 */
  return s;
}
static inline int wrap_lane(double ring, int k) {
  if (k <= 0) return 0;
  /* floor so negative rings yield a valid lane instead of UB shift */
  long long i = (long long)(ring < 0.0 ? ring - 1.0 : ring);
  long long l = i % (long long)k;
  if (l < 0) l += k;
  return (int)l;
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

/* map mode */
#define S_MAP 6
#define S_MENU 7
void run3_enter_map(void);
void run3_enter_menu(void);
void run3_map_click(int mx, int my);  /* canvas coords -> selects tunnel */
int  run3_map_hover(int mx, int my);  /* returns tunnel id under cursor, -1 */
int  run3_map_scroll_y(void);          /* current scroll offset (horizontal) */
int  run3_map_scroll_x(void);          /* alias for horizontal */
void run3_map_scroll(int dx);          /* scroll the map horizontally (1D) */
void run3_map_scroll_delta(int dx);    /* alias */
int  run3_map_selected(void);          /* selected tunnel id, -1 = none */
int  run3_map_hovered(void);           /* hovered tunnel id, -1 = none */
void run3_map_set_hover(int id);       /* set hover from JS mousemove */
void run3_map_set_hover_level(int lvl); /* hovered checkpoint lvl */
int  run3_map_hovered_level(void);      /* hovered checkpoint lvl, -1 */
void run3_map_set_locked(int tun, int locked);   /* 0=unlocked,1=locked */
void run3_map_set_cleared(int tun, int cleared); /* 0/1 */
int  run3_map_is_locked(int tun);
int  run3_map_is_cleared(int tun);
int  run3_map_is_discovered(int tun);  /* 1 if unlocked or cleared */
void run3_map_sync_state(int tun, int locked, int cleared); /* bulk helper */
/* checkpoints: each tunnel is a continuous run of levels, each on the map */
int  run3_map_checkpoint_count(int tun);          /* levels in tunnel */
void run3_map_checkpoint_pos(int tun, int lvl, int *x, int *y); /* base coords, no scroll */
int  run3_map_hover_level(int mx, int my);        /* checkpoint lvl under cursor, -1 = node/none */
int  run3_map_selected_level(void);               /* selected checkpoint lvl, -1 = node/none */
void run3_map_set_best(int tun, int best);        /* furthest cleared count (unlocks dots) */
int  run3_map_best(int tun);                      /* furthest cleared count */
void run3_menu_click(int mx, int my); /* menu click: 0=play, 1=inf, etc */
int  run3_menu_hover(int mx, int my); /* menu hover result */
void run3_menu_select_char(int c);    /* select character on menu */
int  run3_menu_char(void);            /* currently selected char */
void run3_char_set_locked(int id, int locked);
int  run3_char_is_locked(int id);

/* renderer exports (render.c) */
void render_map(void);   /* draw the world map on the canvas */
void render_menu(void);  /* draw the main menu on the canvas */

/* infinite mode / shop API (implemented in run3.c, exported to host) */
void run3_start_inf(void);
int32_t run3_inf_score(void);
int32_t run3_inf_rows(void);
int32_t run3_powercells(void);
void run3_add_cells(int32_t n);
void run3_spend_cells(int32_t n);

#endif
