/*
 * levels.c - faithful recreation of the original Run 3 tunnel structure.
 *
 * Paths match the original game's map: Primary, home tunnels, side paths,
 * dark, winter, boxes, memory, river, wormholes, and the infinite tunnel.
 * Each tunnel's level count and default layout are the most common values
 * from the decompiled SWF (see bake_levels.py). Per-level tile bitmaps live
 * in levels_baked.h (319 original levels); the engine falls back to
 * procedural holes only where the original has no data (Wormhole Space).
 *
 * Layout format: n_sides, k_tiles (e.g. tunnel4,4 = 4 sides, 4 tiles/side)
 */
#include "../run3.h"

const uint16_t NTUNNELS = 36;

const tunnel_t TUNNELS[MAX_TUNNELS] = {
  /* =================================================================
   * ORIGINAL RUN 3 PATHS — counts/layouts from the decompiled game
   * ================================================================= */

  /*  0 Primary         tunnel8,2 — the main starting path (65 levels) */
  { 8, 2, 0, 65, 26, 42, 3.00, 0.022, 4.00, 0.040, 0.0014, 0.10, 1.00 },

  /*  1 Home 0          tunnel12,1 — first home branch (7 levels) */
  { 12, 1, 0, 7, 4, 8, 3.20, 0.026, 3.70, 0.045, 0.0020, 0.12, 1.20 },

  /*  2 Home 1          tunnel13,2 — second home branch (1 level) */
  { 13, 2, 0, 1, 3, 6, 3.10, 0.024, 3.50, 0.042, 0.0018, 0.11, 1.40 },

  /*  3 Home 2          tunnel24,1 — third home branch (5 levels) */
  { 24, 1, 0, 5, 3, 5, 3.05, 0.023, 3.40, 0.041, 0.0017, 0.10, 1.60 },

  /*  4 Home 3          tunnel6,4 — deepest home branch (9 levels) */
  { 6, 4, 0, 9, 2, 4, 3.15, 0.025, 3.60, 0.043, 0.0019, 0.11, 0.85 },

  /*  5 Side Path A     tunnel8,2 — first side branch (9 levels) */
  { 8, 2, 0, 9, 8, 15, 3.40, 0.028, 4.20, 0.050, 0.0020, 0.14, 1.00 },

  /*  6 Side Path B     tunnel8,2 — box-themed side path (13 levels) */
  { 8, 2, 3, 13, 6, 12, 3.30, 0.027, 4.10, 0.048, 0.0019, 0.13, 1.00 },

  /*  7 Side Path D     tunnel18,1 — pentagon side path (14 levels) */
  { 18, 1, 4, 14, 8, 18, 3.60, 0.030, 4.50, 0.055, 0.0022, 0.16, 1.60 },

  /*  8 Side Path G     tunnel5,4 — octagon side path (10 levels) */
  { 5, 4, 2, 10, 6, 12, 3.50, 0.029, 4.30, 0.052, 0.0021, 0.15, 0.85 },

  /*  9 Side Path L     tunnel7,3 — hexagon side path (5 levels) */
  { 7, 3, 1, 5, 8, 20, 3.70, 0.031, 4.70, 0.058, 0.0023, 0.17, 1.00 },

  /* 10 Side Path M     tunnel6,3 — narrow pentagon (5 levels) */
  { 6, 3, 2, 5, 4, 10, 3.35, 0.026, 4.00, 0.047, 0.0019, 0.13, 0.85 },

  /* 11 Side Path T     tunnel5,4 — wide hexagon (7 levels) */
  { 5, 4, 4, 7, 6, 12, 3.80, 0.032, 4.90, 0.060, 0.0024, 0.18, 0.85 },

  /* 12 Winter          tunnel11,2 — ice tunnel (20 levels) */
  { 11, 2, 0, 20, 10, 22, 4.00, 0.034, 5.20, 0.065, 0.0025, 0.20, 1.20 },

  /* 13 Dark            tunnel5,4 — dark void tunnel (25 levels) */
  { 5, 4, 4, 25, 8, 18, 4.20, 0.036, 5.50, 0.070, 0.0026, 0.21, 0.85 },

  /* 14 Boxes           tunnel4,6 — box puzzle tunnel (11 levels) */
  { 4, 6, 3, 11, 6, 15, 3.60, 0.030, 4.50, 0.055, 0.0022, 0.16, 0.70 },

  /* 15 Memory          tunnel10,3 — memory corridor (7 levels) */
  { 10, 3, 0, 7, 4, 10, 3.70, 0.031, 4.60, 0.058, 0.0023, 0.17, 1.20 },

  /* 16 River           tunnel4,5 — the river tunnel (5 levels) */
  { 4, 5, 0, 5, 6, 12, 3.55, 0.029, 4.40, 0.053, 0.0021, 0.15, 0.70 },

  /* 17 Wormhole C      tunnel5,3 — first wormhole (9 levels) */
  { 5, 3, 2, 9, 6, 15, 4.10, 0.035, 5.30, 0.068, 0.0025, 0.20, 0.85 },

  /* 18 Wormhole H      tunnel9,2 — second wormhole (10 levels) */
  { 9, 2, 3, 10, 5, 12, 4.30, 0.037, 5.70, 0.072, 0.0026, 0.21, 1.20 },

  /* 19 Wormhole I      tunnel12,2 — third wormhole (7 levels) */
  { 12, 2, 1, 7, 4, 10, 3.90, 0.033, 5.00, 0.062, 0.0024, 0.19, 1.20 },

  /* 20 Wormhole J      tunnel4,6 — fourth wormhole (6 levels) */
  { 4, 6, 2, 6, 4, 10, 4.00, 0.034, 5.10, 0.064, 0.0024, 0.19, 0.70 },

  /* 21 Wormhole K      tunnel4,4 — fifth wormhole (8 levels) */
  { 4, 4, 4, 8, 5, 12, 4.40, 0.038, 5.90, 0.075, 0.0027, 0.22, 0.70 },

  /* 22 Wormhole N      tunnel5,2 — sixth wormhole (9 levels) */
  { 5, 2, 0, 9, 4, 10, 4.20, 0.036, 5.60, 0.070, 0.0026, 0.21, 0.85 },

  /* 23 Wormhole Space  tunnel16,1 — deepest wormhole (12 levels, procedural:
     the original ships no valid level data here, so these stay empty-ish) */
  { 16, 1, 2, 12, 6, 15, 4.60, 0.040, 6.20, 0.080, 0.0028, 0.23, 1.40 },

  /* 24 Newly Formed    tunnel8,3 — newly formed tunnel (9 levels) */
  { 8, 3, 0, 9, 3, 8, 3.40, 0.028, 4.10, 0.050, 0.0020, 0.14, 1.00 },

  /* 25 Runway 0        tunnel4,4 — runway tunnel (11 levels) */
  { 4, 4, 1, 11, 4, 10, 3.50, 0.029, 4.30, 0.052, 0.0021, 0.15, 0.70 },

  /* 26 Runway 1        tunnel10,2 — second runway (8 levels) */
  { 10, 2, 3, 8, 3, 8, 3.60, 0.030, 4.40, 0.055, 0.0022, 0.16, 1.20 },

  /* 27 Coordination    tunnel5,4 — coordination tunnel (11 levels) */
  { 5, 4, 2, 11, 3, 6, 3.30, 0.026, 3.90, 0.047, 0.0019, 0.13, 0.85 },

  /* 28 Side Path U     tunnel6,2 — side path U (10 levels) */
  { 6, 2, 0, 10, 4, 10, 3.45, 0.028, 4.20, 0.051, 0.0020, 0.14, 0.85 },

  /* 29 Side Path W     tunnel4,4 — side path W (3 levels) */
  { 4, 4, 4, 3, 3, 8, 3.55, 0.029, 4.30, 0.053, 0.0021, 0.15, 0.70 },

  /* =================================================================
   * EXTENDED TUNNELS — custom paths past the original map (procedural
   * hazards like Wormhole Space: no baked bitmaps, engine-generated).
   * ================================================================= */

  /* 30 Side Path F     tunnel8,2 — shortcut spur off Primary (8 levels) */
  { 8, 2, 0, 8, 8, 15, 3.40, 0.028, 4.20, 0.050, 0.0020, 0.14, 1.00 },

  /* 31 Side Path S     tunnel6,3 — snowy spur past Winter (10 levels) */
  { 6, 3, 0, 10, 6, 12, 3.55, 0.029, 4.40, 0.053, 0.0021, 0.15, 0.85 },

  /* 32 Side Path V     tunnel4,6 — box-lined halls past Boxes (7 levels) */
  { 4, 6, 3, 7, 6, 12, 3.60, 0.030, 4.50, 0.055, 0.0022, 0.16, 0.70 },

  /* 33 Wormhole X      tunnel5,3 — small fresh wormhole at Primary's end (6) */
  { 5, 3, 2, 6, 6, 15, 4.10, 0.035, 5.30, 0.068, 0.0025, 0.20, 0.85 },

  /* 34 Far Shore        tunnel7,3 — far side of Wormhole X (8 levels) */
  { 7, 3, 1, 8, 6, 12, 4.00, 0.034, 5.20, 0.065, 0.0025, 0.20, 1.00 },

  /* 35 Far Drift        tunnel5,4 — deep drift beyond the Shore (10 levels) */
  { 5, 4, 4, 10, 8, 18, 4.30, 0.037, 5.70, 0.072, 0.0026, 0.21, 0.85 },
};
/* NOTE: tunnels 0-29 are the original Run 3 paths; 30+ are custom extended
   tunnels (procedural hazards, no baked bitmaps). */
