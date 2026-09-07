/*
 * Flappy Bird — minimal WASM demo in freestanding C (no libc, no deps).
 *
 * The module owns the simulation and the pixel framebuffer. The host page is
 * only an I/O layer: it feeds input (flap) and the clock (step), then copies
 * the framebuffer to a <canvas>. All game state and drawing live here.
 *
 * Build from the repo root with the local Zig toolchain:
 *   zig/zig.exe cc -target wasm32-freestanding -O2 -nostdlib \
 *     -Wl,--no-entry -Wl,--export-memory \
 *     -Wl,--export=flappy_init -Wl,--export=flappy_flap \
 *     -Wl,--export=flappy_step -Wl,--export=flappy_score \
 *     -Wl,--export=flappy_state -Wl,--export=flappy_width \
 *     -Wl,--export=flappy_height -Wl,--export=flappy_buffer \
 *     -o flappy.wasm flappy.c
 *   (see build.sh)
 */

#include <stdint.h>

#define W 320
#define H 480

#define GROUND_H 80
#define GROUND_Y (H - GROUND_H)

#define PIPE_W 58
#define PIPE_GAP 150
#define PIPE_SPEED 95.0

#define BIRD_X 90
#define BIRD_R 13
#define FLAP_VY (-260.0)
#define GRAVITY 800.0
#define MAX_FALL 540.0

typedef enum {
  STATE_READY = 0, /* bird bobbing, waiting for first flap */
  STATE_PLAY = 1,  /* flying */
  STATE_DEAD = 2   /* fell or hit a pipe; flap to start over */
} state_t;

/* Framebuffer: one packed 0xAARRGGBB word per pixel (in exports.memory). */
static uint32_t fb[W * H];

/* Game state */
static state_t g_state;
static int32_t g_score;
static double g_timer;    /* drives the ready-state bobbing */
static double g_bird_y;   /* center y of the bird */
static double g_bird_vy;
static double g_pipe_x;   /* left edge of the pipe column */
static double g_pipe_cx;  /* center y of the pipe gap */
static uint8_t g_counted; /* scored on the current pipe yet? */
static uint32_t g_rng;

/* --------------------------- tiny helpers -------------------------------- */

static uint32_t rnd(void) {
  g_rng = g_rng * 1664525u + 1013904223u;
  return g_rng;
}

static uint32_t rgb(uint32_t r, uint32_t g, uint32_t b) {
  return 0xFF000000u | (r << 16) | (g << 8) | b;
}

static void px(int x, int y, uint32_t c) {
  if ((uint32_t)x < (uint32_t)W && (uint32_t)y < (uint32_t)H) fb[(uint32_t)y * W + (uint32_t)x] = c;
}

static void fill_rect(int x, int y, int w, int h, uint32_t c) {
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
    for (int dx = -r; dx <= r; dx++)
      if (dx * dx + dy * dy <= r2) px(cx + dx, cy + dy, c);
}

/* Bhaskara I sine approximation, valid over [-pi, pi]. */
static double sin_approx(double x) {
  const double pi = 3.141592653589793;
  while (x > pi) x -= 2.0 * pi;
  while (x < -pi) x += 2.0 * pi;
  double ax = x < 0 ? -x : x;
  return (16.0 * x * (pi - ax)) / (5.0 * pi * pi - 4.0 * x * x);
}

static void draw_frame(void); /* forward decl */

/* --------------------------- world --------------------------------------- */

static void respawn_pipe(void) {
  int half = PIPE_GAP / 2;
  int min_c = 80 + half;
  int max_c = GROUND_Y - 20 - half;
  if (max_c <= min_c) max_c = min_c + 10;
  g_pipe_x = (double)W + 20.0;
  g_pipe_cx = (double)(min_c + (int)(rnd() % (uint32_t)(max_c - min_c + 1)));
  g_counted = 0;
}

static void reset_state(void) {
  g_state = STATE_READY;
  g_score = 0;
  g_timer = 0.0;
  g_bird_y = 250.0;
  g_bird_vy = 0.0;
  respawn_pipe();
}

/* Generic circle-vs-rectangle test (AABB). */
static int circle_hits_rect(double cx, double cy, double r,
                            double rx, double ry, double rw, double rh) {
  double nx = cx < rx ? rx : (cx > rx + rw ? rx + rw : cx);
  double ny = cy < ry ? ry : (cy > ry + rh ? ry + rh : cy);
  double dx = cx - nx;
  double dy = cy - ny;
  return dx * dx + dy * dy <= r * r;
}

static int circle_hits_pipe(double cy) {
  double half = (double)PIPE_GAP / 2.0;
  double top_h = g_pipe_cx - half;         /* top pipe spans y in [0, top_h]   */
  double bot_y = g_pipe_cx + half;         /* bottom pipe starts here          */
  if (top_h > 0.0 && circle_hits_rect((double)BIRD_X, cy, (double)BIRD_R,
                                      g_pipe_x, 0.0, (double)PIPE_W, top_h)) return 1;
  if (bot_y < (double)GROUND_Y && circle_hits_rect((double)BIRD_X, cy, (double)BIRD_R,
                                                   g_pipe_x, bot_y, (double)PIPE_W,
                                                   (double)GROUND_Y - bot_y)) return 1;
  return 0;
}

/* --------------------------- exported API -------------------------------- */

void flappy_init(uint32_t seed) {
  g_rng = seed ? seed : 1u;
  reset_state();
}

/* Host calls this on flap: click / space / tap. */
void flappy_flap(void) {
  if (g_state == STATE_READY) {
    g_state = STATE_PLAY;
    g_bird_vy = FLAP_VY;
  } else if (g_state == STATE_PLAY) {
    g_bird_vy = FLAP_VY;
  } else { /* dead: start a new round */
    reset_state();
  }
}

/* Advance the simulation by dt seconds, then redraw the framebuffer. */
void flappy_step(double dt) {
  if (dt <= 0.0) dt = 1.0 / 60.0;
  if (dt > 0.1) dt = 0.1;
  g_timer += dt;

  if (g_state == STATE_READY) {
    g_bird_y = 250.0 + 10.0 * sin_approx(g_timer * 3.0);
  } else if (g_state == STATE_PLAY) {
    g_bird_vy += GRAVITY * dt;
    if (g_bird_vy > MAX_FALL) g_bird_vy = MAX_FALL;
    g_bird_y += g_bird_vy * dt;
    if (g_bird_y < (double)BIRD_R) { g_bird_y = (double)BIRD_R; g_bird_vy = 0.0; }

    g_pipe_x -= PIPE_SPEED * dt;
    if (g_pipe_x < -(double)PIPE_W) respawn_pipe();

    if (!g_counted && g_pipe_x + (double)PIPE_W < (double)(BIRD_X - BIRD_R)) {
      g_counted = 1;
      g_score++;
    }

    if (g_bird_y + (double)BIRD_R >= (double)GROUND_Y) {
      g_state = STATE_DEAD;
      g_bird_y = (double)(GROUND_Y - BIRD_R);
    } else if (circle_hits_pipe(g_bird_y)) {
      g_state = STATE_DEAD;
    }
  } else { /* STATE_DEAD: keep falling */
    g_bird_vy += GRAVITY * dt;
    if (g_bird_vy > MAX_FALL) g_bird_vy = MAX_FALL;
    g_bird_y += g_bird_vy * dt;
    if (g_bird_y > (double)(GROUND_Y - BIRD_R)) g_bird_y = (double)(GROUND_Y - BIRD_R);
  }

  draw_frame();
}

int32_t flappy_score(void) { return g_score; }
int32_t flappy_state(void) { return (int32_t)g_state; }
int32_t flappy_width(void) { return W; }
int32_t flappy_height(void) { return H; }
uint32_t *flappy_buffer(void) { return fb; }

/* --------------------------- drawing -------------------------------------- */

static void draw_pipe_rect(int x, int y, int h, uint32_t dark, uint32_t light) {
  if (h <= 0) return;
  fill_rect(x, y, PIPE_W, h, dark);                 /* border */
  fill_rect(x + 3, y + 3, PIPE_W - 6, h - 6, light); /* inner */
}

static void draw_frame(void) {
  uint32_t sky = rgb(112, 197, 206);
  for (int i = 0; i < W * H; i++) fb[i] = sky;

  /* pipe column */
  int half = PIPE_GAP / 2;
  int top_h = (int)g_pipe_cx - half;
  int bot_y = (int)g_pipe_cx + half;
  int x = (int)g_pipe_x;
  if (x + PIPE_W > 0) {
    uint32_t dark = rgb(58, 128, 43);
    uint32_t light = rgb(96, 176, 60);
    if (top_h > 0) draw_pipe_rect(x, 0, top_h, dark, light);
    if (bot_y < GROUND_Y) draw_pipe_rect(x, bot_y, GROUND_Y - bot_y, dark, light);
  }

  /* ground */
  fill_rect(0, GROUND_Y, W, GROUND_H, rgb(222, 205, 120));
  fill_rect(0, GROUND_Y, W, 4, rgb(108, 160, 66));
  for (int gx = 0; gx < W; gx += 24) fill_rect(gx, GROUND_Y + 16, 10, 3, rgb(190, 170, 90));

  /* bird */
  int bx = BIRD_X;
  int by = (int)g_bird_y;
  fill_circle(bx, by, BIRD_R, rgb(245, 205, 60));     /* body */
  fill_circle(bx + 3, by - 4, 3, rgb(255, 255, 255)); /* eye */
  fill_circle(bx + 4, by - 4, 1, rgb(40, 40, 40));    /* pupil */
  fill_rect(bx + 6, by - 2, 9, 4, rgb(240, 120, 40)); /* beak */
  fill_circle(bx - 7, by + 4, 5, rgb(232, 168, 45));  /* wing */
}
