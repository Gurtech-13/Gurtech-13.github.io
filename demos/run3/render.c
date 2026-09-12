/*
 * render.c - framebuffer rendering with proper sprite animation.
 *
 * Character sprites use the original Run 3 frame-by-frame animation system.
 * Each character has a sprite atlas (90-130 frames) with a JSON metadata file
 * that defines exact frame positions. The animation system uses:
 *   - run: 18-frame cycle (center/left/right wall variants)
 *   - jump: single frame
 *   - fall: 8-frame cycle
 *   - land: 5-frame cycle
 *
 * Animation direction (left/center/right) depends on which wall the character
 * is on relative to the camera. State (run/jump/fall/land) depends on whether
 * the player is airborne and what happened before.
 *
 * Frame indices are stored in the assets_data.h header, baked from the
 * original SWF's JSON atlas metadata by bake_assets.py.
 */
#include <stdint.h>
#include <stddef.h>
#include "run3.h"
#include "levels/assets_data.h"

static uint32_t fb[W * H];

/* ==================== FRAMEBUFFER PRIMITIVES ==================== */

static void fill_rect(int x, int y, int w, int h, uint32_t c) {
  int x0 = x < 0 ? 0 : x; int y0 = y < 0 ? 0 : y;
  int x1 = x + w; if (x1 > W) x1 = W;
  int y1 = y + h; if (y1 > H) y1 = H;
  for (int yy = y0; yy < y1; yy++)
    for (int xx = x0; xx < x1; xx++)
      fb[(uint32_t)yy * W + (uint32_t)xx] = c;
}

static void fill_quad(double x0, double y0, double x1, double y1,
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

static void fill_shadow(int cx, int cy, int rx, int ry, double dark) {
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
static void blit_sprite(int dx, int dy, int dw, int dh,
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
static void blit_sprite_mirrored(int dx, int dy, int dw, int dh,
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

/* ==================== PALETTE ==================== */

static const uint32_t PAL[5][4] = {
  { rgb(10,12,26),  rgb(130,185,255), rgb(64,100,165), rgb(36,58,98) },
  { rgb(24,8,26),   rgb(255,150,235), rgb(170,84,152), rgb(104,48,94) },
  { rgb(6,20,22),   rgb(96,235,195),  rgb(48,145,120), rgb(28,92,76) },
  { rgb(26,16,8),   rgb(255,196,110), rgb(176,122,60), rgb(110,74,38) },
  { rgb(8,22,14),   rgb(150,235,110), rgb(88,152,62),  rgb(54,96,40) },
};
static const uint32_t LPAL[4] = {
  rgb(6,8,20), rgb(80,110,180), rgb(40,60,110), rgb(22,36,66)
};

/* ==================== STARS ==================== */

#define STARS 90
static int star_x[STARS], star_y[STARS], star_s[STARS];
static uint32_t star_c[STARS];
void render_init_stars(uint32_t seed) {
  uint32_t s = seed ? seed : 1u;
  for (int i = 0; i < STARS; i++) {
    s = s*1664525u+1013904223u; star_x[i] = (int)(s%W);
    s = s*1664525u+1013904223u; star_y[i] = (int)(s%H);
    s = s*1664525u+1013904223u; star_s[i] = (int)(s%2)+1;
    s = s*1664525u+1013904223u;
    star_c[i] = rgb(160+(int)(s%90), 160+(int)(s%90), 200+(int)(s%55));
  }
}
uint32_t *run3_buffer(void) { return fb; }

/* ==================== PROJECTION ==================== */

/* Camera height (world units, tube space): reframed every frame so the
   grounded runner's feet sit at the top of the lower third (y = 2H/3).
   The camera drops toward the runner's wall; the horizon (vanishing
   point CY) is unchanged since the offset scales with depth. */
static double cam_y = 0.0;

static void proj(double x, double y, double z, double *sx, double *sy) {
  double d = DCAM + z; double s = FOCAL / d;
  *sx = CX + x * s; *sy = CY - (y - cam_y) * s;
}
static void corner(int c, double *x, double *y, double R) {
  double a = -PI/2.0 - PI/(double)G.shape + TAU*(double)c/(double)G.shape + G.rot;
  *x = R * scos(a); *y = R * ssin(a);
}
static double tube_R(void) {
  return (double)G.k * G.tile / (2.0 * ssin(PI / (double)G.shape));
}
static int mask_at(int side, int row) {
  int i = row - GMAP_BASE;
  if (i < 0 || i >= MAPW) return 0;
  return GMAP[side][i];
}

/* low power tunnel check */
static int is_low_power(void) {
  return (G.theme == 5);
}

/* ==================== CHARACTER RENDERING ==================== */

/*
 * Look up a single frame from a character's baked atlas.
 * Returns pixel pointer and sets *w, *h. Returns NULL if invalid.
 */
static const uint32_t *get_char_frame(int char_id, int compact_idx, int *w, int *h) {
  if (char_id < 0 || char_id >= CHAR_COUNT) { *w = 0; *h = 0; return NULL; }
  if (compact_idx < 0 || compact_idx >= char_frame_counts[char_id]) {
    *w = 0; *h = 0; return NULL;
  }
  const uint32_t *pix = char_frame_data[char_id][compact_idx];
  *w = char_frame_widths[char_id][compact_idx];
  *h = char_frame_heights[char_id][compact_idx];
  return pix;
}

/*
 * Determine animation state from game state:
 *   STATE_RUN  - running on the ground
 *   STATE_JUMP - going up (jv > 0)
 *   STATE_FALL - falling (jv <= 0 and airborne)
 *   STATE_LAND - just landed (small grace period after landing)
 */
static int anim_state_from_game(void) {
  if (G.state == S_DEAD) return STATE_FALL;
  /* airborne includes the final approach (jump in (0,0.05] while plummeting),
     so there is no 1-frame RUN flash between FALL and LAND */
  if (G.jump > 0.005 || G.jv > 0.2 || G.jv < -0.2) {
    if (G.jv > 0.2) return STATE_JUMP;
    else return STATE_FALL;
  }
  if (G.landT > 0.0) return STATE_LAND;
  return STATE_RUN;
}

/*
 * Lean into the strafe: the camera rolls so the runner's wall is always at
 * the bottom of the screen, so wall-relative left/center/right is always
 * CENTER by construction (the old code compared the side to itself).
 * Lateral velocity gives the visible lean instead: ring+ is screen-right.
 */
static int anim_dir_from_tube(void) {
  if (G.vRing > 0.5) return DIR_RIGHT;
  if (G.vRing < -0.5) return DIR_LEFT;
  return DIR_CENTER;
}

/*
 * Draw the character with proper animation.
 * Uses the animation ranges table baked from the original Run 3 source.
 */
static void draw_runner(double R) {
  int n = G.shape, k = G.k;
  int su = wrap_side(G.ring, k, n);
  double f = G.ring / (double)k - (double)su;
  double ax,ay,bx,by;
  corner(su,&ax,&ay,R); corner(su+1,&bx,&by,R);
  double mx = ax + (bx-ax)*f, my = ay + (by-ay)*f;
  double nx = 0.5*(ax+bx), ny = 0.5*(ay+by);
  double len = ssqrt(nx*nx+ny*ny);
  double inx = len>1e-12 ? -nx/len : 0.0;
  double iny = len>1e-12 ? -ny/len : 1.0;

  int dead = (G.state == S_DEAD);
  double lift = 0.02 + G.jump;
  double shrink = 1.0;
  if (dead) {
    double dd = G.fallT; if (dd > 0.8) dd = 0.8;
    lift = 0.02 - dd*1.6; shrink = 1.0 - dd*0.7; if (shrink < 0.5) shrink = 0.5;
  }
  double gx,gy,px,py;
  proj(mx,my,0.0,&gx,&gy);
  proj(mx+inx*lift,my+iny*lift,0.0,&px,&py);

  /* contact shadow — scale with resolution */
  double jh = G.jump, shr = 1.0/(1.0+5.0*jh);
  double baseR = 9.0 * (H / 360.0);
  double rxS = baseR*shr*(dead?shrink:1.0), ryS = rxS*0.45;
  fill_shadow((int)gx,(int)(gy+rxS*0.1),(int)rxS,(int)ryS,
              0.55*(dead?shrink:1.0)*(0.5+0.5*shr));

  if (dead) {
    int ds = (int)(14.0 * (H / 360.0) * shrink);
    blit_sprite((int)px-ds/2,(int)py-ds/2,ds, tex_ruinedtile_H*ds/(tex_ruinedtile_W>0?tex_ruinedtile_W:1),
                tex_ruinedtile, tex_ruinedtile_W, tex_ruinedtile_H, shrink);
    return;
  }

  /* ===== ANIMATION STATE MACHINE ===== */
  int cm = G.charm;
  if (cm >= CHAR_COUNT) cm = 0;

  int state = anim_state_from_game();
  int dir = anim_dir_from_tube();

  /* Look up the animation range */
  anim_range_t ar = CHAR_ANIM_RANGE(cm, state, dir);

  /* Crisp 20 fps in every state (JUMP holds its single frame),
     independent of game speed. */
  int fi = 0;
  if (ar.length > 0 && state != STATE_JUMP) {
    fi = (int)(G.animT * 20.0) % ar.length;
  }

  int compact_idx = ar.start + fi;
  int fw = 0, fh = 0;
  const uint32_t *pix = get_char_frame(cm, compact_idx, &fw, &fh);
  if (!pix || fw <= 0 || fh <= 0) {
    /* fallback: draw a small colored rectangle */
    fill_rect((int)px - 4, (int)py - 12, 8, 12, rgb(200, 200, 200));
    return;
  }

  /* scale to fit ~24px tall at 360p, ~48px at 720p — shrunk 25% from 32 */
  int baseH = (int)(24.0 * (H / 360.0));
  int spriteH = (int)(baseH * shrink);
  int spriteW = spriteH * fw / (fh > 0 ? fh : 1);
  if (G.jump > 0.0) {
    double stretch = 1.0 + 0.12 * ssin(G.jump * 3.0);
    spriteH = (int)(spriteH * stretch);
    spriteW = (int)(spriteW / stretch);
  }

  int drawX = (int)px - spriteW / 2;
  int drawY = (int)py - spriteH;

  /* blit with optional horizontal mirror */
  if (ar.mirror) {
    blit_sprite_mirrored(drawX, drawY, spriteW, spriteH, pix, fw, fh, 1.0);
  } else {
    blit_sprite(drawX, drawY, spriteW, spriteH, pix, fw, fh, 1.0);
  }

  /* low power tunnel: dim the character slightly */
  if (is_low_power()) {
    int area = spriteW * spriteH;
    if (area > 0 && area < W * H) {
      for (int y = drawY; y < drawY + spriteH; y++) {
        if (y < 0 || y >= H) continue;
        for (int x = drawX; x < drawX + spriteW; x++) {
          if (x < 0 || x >= W) continue;
          uint32_t c = fb[(uint32_t)y * W + (uint32_t)x];
          uint32_t r = ((c>>16)&0xff) * 3 / 4;
          uint32_t g = ((c>>8)&0xff) * 3 / 4;
          uint32_t b = (c&0xff) * 3 / 4;
          fb[(uint32_t)y * W + (uint32_t)x] = (c & 0xff000000u) | (r<<16) | (g<<8) | b;
        }
      }
    }
  }
}

/* ==================== MAIN FRAME ==================== */

static void draw_runner(double R);
void render_frame(void) {
  int n = G.shape, k = G.k;
  int th = G.theme % 5;
  int lpw = is_low_power();
  uint32_t sky = lpw ? rgb(4,5,14) : PAL[th][0];
  for (int i = 0; i < W * H; i++) fb[i] = sky;
  for (int s = 0; s < STARS; s++)
    fill_rect(star_x[s], star_y[s], star_s[s], star_s[s], star_c[s]);

  double R = tube_R();
  /* grounded feet (world y=-R at z=0) -> screen 2H/3: with
     sy = CY+(R+cam_y)*FOCAL/DCAM, cam_y = (2H/3-CY)*DCAM/FOCAL - R */
  cam_y = ((2.0 * (double)H / 3.0) - (double)CY) * (DCAM / FOCAL) - R;
  double front = G.prog;
  double tile = G.tile;
  int gateRow = (int)G.rowEnd;
  int rFar = (int)(front + VIEW / tile) + 2;
  int rNear = (int)(front - (DCAM + 2.0*tile) / tile) - 2;
  double hz = 0.5 * tile;
  uint32_t voidc = lpw ? rgb(2,3,8) : rgb(4,5,11);

  for (int ri = rFar; ri >= rNear; ri--) {
    double zc = ((double)ri - front) * tile;
    double zFar = zc + hz, zNear = zc - hz;
    if (zFar > VIEW) continue;
    if (zFar < -DCAM + 0.2) continue;
    double zn = zNear < NEARZ ? NEARZ : zNear;
    double fog = zFar / VIEW * 0.85;
    if (fog < 0.0) fog = 0.0; if (fog > 0.85) fog = 0.85;

    double rx[MAXN+1], ry[MAXN+1];
    for (int c = 0; c <= n; c++) corner(c, &rx[c], &ry[c], R);

    int su = wrap_side(G.ring, k, n);
    for (int side = 0; side < n; side++) {
      int mask = mask_at(side, ri);
      uint32_t base;
      if (lpw) {
        base = (side == su) ? LPAL[1] : ((side == (su+1)%n || side == (su+n-1)%n) ? LPAL[2] : LPAL[3]);
      } else {
        if (side == su) base = PAL[th][1];
        else if (side == (su+1)%n || side == (su+n-1)%n) base = PAL[th][2];
        else base = PAL[th][3];
      }
      if ((side & 1) && side != su) base = mixc(base, sky, 0.10);
      uint32_t col = mixc(base, sky, fog);
      int isGate = (ri == gateRow);
      if (isGate) col = mixc(col, rgb(255,236,170), 0.55);
      if (lpw) {
        /* low-power tunnel: tiles fade with the light level (the host ducks
           the music along). Runner and stars stay lit. */
        double pw = run3_power();
        if (pw < 1.0) col = mixc(col, rgb(2,3,8), (1.0 - pw) * 0.92);
      }
      uint32_t holeCol = mixc(voidc, sky, fog * 0.35);

      for (int l = 0; l < k; l++) {
        double t0 = (double)l/(double)k, t1 = (double)(l+1)/(double)k;
        double ax2 = rx[side]+(rx[side+1]-rx[side])*t0;
        double ay2 = ry[side]+(ry[side+1]-ry[side])*t0;
        double bx2 = rx[side]+(rx[side+1]-rx[side])*t1;
        double by2 = ry[side]+(ry[side+1]-ry[side])*t1;
        double p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y;
        proj(ax2,ay2,zFar,&p0x,&p0y); proj(bx2,by2,zFar,&p1x,&p1y);
        proj(bx2,by2,zn,&p2x,&p2y);  proj(ax2,ay2,zn,&p3x,&p3y);

        if (mask & (1u << l)) {
          fill_quad(p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y, holeCol);
          if (zFar < 12.0 && zFar > 0.5) {
            double fade = 1.0 - zFar / 12.0;
            int sw2 = (int)(p1x-p0x), sh2 = (int)(p0y-p2y);
            if (sw2 > 2 && sh2 > 2)
              blit_sprite((int)p0x,(int)p2y,sw2,sh2, tex_crumbling,tex_crumbling_W,tex_crumbling_H, fade*0.6);
          }
        } else {
          fill_quad(p0x,p0y,p1x,p1y,p2x,p2y,p3x,p3y, col);
        }
      }
    }
    /* low power: faint glow pulsing on each row */
    if (lpw && (ri & 7) == 0 && zFar < 15.0 && zFar > 1.0) {
      double pulse = 0.5 + 0.5 * ssin(G.prog * 0.3 + (double)ri * 0.5);
      uint32_t glow = mixc(rgb(40,60,140), sky, 0.7 + 0.3 * (1.0 - pulse));
      for (int side = 0; side < n; side++) {
        double ax3,ay3,bx3,by3;
        corner(side,&ax3,&ay3,R); corner(side+1,&bx3,&by3,R);
        double p0x,p0y,p1x,p1y;
        proj(ax3,ay3,zFar,&p0x,&p0y); proj(bx3,by3,zFar,&p1x,&p1y);
        int lx0=(int)p0x, lx1=(int)p1x, ly=(int)p0y;
        if (ly >= 0 && ly < H) {
          if (lx0 > lx1) { int t=lx0; lx0=lx1; lx1=t; }
          if (lx0 < 0) lx0 = 0; if (lx1 >= W) lx1 = W-1;
          for (int x = lx0; x <= lx1; x++)
            fb[(uint32_t)ly * W + (uint32_t)x] = mixc(fb[(uint32_t)ly*W+(uint32_t)x], glow, 0.15 * pulse);
        }
      }
    }
  }

  /* cutscene staging: the tunnel is the backdrop, the cast plays in the
     HTML overlay — no runner sprite on stage */
  if (G.state != S_CUT) draw_runner(R);
}

/* ==================== TEXT HELPERS (forward decl for map) ==================== */
#include "levels/font_data.h"
static void draw_glyph(int x, int y, char ch, uint32_t col, double scale);
static int draw_text(int x, int y, const char *s, uint32_t col, double scale);
static int text_width(const char *s, double scale);
static void draw_text_centered(int y, const char *s, uint32_t col, double scale);
static void fill_rect_i(int x, int y, int w, int h, uint32_t c);
static void stroke_rect(int x, int y, int w, int h, uint32_t c);

/* ==================== MAP RENDERING ==================== */
#include "levels/map_assets.h"

/* Draw a filled circle */
static void fill_circle(int cx, int cy, int r, uint32_t c) {
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

/* Draw a circle outline */
static void stroke_circle(int cx, int cy, int r, uint32_t c) {
  for (int a = 0; a < 360; a++) {
    double rad = (double)a * PI / 180.0;
    int x = cx + (int)(scos(rad) * (double)r);
    int y = cy - (int)(ssin(rad) * (double)r);
    if (x >= 0 && x < W && y >= 0 && y < H)
      fb[(uint32_t)y * W + (uint32_t)x] = c;
  }
}

/* Draw a line between two points */
static void draw_line(int x0, int y0, int x1, int y1, uint32_t c) {
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

/* map background: fully procedural old parchment (no baked texture).
   Warm paper base with subtle fibre grain plus black/brown age spots, all in
   world space so it scrolls 1:1 with the dots. screen_x = world_x + scroll. */
#define MAP_WORLD_MINX -800
#define MAP_WORLD_W 5000
static int map_floor4(int v) { return v >= 0 ? v >> 2 : -(((-v) + 3) >> 2); }
static void render_map_bg(int scroll) {
  /* paper base with a soft vertical tone */
  for (int y = 0; y < H; y++) {
    double t = (double)y / (double)(H - 1);
    uint32_t row = mixc(rgb(201,181,130), rgb(213,195,145), t);
    int ycell = y >> 2;
    int x = 0;
    while (x < W) {
      int xcell = map_floor4(x - scroll);
      int xn = (xcell + 1) * 4 + scroll; /* first screen x of next grain cell */
      if (xn <= x) xn = x + 1;
      if (xn > W) xn = W;
      /* subtle fibre grain: one hash per 4px cell */
      uint32_t h = h32(((uint32_t)xcell * 7349u) ^ ((uint32_t)ycell * 9119u) ^ 0x9A7Cu);
      int d = (int)(h % 13u) - 6; /* -6..+6 */
      int rr = (int)((row >> 16) & 0xff) + d;
      int gg = (int)((row >> 8) & 0xff) + d;
      int bb = (int)(row & 0xff) + (d * 3) / 4;
      if (rr < 0) rr = 0; if (rr > 255) rr = 255;
      if (gg < 0) gg = 0; if (gg > 255) gg = 255;
      if (bb < 0) bb = 0; if (bb > 255) bb = 255;
      uint32_t c = 0xFF000000u | ((uint32_t)rr << 16) | ((uint32_t)gg << 8) | (uint32_t)bb;
      for (int xx = x; xx < xn; xx++) fb[(uint32_t)y * W + (uint32_t)xx] = c;
      x = xn;
    }
  }
  /* black/brown spots and speckles in world space */
  for (int i = 0; i < 420; i++) {
    uint32_t h = h32(0x51ECu ^ (uint32_t)(i * 2246822519u));
    int wx = MAP_WORLD_MINX + (int)(h % (uint32_t)MAP_WORLD_W);
    int sx = wx + scroll;
    if (sx < -3 || sx >= W + 3) continue;
    int wy = (int)((h >> 9) % (uint32_t)H);
    if (((h >> 4) & 15u) == 0) {
      /* occasional bigger black spot */
      int r = 2 + (int)((h >> 12) & 3u); /* 2..5 */
      fill_circle(sx, wy, r, rgb(38,26,14));
      fill_circle(sx, wy, r > 2 ? r - 2 : 1, rgb(24,16,8));
    } else {
      int sz = 1 + (int)((h >> 5) & 1u);
      int dk = 70 + (int)((h >> 16) & 50u);
      uint32_t c = ((h >> 7) & 1u) ? rgb(30,20,10) : rgb(dk, dk - 22, dk - 45);
      fill_rect(sx, wy, sz, sz, c);
    }
  }
}

/* draw the Run 3 world map on the canvas — 1D horizontal, black circles/lines, discovered only, name on hover */
void render_map(void) {
  int scroll = run3_map_scroll_x();
  render_map_bg(scroll);

  /* draw each discovered tunnel's ORIGINAL drawn curve, horizontal scroll */
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    int n = map_wp_n[i];
    if (n < 2) continue;
    const int16_t *w = map_wp[i];
    for (int s = 0; s + 1 < n; s++) {
      int ax = w[2 * s] + scroll, ay = w[2 * s + 1];
      int bx = w[2 * s + 2] + scroll, by = w[2 * s + 3];
      if ((ax < -30 && bx < -30) || (ax >= W+30 && bx >= W+30)) continue;
      if (ax == bx && ay == by) continue;
      draw_line(ax, ay, bx, by, rgb(0,0,0));
    }
  }

  /* checkpoints — every level of each discovered tunnel, along its edge.
     The tunnel reads as one continuous playable run of black dots. */
  int sel = run3_map_selected();
  int hov = run3_map_hovered();
  int hovLvl = run3_map_hovered_level();
  int selLvl = run3_map_selected_level();
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    int count = run3_map_checkpoint_count(i);
    int unlocked = run3_map_best(i);
    int r_first = count > 40 ? 2 : 4;
    int r_rest = (r_first + 1) / 2; /* trailing dots half the first dot's size */
    for (int j = 0; j < count && j <= unlocked; j++) {
      int r = (j == 0) ? r_first : r_rest;
      int cx, cy;
      run3_map_checkpoint_pos(i, j, &cx, &cy);
      cx += scroll;
      if (cx < -12 || cx >= W + 12 || cy < -12 || cy >= H + 12) continue;
      fill_circle(cx, cy, r, rgb(0,0,0));
      stroke_circle(cx, cy, r + 1, rgb(90,90,90));
      if (i == sel && j == selLvl) {
        stroke_circle(cx, cy, r + 4, rgb(255, 215, 80));
      } else if (i == hov && j == hovLvl) {
        stroke_circle(cx, cy, r + 4, rgb(255,255,255));
      }
    }
  }

  /* draw nodes — only discovered, black circles, horizontal scroll */
  // (sel/hov already fetched above)
  for (int i = 0; i < MAP_TUNNEL_COUNT; i++) {
    if (!run3_map_is_discovered(i)) continue;
    const map_node_t *n = &map_nodes[i];
    int nx = n->x + scroll;
    int ny = n->y;
    if (nx < -30 || nx >= W + 30) continue;
    int cleared = run3_map_is_cleared(i);
    // black fill, white outline for visibility, gold dot if cleared
    if (i == sel) {
      fill_circle(nx, ny, 22, rgb(0,0,0));
      stroke_circle(nx, ny, 26, rgb(255,255,255));
      stroke_circle(nx, ny, 22, rgb(0,0,0));
      if (cleared) fill_circle(nx, ny, 6, rgb(255,215,80));
    } else if (i == hov) {
      fill_circle(nx, ny, 18, rgb(0,0,0));
      stroke_circle(nx, ny, 22, rgb(255,255,255));
      stroke_circle(nx, ny, 18, rgb(0,0,0));
      if (cleared) fill_circle(nx, ny, 6, rgb(255,215,80));
    } else {
      fill_circle(nx, ny, 14, rgb(0,0,0));
      stroke_circle(nx, ny, 16, rgb(40,40,40));
      // thin white rim for black on dark
      stroke_circle(nx, ny, 15, rgb(80,80,80));
      if (cleared) fill_circle(nx, ny, 4, rgb(255,215,80));
    }
  }

  /* hover name only — tunnel name, or name + checkpoint when over a dot */
  if (hov >= 0 && hov < MAP_TUNNEL_COUNT && run3_map_is_discovered(hov)) {
    const char *name = map_tunnel_names[hov];
    double scale = 0.38;
    char buf[40];
    int p = 0;
    for (int k = 0; name[k] && p < 24; k++) buf[p++] = name[k];
    int hx, hy;
    if (hovLvl >= 0) {
      /* checkpoint label: "Name N" anchored at the dot */
      buf[p++] = ' ';
      int num = hovLvl + 1;
      char digits[8]; int nd = 0;
      if (num <= 0) { digits[nd++] = '0'; }
      else { while (num > 0 && nd < 7) { digits[nd++] = '0' + (num % 10); num /= 10; } }
      for (int k = nd - 1; k >= 0 && p < 38; k--) buf[p++] = digits[k];
      buf[p] = '\0';
      run3_map_checkpoint_pos(hov, hovLvl, &hx, &hy);
      hx += scroll;
    } else {
      buf[p] = '\0';
      const map_node_t *hn = &map_nodes[hov];
      hx = hn->x + scroll;
      hy = hn->y;
    }
    int tw = text_width(buf, scale);
    int tx = hx - tw/2;
    int ty = hy - 32;
    if (tx < 4) tx = 4;
    if (tx + tw >= W-4) tx = W - 4 - tw;
    if (ty < 4) ty = hy + 28;
    fill_rect(tx-6, ty-4, tw+12, 26, rgb(0,0,0));
    stroke_rect(tx-6, ty-4, tw+12, 26, rgb(80,80,80));
    draw_text(tx, ty, buf, rgb(255,255,255), scale);
  }

  /* header — dark ink on parchment */
  draw_text_centered(18, "WORLD MAP", rgb(48,32,16), 0.55);
  const char *hint = "Horizontal scroll  |  Click discovered tunnel  |  Arrow keys pan";
  int hw = text_width(hint, 0.32);
  draw_text((W - hw)/2, 48, hint, rgb(96,72,46), 0.32);
  if (scroll != 0) {
    char sbuf[24];
    sbuf[0]='X'; sbuf[1]=':'; sbuf[2]=' ';
    int v = scroll;
    int idx = 2;
    if (v < 0) { sbuf[++idx]='-'; v=-v; }
    // simple integer
    int hundreds = (v/100)%10, tens=(v/10)%10, ones=v%10;
    // skip leading zeros
    int started=0;
    if (hundreds) { sbuf[++idx]='0'+hundreds; started=1; }
    if (tens || started) { sbuf[++idx]='0'+tens; started=1; }
    sbuf[++idx]='0'+ones;
    sbuf[++idx]='\0';
    draw_text(W - 100, H - 28, sbuf, rgb(96,72,46), 0.30);
  }
}

/* ==================== TEXT RENDERING ==================== */
#include "levels/font_data.h"

static void draw_glyph(int x, int y, char ch, uint32_t col, double scale) {
  int ci = (int)ch - FONT_FIRST_CHAR;
  if (ci < 0 || ci >= FONT_NUM_CHARS) return;
  const glyph_t *g = &font_glyphs[ci];
  int dw = (int)((double)g->w * scale), dh = (int)((double)g->h * scale);
  if (dw <= 0 || dh <= 0) return;
  // resting on a common baseline — y is the baseline, glyph top at y - yoff*scale
  // nearest neighbor: no smoothing, crisp texels
  int y_top = y - (int)((double)g->yoff * scale);
  for (int py = 0; py < dh; py++) {
    int sy = (py * g->h) / dh; if (sy >= g->h) sy = g->h - 1;
    int screenY = y_top + py; if (screenY < 0 || screenY >= H) continue;
    for (int px = 0; px < dw; px++) {
      int sx = (px * g->w) / dw; if (sx >= g->w) sx = g->w - 1;
      int screenX = x + px; if (screenX < 0 || screenX >= W) continue;
      uint32_t src = font_atlas[(g->y + sy) * FONT_ATLAS_W + (g->x + sx)];
      unsigned int sa = (src >> 24);
      if (sa < 10) continue;
      double a = (double)sa / 255.0;
      uint32_t dst = fb[(uint32_t)screenY * W + (uint32_t)screenX];
      int dr = (int)((dst>>16)&0xff), dg = (int)((dst>>8)&0xff), db = (int)(dst&0xff);
      int sr = (int)((col>>16)&0xff), sg = (int)((col>>8)&0xff), sb = (int)(col&0xff);
      fb[(uint32_t)screenY * W + (uint32_t)screenX] = 0xFF000000u |
        ((uint32_t)(int)(dr+(sr-dr)*a) << 16) |
        ((uint32_t)(int)(dg+(sg-dg)*a) << 8) |
        (uint32_t)(int)(db+(sb-db)*a);
    }
  }
}

static int draw_text(int x, int y_top, const char *s, uint32_t col, double scale) {
  // y_top is the TOP of the line; glyphs rest on a common baseline below it.
  // baseline = top + max_yoff*scale so the tallest glyph starts exactly at y_top.
  int max_yoff = 0;
  for (const char *p = s; *p; p++) {
    int ci = (int)*p - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS) {
      if (font_glyphs[ci].yoff > max_yoff) max_yoff = font_glyphs[ci].yoff;
    }
  }
  int baseline = y_top + (int)((double)max_yoff * scale);
  int cx = x;
  while (*s) {
    draw_glyph(cx, baseline, *s, col, scale);
    int ci = (int)*s - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS)
      cx += (int)((double)font_glyphs[ci].w * scale) + 1;
    s++;
  }
  return cx - x;
}

static int text_width(const char *s, double scale) {
  int cx = 0;
  while (*s) {
    int ci = (int)*s - FONT_FIRST_CHAR;
    if (ci >= 0 && ci < FONT_NUM_CHARS) cx += font_glyphs[ci].w + 1;
    s++;
  }
  return (int)((double)cx * scale);
}

static void draw_text_centered(int y, const char *s, uint32_t col, double scale) {
  int sw = text_width(s, scale);
  draw_text((W - sw) / 2, y, s, col, scale);
}

static void fill_rect_i(int x, int y, int w, int h, uint32_t c) {
  fill_rect(x, y, w, h, c);
}

static void stroke_rect(int x, int y, int w, int h, uint32_t c) {
  fill_rect(x, y, w, 1, c);
  fill_rect(x, y+h-1, w, 1, c);
  fill_rect(x, y, 1, h, c);
  fill_rect(x+w-1, y, 1, h, c);
}

/* ==================== MAIN MENU — stars bg as requested, not parchment ==================== */
void render_menu(void) {
  /* stars bg — same as in-game sky, not parchment */
  uint32_t sky = rgb(10,12,26);
  for (int i = 0; i < W * H; i++) fb[i] = sky;
  for (int s = 0; s < STARS; s++)
    fill_rect(star_x[s], star_y[s], star_s[s], star_s[s], star_c[s]);

  int cx = W / 2;
  draw_text_centered(60, "Run 3", rgb(130, 185, 255), 1.6);
  draw_text_centered(150, "Tunnel Runner Tribute", rgb(100, 130, 180), 0.54);

  fill_rect(cx - 160, 340, 320, 60, rgb(50, 120, 60));
  draw_text_centered(351, "Play", rgb(220, 255, 220), 0.76);

  fill_rect(cx - 160, 420, 320, 60, rgb(90, 50, 140));
  draw_text_centered(436, "Infinite Mode", rgb(220, 200, 255), 0.54);

  draw_text_centered(500, "Character:", rgb(180, 180, 200), 0.49);
  int nchar = CHAR_COUNT;
  int sel = run3_menu_char();
  // bigger boxes 80x80, 90px pitch, 2 rows (9+8) — spread out
  for (int i = 0; i < nchar; i++) {
    int row = i / 9;
    int col = i % 9;
    int bx = 40 + col * 90;
    int by = 520 + row * 100;
    if (by + 80 > H - 20) break;
    int is_locked = run3_char_is_locked(i);
    uint32_t cc = (i == sel) ? rgb(255, 255, 255) : (is_locked ? rgb(45, 45, 60) : rgb(60, 60, 80));
    fill_rect(bx, by, 80, 80, cc);
    int fw2 = 0, fh2 = 0;
    /* preview the run-cycle lead frame, not the jump pose (compact 0) */
    anim_range_t mar = CHAR_ANIM_RANGE(i, STATE_RUN, DIR_CENTER);
    const uint32_t *pix = get_char_frame(i, mar.start, &fw2, &fh2);
    if (pix && fw2 > 0 && fh2 > 0) {
      // native resolution — same scale for all, centered, may overflow box
      int dw = fw2;
      int dh = fh2;
      int px = bx + 40 - dw / 2;
      int py = by + 40 - dh / 2;
      // dim locked characters slightly
      double alpha = is_locked ? 0.35 : 1.0;
      blit_sprite(px, py, dw, dh, pix, fw2, fh2, alpha);
    }
    if (is_locked) {
      // use locked overlay texture
      blit_sprite(bx, by, 80, 80, tex_locked, tex_locked_W, tex_locked_H, 0.92);
    }
    if (i == sel) stroke_rect(bx - 2, by - 2, 84, 84, rgb(255, 220, 50));
    else if (is_locked) stroke_rect(bx, by, 80, 80, rgb(60, 60, 80));
  }

  draw_text_centered(640, "Click to select  |  Fullscreen 1280x720", rgb(100, 110, 130), 0.38);
}
