/* run3.h - shared declarations for the two engine translation units
 * (run3.c = simulation/state/exports, render.c = drawing). Level content
 * lives in the levels directory and is not part of the engine. */
#ifndef RUN3_H
#define RUN3_H

#include <stdint.h>

/* ==================== THE VIEWPORT AND ITS 4:3 BASE ====================
 * The render target follows the WINDOW (run3_resize), and the composition lives
 * in a 4:3 BASE box CENTRED on both axes that takes up HALF the frame in x and
 * y (a quarter of its area): it is the largest 4:3 rectangle that fits in
 * half-width by half-height, so the main viewport is half the screen and every
 * pixel outside it is PERIPHERY showing additional world. 4:3 because that is
 * the original's own stage (800x600, which the authored dialogue coordinates
 * are in).
 *
 * Never stretched: FOCAL is derived from the BASE height, so the base box
 * always presents the same framing at the same scale, and a wider window simply
 * reveals more tunnel to the sides instead of magnifying the 4:3 picture. On a
 * taller-than-4:3 window the base is width-limited instead and the periphery is
 * the extra height (more world above and below) — one rule at every aspect.
 *
 * Everything anchored to the frame's composition — the projection centre, the
 * gameplay lower third the chase camera tilts the runner onto, the cutscene
 * bubble — is measured from the BASE box, never from the raw window.
 */
#define MAXW 2560         /* framebuffer capacity: the widest viewport supported */
#define MAXH 1440
extern int W, H;          /* the viewport (framebuffer) this frame, in pixels */
extern int BASE_W, BASE_H;/* the centred 4:3 base: half the frame on both axes */
extern int BASE_X0, BASE_Y0; /* that box's top-left corner in the frame */
extern int CX, CY;        /* the BASE box's centre: the projection centre and
                             the tunnel axis' vanishing point. Centred on both
                             axes, so this IS the frame centre too. */

/* Field of view, straight from the original. `Main.as` sets the renderer up
 * with
 *
 *   Context3DUtils.init(render, 1.2566370614359172, 15, 3000, true, true);
 *
 * and Context3DUtils builds
 *
 *   perspectiveMatrix.perspectiveFieldOfViewRH(fovY, surface.width /
 *                                             surface.height, near, far);
 *
 * so the FOV is VERTICAL and fixed at 1.2566370614359172 rad = 72 degrees, and
 * the ASPECT comes from the window - the original only ever widens the
 * horizontal extent, it never changes the vertical one. `LevelView` re-reads
 * `stage.stageWidth / stage.stageHeight` on Event.RESIZE for exactly that.
 *
 * The focal length is therefore derived, never written down: the old fixed 460
 * was a 76.2-degree vertical FOV, which made every cutscene's cast and tunnel
 * ~7.7% smaller than the original's. */
#define FOVY 1.2566370614359172        /* radians, = 72 degrees */
#define TAN_HALF_FOV 0.7265425280053609 /* tan(FOVY / 2) */
/* Derived from the BASE box, not the window: the vertical FOV spans the base
   height, which is what keeps the 4:3 composition identical at every aspect.
   At a 720-tall base this is 495.497, the value the port has always used. */
extern double FOCAL;
/* ---- WORLD UNITS: the original game's own, i.e. WORLD PIXELS ----
 * The original is authored in pixels: a level's `tileWidth` is a pixel count
 * (default 75, from the loader's `parseInt(param2, "tileWidth", 75)`), the
 * scene cameras are positioned in pixels, and a spritesheet frame is
 * `frame.w * 0.45681063122923593` of those pixels. The port therefore uses
 * exactly that unit — 1 engine unit = 1 original world pixel. Nothing is
 * rescaled on the way in: the authored z of 11298 in Obvious is 11298 units
 * down the bore, against the original's own 15..3000 near/far. */
#define DCAM 500.0        /* camera distance behind the runner plane (z=0) */
#define VIEW 3400.0
#define NEARZ -455.0

#define MAXN 32
#define MAXK 8
#define MAPW 512          /* rows kept in the per-level window (45s*7rps+pad) */
#define PADW 120          /* rows of far lookahead beyond the level end row */

#define TAU 6.283185307179586
#define PI 3.141592653589793

/* movement — doubled player speed, gravity slowed a bit (not full fix).
   These are the original's pixel units too: gravity in px/s^2, jump in px/s. */
#define GRAV 1000.0
#define JUMPV 560.0
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
double sasin(double x);
uint32_t h32(uint32_t x);

/* renderer (render.c) */
void render_init_stars(uint32_t seed);
void render_frame(void);
uint32_t run3_sky(void); /* background colour of the last frame (tests) */
int32_t run3_sky_visible(void); /* star pixels the tube did not cover (tests) */
/* the frame's projection, for the verifier: project a world point with the
   camera in force and read the screen position / depth back out */
void run3_stage_project(double x, double y, double z);
double run3_probe_x(void);
double run3_probe_y(void);
double run3_probe_d(void);
int32_t run3_space_visible(void); /* pixels the outside-the-tube layers wrote */
int32_t run3_space_survived(void); /* of those, how many the tube left showing */

/* hint route (engine -> renderer): a way to the level end, toggled with H */
void run3_hint_toggle(void);
int  run3_hint_on(void);
int  run3_hint_count(void);
int  run3_hint_row(int i);
double run3_hint_ring(int i);
void   run3_hint_env(double *maxdc, double *leap, double *leapdc); /* planner envelope (test) */

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
int  run3_map_scroll_x(void);          /* current horizontal pan (world x) */
int  run3_map_scroll_y(void);          /* current vertical pan (world y) */
void run3_map_scroll_xy(int dx, int dy); /* pan the map in 2D (drag/wheel/keys) */
void run3_map_scroll(int dx);          /* horizontal-only pan (legacy alias) */
void run3_map_scroll_delta(int dx);    /* alias */
void run3_map_center_on(int tun);      /* centre the view on a tunnel node */
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
void run3_map_node_pos(int tun, int *x, int *y);              /* tunnel node (path start) */
int  run3_map_hover_level(int mx, int my);        /* checkpoint lvl under cursor, -1 = node/none */
int  run3_map_selected_level(void);               /* selected checkpoint lvl, -1 = node/none */
void run3_map_set_best(int tun, int best);        /* furthest cleared count (unlocks dots) */
int  run3_map_best(int tun);                      /* furthest cleared count */
void run3_menu_click(int mx, int my); /* menu click: 0=play, 1=inf, etc */
int  run3_menu_hover(int mx, int my); /* menu hover result */
void run3_menu_select_char(int c);    /* select character on menu (atlas id) */
int  run3_menu_char(void);            /* currently selected char (atlas id) */
/* The selection screen shows the characters in the ORIGINAL game's registry
   order, not in this port's sprite-atlas order (see CHAR_MENU_ORDER in
   run3.c). These map between the two id spaces. */
int  run3_char_order(int pres);       /* presentation slot -> sprite-atlas id */
int  run3_char_pres(int atlas);       /* sprite-atlas id -> presentation slot */
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
void run3_stage_cam(double side, double lift);         /* staged camera POSITION,
                                                          tile-axis units -1..1 */
/* ==================== THE CUTSCENE SPEECH ENGINE ====================
 * The host hands over ONE FRAME's speech elements and the engine lays the frame
 * out and draws it — a bubble is a panel with its line in it, a label is bare
 * centred text, a connection is a band between two bubbles and a tail is the
 * arrow that points at whoever is speaking. Everything is in the original's own
 * terms (its `Speech` class, reachable from a scene as `dialog`):
 *
 *   kind   1 bubble, 2 label
 *   x, y   design units in the 2014 build's 3000 x 2000 space, offset from its
 *          centre. Both kinds carry them in that one space: the v1.13 build the
 *          bake reads instead halves the box to 1200 x 800, and copies the
 *          /2.5 into its bubble call sites while its label method divides
 *          internally - bake_cutscenes.py converts both back.
 *   size   the font as a fraction of the engine's default (the 2014 build's
 *          cutscene base sets that to 100 design units, its v1.13 counterpart
 *          to 40), so 1.0 is a normal line, 0.65 smaller.
 *   width  the wrap width in the same design units; <= 0 means "as wide as the
 *          text needs" (the original auto-sizes the field and clamps it to the
 *          stage).
 *   conn   the index of ANOTHER element of this frame to draw a band to, or -1.
 *   tail   the staged cast SLOT the line is spoken from, or -1. The engine asks
 *          that slot for its projected screen place and draws the arrow to it.
 *
 * The host writes each element's NUL-terminated text, sets its attributes, then
 * commits the frame; the engine draws the panels, the bands and the arrows.
 * There is no DOM dialog card on screen.
 */
#define RUN3_CUT_MAX 10      /* speech elements in one frame */
#define RUN3_CUT_TEXT 300    /* bytes per element's text */
char *run3_cut_title_buf(void);                                 /* 96 bytes */
char *run3_cut_text_buf(int32_t i);                             /* element i */
void  run3_cut_item(int32_t i, int32_t kind, double x, double y, double size,
                    double width, int32_t conn, int32_t tail);
void  run3_cut_frame(int32_t n, int32_t step, int32_t total, int32_t on);
/* one bubble, for callers that were here before the frame API existed */
void  run3_cut_show(double x, double y, int small, int shown, int step, int total, int on);
int32_t run3_cut_chars(void);                                   /* chars drawn (test) */
double run3_cam_pitch(void);                                  /* view pitch (rad) */
double run3_stage_liftf(void);                                /* (renderer use) */
double run3_stage_sidef(void);                                /* (renderer use) */
double run3_rot(void);                                        /* live view roll (test seam) */
double run3_rot_at(double rowAbs);                            /* roll at a row (test seam) */
double run3_roll_step(void);                                  /* quantized roll step 360/n (rad) */
int    run3_roll_is_facet(void);                              /* 1: roll is exactly a facet angle */
double run3_runner_rad(void);                                 /* runner's distance from the axis */
void   run3_runner_pt(double *px, double *py);                /* runner's UNIT tube-space wall point */
void   run3_runner_world(double *px, double *py);             /* runner's wall point, world units */
double run3_runner_world_x(void);                             /* runner x in the rolled view frame */
double run3_runner_world_y(void);                             /* runner y in the rolled view frame */
double run3_runner_lift(void);                                /* runner's vertical world offset */
double run3_jump(void);                                       /* height above the wall (test seam) */
double *run3_scratch(void);                                   /* scratch doubles for host tests */
double run3_runner_offset(void);                              /* 0: runner is centre-screen (test) */
/* the chase camera, placed by the engine in the rolled view frame and read by
   the renderer (see camera-spec.md) */
double run3_cam_x(void);                                      /* lateral pan */
double run3_cam_y(void);                                      /* vertical (follows the jump) */
double run3_cam_back(void);                                   /* distance behind the runner plane */
double run3_cam_off(void);                                    /* runner's distance below the camera */
/* the staged scene camera, the original's model: the host hands the AUTHORED
   position (original pixels) and rotation quaternion straight through —
   engine units ARE original pixels — and the renderer orients the whole frame
   from the quaternion. */
void   run3_stage_camera(double px, double py, double pz,
                         double qx, double qy, double qz, double qw);
double run3_stage_pos_x(void);   /* authored (x,y) turned into the port frame */
double run3_stage_pos_y(void);   /* = (y, -x) of the authored position */
double run3_stage_pos_z(void);   /* authored z as ABSOLUTE world depth (startZ + z), in world px */
double run3_stage_row_z(double zrow); /* a staged row as a camera-relative depth */
void   run3_stage_shot(double zpx, double zb, double frontRow); /* authored camera z + base */
double run3_stage_dist(void); /* the staged frame's shot distance (engine units) */
double run3_cast_ref(void); /* distance at which a cast sprite is cast_base_h() px */
double run3_tunnel_tile(int tun); /* a tunnel's own levels' tile width, in world px */
const double *run3_stage_quat(void); /* [x, y, z, w], normalised */
int    run3_stage_has_camera(void);  /* the scene set its own camera */
/* where the runner lands on screen through the real projection (render.c) */
void   run3_runner_screen(double *sx, double *sy);
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
int run3_tile_glow(int side, int rowAbs, int lane);        /* 1 = self-lit surface */
double run3_shake(int side, int rowAbs, int lane);        /* shake secs left */
int32_t run3_dislodged(void);                             /* crumbled tile count */
int32_t run3_is_inf(void);                                /* endless mode flag */

#endif
