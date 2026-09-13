/*
 * render_int.h - internals shared between the renderer's translation units.
 *
 * The engine is split so no single file has to hold everything:
 *   math.c    trig / sqrt / atan / hash (the wasm build has no libm)
 *   gfx.c     the software framebuffer and its drawing primitives
 *   render.c  camera, sky, tube, staged cutscene cast, font, map, menu
 *   run3.c    simulation, state and the exported host API
 *
 * run3.h is the host API (what app.js calls). Everything in here is internal
 * to the engine and may change with the renderer.
 */
#ifndef RUN3_RENDER_INT_H
#define RUN3_RENDER_INT_H

#include <stdint.h>
#include "run3.h"

/* ---------------- gfx.c: the framebuffer ---------------- */
extern uint32_t fb[W * H];
extern uint32_t g_sky; /* colour the last frame's background was cleared to */
uint32_t *run3_buffer(void);
uint32_t run3_sky(void);

void fill_rect(int x, int y, int w, int h, uint32_t c);
void fill_quad(double x0, double y0, double x1, double y1,
               double x2, double y2, double x3, double y3, uint32_t c);
void fill_shadow(int cx, int cy, int rx, int ry, double dark);
void blit_sprite(int dx, int dy, int dw, int dh,
                 const uint32_t *pix, int sw, int sh, double alpha);
void blit_sprite_mirrored(int dx, int dy, int dw, int dh,
                          const uint32_t *pix, int sw, int sh, double alpha);
void fill_circle(int cx, int cy, int r, uint32_t c);
void stroke_circle(int cx, int cy, int r, uint32_t c);
void stroke_rect(int x, int y, int w, int h, uint32_t c);
void draw_line(int x0, int y0, int x1, int y1, uint32_t c);

/* ---------------- render.c: camera, tube, baked art ---------------- */
/* Camera state, live for the frame. The space layers project with the same
   pitch/roll/origin as the tube, so everything outside shares the tunnel's
   own orientation instead of drifting on its own. */
extern double cam_pitch, cam_back, cam_out, view_z, near_z;

/* the baked art (assets_data.h) is only compiled into render.c, so the other
   renderer files reach it through this accessor */
const uint32_t *assets_tex(int id, int *w, int *h);
/* a tunnel theme's main wall colour (render.c's palette) */
uint32_t theme_main(int th);

/* ---------------- space.c: what is outside the tube ---------------- */
/* Draw order in a frame is: stars, then the other tunnels branching off,
   then the wormhole, then the player's own tube, then the player. Everything
   here is drawn BEFORE the tube, so the tube's wall (and its holes) occlude
   it exactly as the opaque tunnel should. */
void space_outer(void);      /* the neighbouring tunnels, in space */
void space_wormhole(void);   /* the wormhole at the far end of the bore */
void space_count_visible(void);   /* survivors, once the tube is drawn */
int32_t run3_space_visible(void); /* pixels the space layers wrote (tests) */
int32_t run3_space_survived(void); /* pixels of them the tube left showing */

#endif /* RUN3_RENDER_INT_H */
