/*
 * Run 3-style pseudo-3D runner — a WASM demo in freestanding C (no libc, no deps).
 *
 * Original implementation. Community recreations of Player03's "Run 3"
 * (lcrol77/run-clone, bigjackson/Run3Source) were consulted only as design
 * reference for the general model: auto-run along a path of floating tiles,
 * jump gaps, clear barriers, collect cells, reach the finish. No code, assets,
 * or level data were copied; every level below is original.
 *
 * The module owns simulation + framebuffer; the host page is only an I/O layer.
 * Build with build.sh.
 */

#include <stdint.h>

#define W 640
#define H 360

#define SEG_LEN 3.0     /* world units per path segment */
#define TILE_HW 1.3     /* tile half-width in world units */
#define CAM_H 2.4       /* camera height above the tile plane */
#define CAM_BACK 8.0    /* camera sits this far behind the runner */
#define FOCAL 300.0     /* projection focal length in px */
#define HORIZON 118     /* screen y of the vanishing line */
#define NEAR 1.2        /* near clip distance */

#define WALL_H 1.0      /* barrier height that must be jumped */
#define JUMP_VY 8.8
#define GRAV 20.0
#define MAX_FALL 14.0

enum { T_FLOOR = '.', T_GAP = ' ', T_WALL = '|', T_CELL = 'o', T_FINISH = 'F' };
enum { S_READY = 0, S_RUN = 1, S_DEAD = 2, S_CLEAR = 3 };

static uint32_t fb[W * H]; /* 0xAARRGGBB, exported via memory */

/* ---------- original level courses ---------- */

typedef struct {
  const char *map;
  double speed;
  int theme;
} level_t;

static const char MAP_1[] =
    "...........o..........o.........o..........|.........o.....o.......o....F";
static const char MAP_2[] =
    ".......|....o....o....  ....o...|....o.....  ....|....o....|.....o.....F";
static const char MAP_3[] =
    ".....o..o...|....o...o....|...o...  ...o....|....o...o....|....o....o.F";
static const char MAP_4[] =
    "......o.....|....  ....o....|...o...o...  ...|....o.....o...|....o....F";
static const char MAP_5[] =
    "..o...|...o....o...  ...|....o.....|...o...  ....o....|...o....o..F";
static const char MAP_6[] =
    ".o..o..|...o....o...|...o...o....  ....o..o....|....o....o...|....o...F";
static const char MAP_7[] =
    "...|...o...|...o....  ....o...o...|...o....o....|..o....o...|...o....F";
static const char MAP_8[] =
    "o..|...o....|....o....o....|...o.....|...o....o...   ...o..o....|...o....F";

static const level_t LEVELS[] = {
    {MAP_1, 7.0, 0}, {MAP_2, 8.0, 1}, {MAP_3, 8.5, 2}, {MAP_4, 9.0, 3},
    {MAP_5, 9.5, 4}, {MAP_6, 10.0, 0}, {MAP_7, 10.5, 1}, {MAP_8, 11.0, 2},
};
#define LEVEL_COUNT ((int)(sizeof(LEVELS) / sizeof(LEVELS[0])))

/* ---------- game state ---------- */

static int g_state;
static int g_level;
static double g_pz;    /* position along the path */
static double g_py;    /* height above the tile plane */
static double g_pvy;
static double g_cells; /* collected cells */
static int g_seg_seen;
static uint32_t g_rng;

#define STARS 70
static int star_x[STARS], star_y[STARS], star_s[STARS];
static uint32_t star_c[STARS];

static uint32_t rnd(void) {
  g_rng = g_rng * 1664525u + 1013904223u;
  return g_rng;
}

#define rgb(r, g, b) (0xFF000000u | ((uint32_t)(r) << 16) | ((uint32_t)(g) << 8) | (uint32_t)(b))

static const char *active_map(void) { return LEVELS[g_level].map; }

static int map_len(int idx) {
  static const int LENS[LEVEL_COUNT] = {
      (int)(sizeof(MAP_1) - 1), (int)(sizeof(MAP_2) - 1), (int)(sizeof(MAP_3) - 1),
      (int)(sizeof(MAP_4) - 1), (int)(sizeof(MAP_5) - 1), (int)(sizeof(MAP_6) - 1),
      (int)(sizeof(MAP_7) - 1), (int)(sizeof(MAP_8) - 1)};
  return LENS[idx];
}

static void fill_rect(int x, int y, int w, int h, uint32_t c) {
  if (w <= 0 || h <= 0) return;
  int x0 = x < 0 ? 0 : x;
  int y0 = y < 0 ? 0 : y;
  int x1 = x + w; if (x1 > W) x1 = W;
  int y1 = y + h; if (y1 > H) y1 = H;
  for (int yy = y0; yy < y1; yy++)
    for (int xx = x0; xx < x1; xx++)
      fb[(uint32_t)yy * W + (uint32_t)xx] = c;
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

/* ---------- exported API ---------- */

void run3_init(uint32_t seed);
void run3_level(int idx);
void run3_flap(void);
void run3_step(double dt);
static void draw(void);

void run3_init(uint32_t seed) {
  g_rng = seed ? seed : 1u;
  for (int i = 0; i < STARS; i++) {
    star_x[i] = (int)(rnd() % W);
    star_y[i] = (int)(rnd() % (HORIZON + 20));
    star_s[i] = (int)(rnd() % 2) + 1;
    star_c[i] = rgb(180 + (rnd() % 60), 180 + (rnd() % 60), 220 + (rnd() % 35));
  }
  run3_level(0);
}

void run3_level(int idx) {
  if (idx < 0) idx = 0;
  if (idx >= LEVEL_COUNT) idx = LEVEL_COUNT - 1;
  g_level = idx;
  g_state = S_READY;
  g_pz = 0.0;
  g_py = 0.0;
  g_pvy = 0.0;
  g_cells = 0.0;
  g_seg_seen = -1;
}

void run3_flap(void) {
  if (g_state == S_READY) {
    g_state = S_RUN;
  } else if (g_state == S_RUN) {
    if (g_py <= 0.001) { g_py = 0.0; g_pvy = JUMP_VY; }
  } else if (g_state == S_DEAD) {
    run3_level(g_level);
  } else { /* S_CLEAR: advance to next level, wrap around */
    run3_level(g_level + 1 < LEVEL_COUNT ? g_level + 1 : 0);
  }
}

static void die(void) { g_state = S_DEAD; }

void run3_step(double dt) {
  if (dt <= 0.0) dt = 1.0 / 60.0;
  if (dt > 0.1) dt = 0.1;

  if (g_state == S_READY) {
    g_py = 0.0;
  } else if (g_state == S_RUN) {
    double speed = LEVELS[g_level].speed;
    int len = map_len(g_level);
    g_pz += speed * dt;

    /* vertical motion */
    if (g_py > 0.0 || g_pvy != 0.0) {
      g_pvy -= GRAV * dt;
      if (g_pvy < -MAX_FALL) g_pvy = -MAX_FALL;
      g_py += g_pvy * dt;
      if (g_py < 0.0) g_py = 0.0;
    }

    int idx = (int)(g_pz / SEG_LEN);
    const char *map = active_map();
    char t = (idx >= 0 && idx < len) ? map[idx] : T_FLOOR;

    /* crossed into a new segment */
    if (idx != g_seg_seen) {
      g_seg_seen = idx;
      if (t == T_CELL) g_cells += 1.0;
      if (t == T_FINISH) g_state = S_CLEAR;
    }

    /* hazards while inside the segment */
    if (g_state == S_RUN) {
      if (t == T_GAP) {
        if (g_py <= 0.001 && g_pvy <= 0.0) die(); /* walked off the edge */
      } else if (t == T_WALL) {
        if (g_py <= WALL_H) die(); /* hit the barrier */
      } else if (t != T_GAP && g_py <= 0.001 && g_pvy <= 0.0) {
        g_py = 0.0; /* settled on a floor */
        g_pvy = 0.0;
      }
    }

    /* finish line */
    if (g_state == S_RUN) {
      double finish_z = (double)(len - 1) * SEG_LEN + SEG_LEN * 0.6;
      if (g_pz >= finish_z) g_state = S_CLEAR;
    }
  } else if (g_state == S_DEAD) {
    g_pvy -= GRAV * dt;
    if (g_pvy < -MAX_FALL) g_pvy = -MAX_FALL;
    g_py += g_pvy * dt;
    if (g_py < -8.0) g_py = -8.0;
  }

  draw();
}

int32_t run3_state(void) { return g_state; }
int32_t run3_level_idx(void) { return g_level; }
int32_t run3_cells(void) { return (int32_t)g_cells; }
int32_t run3_level_count(void) { return LEVEL_COUNT; }
double run3_progress(void) {
  int len = map_len(g_level);
  double total = (double)len * SEG_LEN;
  double p = g_pz / total;
  return p < 0.0 ? 0.0 : (p > 1.0 ? 1.0 : p);
}
int32_t run3_width(void) { return W; }
int32_t run3_height(void) { return H; }
uint32_t *run3_buffer(void) { return fb; }

/* ---------- rendering ---------- */

static char seg_type_at(int idx); /* fwd decl */

static const uint32_t THEME_BG[5] = {
    rgb(14, 20, 40), rgb(26, 13, 42), rgb(8, 24, 34),
    rgb(34, 24, 10), rgb(12, 30, 22)};
static const uint32_t THEME_TILE[5] = {
    rgb(120, 170, 225), rgb(215, 135, 215), rgb(85, 200, 170),
    rgb(235, 170, 90), rgb(150, 210, 120)};
static const uint32_t THEME_TILE_DARK[5] = {
    rgb(72, 112, 160), rgb(150, 82, 150), rgb(48, 140, 118),
    rgb(180, 122, 58), rgb(100, 160, 80)};

/* project world (lateral x, height y) at depth d (meters ahead of the camera)
   onto screen space */
static int sx(double x, double d) { return (int)((double)W / 2.0 + x * FOCAL / d); }
static int sy(double y, double d) { return (int)((double)HORIZON + (CAM_H - y) * FOCAL / d); }

static void draw(void) {
  int th = LEVELS[g_level].theme % 5;
  uint32_t bg = THEME_BG[th];

  for (int i = 0; i < W * H; i++) fb[i] = bg;
  for (int s = 0; s < STARS; s++)
    fill_rect(star_x[s], star_y[s], star_s[s], star_s[s], star_c[s]);

  double cam_z = g_pz - CAM_BACK;
  double halfw = TILE_HW;
  double halfd = SEG_LEN / 2.0;

  /* tiles, far to near */
  int idx = (int)((cam_z + 90.0) / SEG_LEN);
  if (idx > 300) idx = 300;
  for (; idx >= 0; idx--) {
    double zc = ((double)idx + 0.5) * SEG_LEN;
    double d = zc - cam_z;
    if (d < NEAR) continue;
    char t = seg_type_at(idx);
    if (t == T_GAP) continue;

    double df = d - halfd; /* front edge depth */
    double db = d + halfd; /* back edge depth  */
    if (df < NEAR) df = NEAR;

    int x0 = sx(-halfw, d);
    int x1 = sx(halfw, d);
    int w = x1 - x0;
    int y_top = sy(0.0, db);   /* top (far edge) of the flat tile on screen */
    int y_bot = sy(0.0, df);   /* bottom (near edge) */
    int h = y_bot - y_top;
    if (h < 2) h = 2;

    uint32_t col = THEME_TILE[th];
    uint32_t dark = THEME_TILE_DARK[th];
    if (t == T_WALL) { col = rgb(205, 75, 75); dark = rgb(140, 42, 42); }
    else if (t == T_CELL) { col = rgb(242, 214, 60); dark = rgb(184, 150, 32); }
    else if (t == T_FINISH) { col = rgb(120, 242, 150); dark = rgb(72, 176, 96); }

    fill_rect(x0, y_top, w, h, col);
    fill_rect(x0, y_top, w, (h > 3 ? 3 : h), dark);      /* back shading  */
    fill_rect(x0, y_bot - 3, w, 3, dark);                /* front edge     */

    if (t == T_WALL) {
      int wpx = (int)((double)TILE_HW * 2.0 * FOCAL / df);
      int wh = (int)(WALL_H * FOCAL / df);
      int wy = sy(WALL_H, df);
      int wx = sx(-TILE_HW, df);
      if (wx < x0) wx = x0;
      int ww = wpx - (wx - x0);
      fill_rect(wx, wy, ww, wh, dark);
      fill_rect(wx + 2, wy + 2, ww - 4 > 0 ? ww - 4 : 0, wh - 4 > 0 ? wh - 4 : 0, col);
    } else if (t == T_CELL) {
      /* cell bob floats just above the tile */
      double cy = 0.75 + 0.12 * (idx % 3);
      int r = (int)(0.11 * FOCAL / d) + 1;
      int cxp = sx(0.0, d);
      int cyp = sy(cy, d);
      fill_circle(cxp, cyp, r + 1, dark);
      fill_circle(cxp, cyp, r, col);
    }
  }

  /* runner */
  {
    double d = CAM_BACK; /* the runner is always CAM_BACK ahead of the camera */
    double feet_y = sy(0.0, d);       /* ground line at the runner's depth */
    int gy = (int)(feet_y - g_py * FOCAL / d);
    int gx = sx(0.0, d);
    int body = (int)(0.42 * FOCAL / d) + 1;
    uint32_t skin = rgb(240, 210, 120);
    uint32_t suit = rgb(70, 130, 240);

    if (g_state == S_DEAD) {
      fill_circle(gx, gy - body, body, rgb(150, 40, 40)); /* fallen runner */
    } else {
      fill_circle(gx, gy - body, body + 2, rgb(40, 40, 60));   /* outline  */
      fill_circle(gx, gy - body, body, suit);                  /* suit     */
      fill_circle(gx + body / 2, gy - body - body / 2, body / 2, skin); /* head */
      fill_circle(gx + body / 2 + 1, gy - body - body / 2 - 1, 1, rgb(30, 30, 40)); /* eye */
    }
  }
}

static char seg_type_at(int idx) {
  int len = map_len(g_level);
  if (idx < 0 || idx >= len) return T_FLOOR;
  return active_map()[idx];
}
