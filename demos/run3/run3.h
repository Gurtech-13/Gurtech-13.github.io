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
#define LATSPD 6.0         /* nerfed strafing (was 8.4) */
#define STEER_EASE 9.5    /* keep snappy */
#define FLIGHT 0.84
#define SPEED_MUL 2.25    /* forward walk speed bumped a bit (was 2.0) */
#define VOID_TIME 5.0     /* seconds spent outside the tunnel before you die */

#define MAX_TUNNELS 48 /* 30 original Run 3 paths + 12 extended tunnels */
#define MAX_LEVELS 200 /* per-tunnel checkpoint cap (main extended runs are 140) */
#define NCHAR 17 /* playable characters (must match CHAR_COUNT in assets_data.h) */
#define MAX_RPS 7.0
#define INF_MODE_SCORE_MAX 999999

/* infinite mode state */
#define S_INF_RUN 5
/* endless mode is a chain of the authored segments in levels_baked.h
   (INF_SEG_*): the speed ramps with distance, the content does not */
#define INF_BASE_SPEED 2.6
#define INF_SPEED_PER_ROW 0.010

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
#define TEX_WORMHOLE    12
#define TEX_COUNT       13

/* ---- tunnel profile (authored in the levels files) ---- */
typedef struct {
  uint8_t n_sides;     /* number of sides (4..32) */
  uint8_t k_tiles;     /* tiles per side (1..8) */
  uint8_t theme;       /* palette 0..4 */
  uint16_t levels;     /* checkpoint levels in this tunnel */
  double baseRps;      /* rows/s at level 0 */
  double rpsPer;       /* rows/s added per level */
  double maxRps;
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
  uint8_t charm;             /* character 0..16 */
  uint8_t theme;
  uint8_t shape;             /* n sides */
  uint8_t k;                 /* tiles per side */
  double tile;
  double rowsPer;            /* rows/s for the current level */
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
double satan2(double y, double x);
uint32_t h32(uint32_t x);

/* renderer (render.c) */
void render_init_stars(uint32_t seed);
void render_frame(void);
uint32_t run3_sky(void); /* background colour of the last frame (tests) */
int32_t run3_sky_visible(void); /* star pixels the tube did not cover (tests) */
int32_t run3_space_visible(void); /* pixels the outside-the-tube layers wrote */
int32_t run3_space_survived(void); /* of those, how many the tube left showing */

/* hint route (engine -> renderer): a way to the level end, toggled with H */
void run3_hint_toggle(void);
int  run3_hint_on(void);
int  run3_hint_count(void);
int  run3_hint_row(int i);
double run3_hint_ring(int i);

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
#define S_CUT 8 /* cutscene backdrop: render the tunnel with no runner, no sim */
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

/* cutscene staging + low-power lights (implemented in run3.c) */
void run3_cutscene_backdrop(int32_t tunIdx, int32_t lvl); /* seek level head + hold */
void run3_cutscene_backdrop_end(int32_t tunIdx, int32_t lvl); /* seek level tail + hold */
void run3_cutscene_hold(void);                            /* freeze current frame */
void run3_cutscene_resume(void);                          /* unfreeze, keep going */
void run3_stage_cam(double side, double lift);                  /* staged camera angle */
double run3_stage_liftf(void);                                /* (renderer use) */
double run3_stage_sidef(void);                                /* (renderer use) */
double run3_rot(void);                                        /* live view roll (test seam) */
double run3_rot_at(double rowAbs);                            /* roll at a row (test seam) */
double run3_runner_rad(void);                                 /* runner's distance from the axis */
void   run3_runner_pt(double *px, double *py);                /* runner's tube-space wall point */
double run3_runner_offset(void);                              /* 0: runner is centre-screen (test) */
double run3_runner_offset(void);                              /* runner's screen-x offset (always 0) */
#define NSTAGE_ACT 8
#define NSTAGE_PROP 4
void run3_stage_actor(int i, int ch, double ring, double zrow, int vis);
/* kind 0 hides the slot. inset is how far the prop floats off the wall and
   toward the tube axis (0 = mounted on the wall, 1 = at the centre line) —
   the Coming Through map falls through the tube and lands on the floor, so
   it needs to leave the wall. */
void run3_stage_prop(int i, int kind, double ring, double zrow, double size,
                     double inset, int vis);
void run3_mid_arm(int32_t tun, int32_t lvl);                  /* pause gate at S_GATE */
void run3_mid_clear(void);
void run3_gate_resume(void);                              /* leave S_GATE, roll on */
double run3_power(void);                                  /* light level 0..1 */
uint32_t run3_level_color0(void);                         /* tile tint, 0 = theme */
uint32_t run3_level_color1(void);                         /* accent tint, 0 = theme */
int32_t run3_level_music(void);                           /* music id, 0 = tunnel */
/* Per-row tube cross-section (engine -> renderer).

   A level's layout can change at a checkpoint: sides, tiles per side, tile
   width and tint are all per level. Drawing the whole frame from the runner's
   current level made every row ahead snap to the new cross-section the instant
   they crossed a boundary, which reads as a teleport. Instead each row carries
   the cross-section of the level that owns it, blended toward the neighbouring
   level over a run of ROWXC_ROWS rows centred on the boundary, so size, side
   count and colour all morph slowly. t is the blend toward the neighbour
   (0 = pure own, 0..0.5 = approaching the boundary from either side). */
#define ROWXC_ROWS 12
/* rows of ordinary, unbroken tile either side of a level boundary: 12 either
   way is the 8-16 tile run a transition happens over */
#define SEAM_SOLID (ROWXC_ROWS / 2)
#define ROWXC_MAX 96
#define ROWXC_COLS (MAXN * MAXK)
typedef struct {
  int n, k;          /* owning level's tile grid (mask lookup grid) */
  int bn, bk;        /* neighbour's grid, or -1 when there is no blend */
  double t;          /* blend toward the neighbour, 0..1 */
  double R, bR;      /* circumradii of the two shapes */
  double tile, btile;/* row spacing (world units) of the two levels */
  uint32_t col0, bcol0; /* level tints (0 = theme palette) */
} rowcross_t;
/* 1 and *out filled when the row belongs to a real level; 0 when it does not
   (past the tunnel's last level), in which case the caller keeps the shape it
   already had. */
int run3_row_cross(int rowAbs, rowcross_t *out);          /* one row's shape */
int run3_missmask(int side, int rowAbs);                  /* holes + fallen */
int run3_tile_tex(int side, int rowAbs, int lane);         /* 0 / TEX_CRUMBLING */
double run3_shake(int side, int rowAbs, int lane);        /* shake secs left */
int32_t run3_dislodged(void);                             /* crumbled tile count */
int32_t run3_is_inf(void);                                /* endless mode flag */

#endif
