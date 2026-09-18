/*
 * gfx.c - the software framebuffer and its drawing primitives.
 *
 * Everything is rasterised into one uint32 ARGB buffer that the host blits to
 * a canvas. There is no depth buffer: the tube is drawn back to front (far rows
 * first), and the sky goes down before it. All primitives clip to the buffer.
 */
#include "render_int.h"

/* Sized for the LARGEST viewport, not the current one: the view width changes
   with the window (run3_resize), and only the first W*H entries are used, rows
   at stride W, so the host reads a contiguous W*H region from the start. */
uint32_t fb[MAXW * MAXH];
uint32_t g_sky = 0; /* background colour of the last rendered frame */

uint32_t *run3_buffer(void) { return fb; }
uint32_t run3_sky(void) { return g_sky; } /* background of the last frame */

void fill_rect(int x, int y, int w, int h, uint32_t c) {
  int x0 = x < 0 ? 0 : x; int y0 = y < 0 ? 0 : y;
  int x1 = x + w; if (x1 > W) x1 = W;
  int y1 = y + h; if (y1 > H) y1 = H;
  for (int yy = y0; yy < y1; yy++)
    for (int xx = x0; xx < x1; xx++)
      fb[(uint32_t)yy * W + (uint32_t)xx] = c;
}

/* convex quad, scanline filled (the tube's walls are quads) */
void fill_quad(double x0, double y0, double x1, double y1,
               double x2, double y2, double x3, double y3, uint32_t c) {
  double xs[4] = { x0, x1, x2, x3 }, ys[4] = { y0, y1, y2, y3 };
  int miny = (int)ys[0], maxy = (int)ys[0];
  for (int i = 1; i < 4; i++) {
    if ((int)ys[i] < miny) miny = (int)ys[i];
    if ((int)ys[i] > maxy) maxy = (int)ys[i];
  }
  if (miny < 0) miny = 0; if (maxy >= H) maxy = H - 1;
  if (miny > maxy) return;
  for (int y = miny; y <= maxy; y++) {
    double hits[4]; int nh = 0;
    for (int e = 0; e < 4; e++) {
      double xa = xs[e], ya = ys[e], xb = xs[(e+1)&3], yb = ys[(e+1)&3];
      if ((ya <= (double)y && yb > (double)y) || (yb <= (double)y && ya > (double)y))
        hits[nh++] = xa + ((double)y - ya) * (xb - xa) / (yb - ya);
    }
    if (nh == 2) {
      double lo = hits[0], hi = hits[1];
      if (lo > hi) { double t = lo; lo = hi; hi = t; }
      int x0i = (int)lo + 1, x1i = (int)hi;
      if (x0i < 0) x0i = 0; if (x1i >= W) x1i = W - 1;
      if (x0i <= x1i) for (int x = x0i; x <= x1i; x++) fb[(uint32_t)y * W + (uint32_t)x] = c;
    }
  }
}

/* simple polygon, even-odd scanline filled. Unlike fill_quad this takes any
   number of edges and may be concave, which is what the speech engine's
   sampled bezier outlines are (a bubble's rim, a tapered band, a tail). */
void fill_poly(const double *xs, const double *ys, int n, uint32_t c) {
  if (n < 3) return;
  double ymin = ys[0], ymax = ys[0];
  for (int i = 1; i < n; i++) {
    if (ys[i] < ymin) ymin = ys[i];
    if (ys[i] > ymax) ymax = ys[i];
  }
  int y0 = (int)ymin, y1 = (int)ymax + 1;
  if (y0 < 0) y0 = 0;
  if (y1 > H - 1) y1 = H - 1;
  if (y0 > y1) return;
  for (int y = y0; y <= y1; y++) {
    double yc = (double)y + 0.5;
    /* even-odd: fill between successive crossings, so a concave outline does
       not smear across its own notches */
    double cross[64];
    int nc = 0;
    for (int e = 0; e < n && nc < 64; e++) {
      double ya = ys[e], yb = ys[(e + 1) % n];
      if ((ya <= yc && yb > yc) || (yb <= yc && ya > yc)) {
        double xa = xs[e], xb = xs[(e + 1) % n];
        cross[nc++] = xa + (yc - ya) * (xb - xa) / (yb - ya);
      }
    }
    if (nc < 2) continue;
    for (int a = 1; a < nc; a++) {
      double v = cross[a];
      int b = a - 1;
      while (b >= 0 && cross[b] > v) { cross[b + 1] = cross[b]; b--; }
      cross[b + 1] = v;
    }
    for (int a = 0; a + 1 < nc; a += 2) {
      int s0 = (int)cross[a] + 1, s1 = (int)cross[a + 1];
      if (s0 < 0) s0 = 0;
      if (s1 >= W) s1 = W - 1;
      if (s0 > s1) continue;
      uint32_t *row = fb + (uint32_t)y * W;
      for (int x = s0; x <= s1; x++) row[x] = c;
    }
  }
}

void fill_shadow(int cx, int cy, int rx, int ry, double dark) {
  if (rx < 1) rx = 1; if (ry < 1) ry = 1;
  int rxx = rx * rx, ryy = ry * ry;
  for (int dy = -ry; dy <= ry; dy++)
    for (int dx = -rx; dx <= rx; dx++) {
      int x = cx + dx, y = cy + dy;
      if ((uint32_t)x >= (uint32_t)W || (uint32_t)y >= (uint32_t)H) continue;
      if (dx * dx * ryy + dy * dy * rxx > rxx * ryy) continue;
      uint32_t c = fb[(uint32_t)y * W + (uint32_t)x];
      uint32_t nr = (uint32_t)((double)((c>>16)&0xff) * (1.0-dark));
      uint32_t ng = (uint32_t)((double)((c>>8)&0xff) * (1.0-dark));
      uint32_t nb = (uint32_t)((double)(c&0xff) * (1.0-dark));
      fb[(uint32_t)y * W + (uint32_t)x] = (c & 0xff000000u) | (nr<<16) | (ng<<8) | nb;
    }
}

/* blit sprite with alpha, scaled to (dw x dh) — nearest neighbor */
void blit_sprite(int dx, int dy, int dw, int dh,
                 const uint32_t *pix, int sw, int sh, double alpha) {
  if (dw <= 0 || dh <= 0 || sw <= 0 || sh <= 0 || !pix) return;
  for (int y = 0; y < dh; y++) {
    int sy = (y * sh) / dh; if (sy >= sh) sy = sh - 1;
    int screenY = dy + y; if (screenY < 0 || screenY >= H) continue;
    for (int x = 0; x < dw; x++) {
      int sx = (x * sw) / dw; if (sx >= sw) sx = sw - 1;
      int screenX = dx + x; if (screenX < 0 || screenX >= W) continue;
      uint32_t src = pix[sy * sw + sx];
      unsigned int sa = (src >> 24);
      if (sa < 10) continue;
      double a = (double)sa / 255.0 * alpha; if (a > 1.0) a = 1.0;
      uint32_t dst = fb[(uint32_t)screenY * W + (uint32_t)screenX];
      int dr = (int)((dst>>16)&0xff), dg = (int)((dst>>8)&0xff), db = (int)(dst&0xff);
      int sr = (int)((src>>16)&0xff), sg = (int)((src>>8)&0xff), sb = (int)(src&0xff);
      fb[(uint32_t)screenY * W + (uint32_t)screenX] = 0xFF000000u |
        ((uint32_t)(int)(dr+(sr-dr)*a) << 16) |
        ((uint32_t)(int)(dg+(sg-dg)*a) << 8) |
        (uint32_t)(int)(db+(sb-db)*a);
    }
  }
}

/* blit a mirrored (horizontally flipped) sprite — nearest neighbor */
void blit_sprite_mirrored(int dx, int dy, int dw, int dh,
                          const uint32_t *pix, int sw, int sh, double alpha) {
  if (dw <= 0 || dh <= 0 || sw <= 0 || sh <= 0 || !pix) return;
  for (int y = 0; y < dh; y++) {
    int sy = (y * sh) / dh; if (sy >= sh) sy = sh - 1;
    int screenY = dy + y; if (screenY < 0 || screenY >= H) continue;
    for (int x = 0; x < dw; x++) {
      int sx = sw - 1 - (x * sw) / dw; if (sx < 0) sx = 0;
      int screenX = dx + x; if (screenX < 0 || screenX >= W) continue;
      uint32_t src = pix[sy * sw + sx];
      unsigned int sa = (src >> 24);
      if (sa < 10) continue;
      double a = (double)sa / 255.0 * alpha; if (a > 1.0) a = 1.0;
      uint32_t dst = fb[(uint32_t)screenY * W + (uint32_t)screenX];
      int dr = (int)((dst>>16)&0xff), dg = (int)((dst>>8)&0xff), db = (int)(dst&0xff);
      int sr = (int)((src>>16)&0xff), sg = (int)((src>>8)&0xff), sb = (int)(src&0xff);
      fb[(uint32_t)screenY * W + (uint32_t)screenX] = 0xFF000000u |
        ((uint32_t)(int)(dr+(sr-dr)*a) << 16) |
        ((uint32_t)(int)(dg+(sg-dg)*a) << 8) |
        (uint32_t)(int)(db+(sb-db)*a);
    }
  }
}

/* blit a sprite ROTATED by `ang` about an anchor. `ang` is the screen rotation
   of the sprite's own up axis (0 = upright, exactly what blit_sprite draws) and
   `centre` picks the anchor: 0 = the sprite's feet, the way the cast is drawn
   (the projected point is where the character stands), 1 = its centre, the way
   the panels are drawn. Inverse-mapped, nearest neighbour: at ang = 0 this is
   pixel for pixel the same blit as blit_sprite, so a frame with no roll in it
   is untouched. */
void blit_sprite_rot(double fx, double fy, int dw, int dh, double ang,
                     const uint32_t *pix, int sw, int sh, double alpha,
                     int mirror, int centre) {
  if (dw <= 0 || dh <= 0 || sw <= 0 || sh <= 0 || !pix) return;
  double c = scos(ang), s = ssin(ang);
  int ax = (int)fx, ay = (int)fy;
  double hw = dw * 0.5, v0 = centre ? -hw : -(double)dh, v1 = centre ? hw : 0.0;
  /* the rotated rect's screen bounding box */
  double cs[4] = { -hw, hw, hw, -hw }, vs[4] = { v0, v0, v1, v1 };
  double bx0 = 1e18, by0 = 1e18, bx1 = -1e18, by1 = -1e18;
  for (int i = 0; i < 4; i++) {
    double X = (double)ax + cs[i] * c - vs[i] * s;
    double Y = (double)ay + cs[i] * s + vs[i] * c;
    if (X < bx0) bx0 = X; if (X > bx1) bx1 = X;
    if (Y < by0) by0 = Y; if (Y > by1) by1 = Y;
  }
  int ix0 = (int)(bx0 - 1.0), ix1 = (int)(bx1 + 1.0);
  int iy0 = (int)(by0 - 1.0), iy1 = (int)(by1 + 1.0);
  if (ix0 < 0) ix0 = 0; if (iy0 < 0) iy0 = 0;
  if (ix1 > W - 1) ix1 = W - 1; if (iy1 > H - 1) iy1 = H - 1;
  if (ix0 > ix1 || iy0 > iy1) return;
  for (int Y = iy0; Y <= iy1; Y++) {
    double ry = (double)Y - (double)ay;
    for (int X = ix0; X <= ix1; X++) {
      double rx = (double)X - (double)ax;
      /* back into the sprite's own frame */
      double u = c * rx + s * ry;
      double v = -s * rx + c * ry;
      if (u < -hw || u >= hw || v < v0 || v >= v1) continue;
      int sx = (int)((u + hw) * (double)sw / (double)dw);
      int sy = (int)((v - v0) * (double)sh / (double)dh);
      if (sx < 0) sx = 0; if (sx > sw - 1) sx = sw - 1;
      if (sy < 0) sy = 0; if (sy > sh - 1) sy = sh - 1;
      if (mirror) sx = sw - 1 - sx;
      uint32_t src = pix[sy * sw + sx];
      unsigned int sa = (src >> 24);
      if (sa < 10) continue;
      double a = (double)sa / 255.0 * alpha; if (a > 1.0) a = 1.0;
      uint32_t dst = fb[(uint32_t)Y * W + (uint32_t)X];
      int dr = (int)((dst>>16)&0xff), dg = (int)((dst>>8)&0xff), db = (int)(dst&0xff);
      int sr = (int)((src>>16)&0xff), sg = (int)((src>>8)&0xff), sb = (int)(src&0xff);
      fb[(uint32_t)Y * W + (uint32_t)X] = 0xFF000000u |
        ((uint32_t)(int)(dr+(sr-dr)*a) << 16) |
        ((uint32_t)(int)(dg+(sg-dg)*a) << 8) |
        (uint32_t)(int)(db+(sb-db)*a);
    }
  }
}

void fill_circle(int cx, int cy, int r, uint32_t c) {
  for (int dy = -r; dy <= r; dy++) {
    int y = cy + dy;
    if (y < 0 || y >= H) continue;
    int dxmax = (int)ssqrt((double)(r*r - dy*dy));
    for (int dx = -dxmax; dx <= dxmax; dx++) {
      int x = cx + dx;
      if (x < 0 || x >= W) continue;
      fb[(uint32_t)y * W + (uint32_t)x] = c;
    }
  }
}

void stroke_circle(int cx, int cy, int r, uint32_t c) {
  for (int a = 0; a < 360; a++) {
    double rad = (double)a * PI / 180.0;
    int x = cx + (int)(scos(rad) * (double)r);
    int y = cy - (int)(ssin(rad) * (double)r);
    if (x >= 0 && x < W && y >= 0 && y < H)
      fb[(uint32_t)y * W + (uint32_t)x] = c;
  }
}

void stroke_rect(int x, int y, int w, int h, uint32_t c) {
  fill_rect(x, y, w, 1, c);
  fill_rect(x, y+h-1, w, 1, c);
  fill_rect(x, y, 1, h, c);
  fill_rect(x+w-1, y, 1, h, c);
}

void draw_line(int x0, int y0, int x1, int y1, uint32_t c) {
  int dx = x1 - x0, dy = y1 - y0;
  int steps = (dx < 0 ? -dx : dx) > (dy < 0 ? -dy : dy) ? (dx < 0 ? -dx : dx) : (dy < 0 ? -dy : dy);
  if (steps == 0) steps = 1;
  double sx = (double)dx / (double)steps, sy = (double)dy / (double)steps;
  double x = (double)x0, y = (double)y0;
  for (int i = 0; i <= steps; i++) {
    int px2 = (int)x, py2 = (int)y;
    if (px2 >= 0 && px2 < W && py2 >= 0 && py2 < H)
      fb[(uint32_t)py2 * W + (uint32_t)px2] = c;
    x += sx; y += sy;
  }
}
