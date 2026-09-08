/*
 * levels.c - faithful recreation of the original Run 3 tunnel structure.
 *
 * Paths match the original game's map: Primary, home tunnels, side paths,
 * dark, winter, boxes, memory, river, wormholes, and the infinite tunnel.
 * Each tunnel uses the exact n-side, k-tile layout from the decompiled SWF.
 *
 * Layout format: n_sides, k_tiles (e.g. tunnel4,4 = 4 sides, 4 tiles/side)
 * The original game uses layouts from tunnel4,2 up to tunnel30,1.
 */
#include "../run3.h"

const uint16_t NTUNNELS = 30;

const tunnel_t TUNNELS[MAX_TUNNELS] = {
  /* =================================================================
   * ORIGINAL RUN 3 PATHS — layouts from the decompiled game
   * ================================================================= */

  /*  0 Primary         tunnel4,4 — the main starting path (128 levels) */
  { 4, 4, 0, 128, 26, 42, 3.00, 0.022, 4.00, 0.040, 0.0014, 0.10, 0.70 },

  /*  1 Home 0          tunnel12,1 — first home branch (8 levels) */
  { 12, 1, 0, 8, 4, 8, 3.20, 0.026, 3.70, 0.045, 0.0020, 0.12, 1.20 },

  /*  2 Home 1          tunnel4,4 — second home branch (6 levels) */
  { 4, 4, 0, 6, 3, 6, 3.10, 0.024, 3.50, 0.042, 0.0018, 0.11, 0.70 },

  /*  3 Home 2          tunnel4,4 — third home branch (5 levels) */
  { 4, 4, 0, 5, 3, 5, 3.05, 0.023, 3.40, 0.041, 0.0017, 0.10, 0.70 },

  /*  4 Home 3          tunnel12,1 — deepest home branch (4 levels) */
  { 12, 1, 0, 4, 2, 4, 3.15, 0.025, 3.60, 0.043, 0.0019, 0.11, 1.20 },

  /*  5 Side Path A     tunnel7,3 — first side branch (12 levels) */
  { 7, 3, 0, 12, 8, 15, 3.40, 0.028, 4.20, 0.050, 0.0020, 0.14, 1.00 },

  /*  6 Side Path B     tunnel4,4 — box-themed side path (10 levels) */
  { 4, 4, 3, 10, 6, 12, 3.30, 0.027, 4.10, 0.048, 0.0019, 0.13, 0.70 },

  /*  7 Side Path D     tunnel5,4 — pentagon side path (14 levels) */
  { 5, 4, 4, 14, 8, 18, 3.60, 0.030, 4.50, 0.055, 0.0022, 0.16, 0.85 },

  /*  8 Side Path G     tunnel8,2 — octagon side path (10 levels) */
  { 8, 2, 2, 10, 6, 12, 3.50, 0.029, 4.30, 0.052, 0.0021, 0.15, 1.00 },

  /*  9 Side Path L     tunnel6,3 — hexagon side path (15 levels) */
  { 6, 3, 1, 15, 8, 20, 3.70, 0.031, 4.70, 0.058, 0.0023, 0.17, 0.85 },

  /* 10 Side Path M     tunnel5,2 — narrow pentagon (8 levels) */
  { 5, 2, 2, 8, 4, 10, 3.35, 0.026, 4.00, 0.047, 0.0019, 0.13, 0.85 },

  /* 11 Side Path T     tunnel9,2 — wide hexagon (10 levels) */
  { 9, 2, 4, 10, 6, 12, 3.80, 0.032, 4.90, 0.060, 0.0024, 0.18, 1.20 },

  /* 12 Winter          tunnel16,1 — ice tunnel (18 levels) */
  { 16, 1, 0, 18, 10, 22, 4.00, 0.034, 5.20, 0.065, 0.0025, 0.20, 1.40 },

  /* 13 Dark            tunnel16,1 — dark void tunnel (15 levels) */
  { 16, 1, 4, 15, 8, 18, 4.20, 0.036, 5.50, 0.070, 0.0026, 0.21, 1.40 },

  /* 14 Boxes           tunnel4,4 — box puzzle tunnel (12 levels) */
  { 4, 4, 3, 12, 6, 15, 3.60, 0.030, 4.50, 0.055, 0.0022, 0.16, 0.70 },

  /* 15 Memory          tunnel9,2 — memory corridor (8 levels) */
  { 9, 2, 0, 8, 4, 10, 3.70, 0.031, 4.60, 0.058, 0.0023, 0.17, 1.20 },

  /* 16 River           tunnel10,2 — the river tunnel (10 levels) */
  { 10, 2, 0, 10, 6, 12, 3.55, 0.029, 4.40, 0.053, 0.0021, 0.15, 1.20 },

  /* 17 Wormhole C      tunnel12,2 — first wormhole (12 levels) */
  { 12, 2, 2, 12, 6, 15, 4.10, 0.035, 5.30, 0.068, 0.0025, 0.20, 1.20 },

  /* 18 Wormhole H      tunnel12,2 — second wormhole (10 levels) */
  { 12, 2, 3, 10, 5, 12, 4.30, 0.037, 5.70, 0.072, 0.0026, 0.21, 1.20 },

  /* 19 Wormhole I      tunnel5,2 — third wormhole (8 levels) */
  { 5, 2, 1, 8, 4, 10, 3.90, 0.033, 5.00, 0.062, 0.0024, 0.19, 0.85 },

  /* 20 Wormhole J      tunnel8,2 — fourth wormhole (8 levels) */
  { 8, 2, 2, 8, 4, 10, 4.00, 0.034, 5.10, 0.064, 0.0024, 0.19, 1.00 },

  /* 21 Wormhole K      tunnel16,1 — fifth wormhole (10 levels) */
  { 16, 1, 4, 10, 5, 12, 4.40, 0.038, 5.90, 0.075, 0.0027, 0.22, 1.40 },

  /* 22 Wormhole N      tunnel8,3 — sixth wormhole (8 levels) */
  { 8, 3, 0, 8, 4, 10, 4.20, 0.036, 5.60, 0.070, 0.0026, 0.21, 1.00 },

  /* 23 Wormhole Space  tunnel16,1 — deepest wormhole (12 levels) */
  { 16, 1, 2, 12, 6, 15, 4.60, 0.040, 6.20, 0.080, 0.0028, 0.23, 1.40 },

  /* 24 Newly Formed    tunnel8,2 — newly formed tunnel (6 levels) */
  { 8, 2, 0, 6, 3, 8, 3.40, 0.028, 4.10, 0.050, 0.0020, 0.14, 1.00 },

  /* 25 Runway 0        tunnel6,4 — runway tunnel (8 levels) */
  { 6, 4, 1, 8, 4, 10, 3.50, 0.029, 4.30, 0.052, 0.0021, 0.15, 0.85 },

  /* 26 Runway 1        tunnel6,4 — second runway (6 levels) */
  { 6, 4, 3, 6, 3, 8, 3.60, 0.030, 4.40, 0.055, 0.0022, 0.16, 0.85 },

  /* 27 Coordination    tunnel10,3 — coordination tunnel (5 levels) */
  { 10, 3, 2, 5, 3, 6, 3.30, 0.026, 3.90, 0.047, 0.0019, 0.13, 1.20 },

  /* 28 Side Path U     tunnel5,3 — side path U (8 levels) */
  { 5, 3, 0, 8, 4, 10, 3.45, 0.028, 4.20, 0.051, 0.0020, 0.14, 0.85 },

  /* 29 Side Path W     tunnel6,2 — side path W (6 levels) */
  { 6, 2, 4, 6, 3, 8, 3.55, 0.029, 4.30, 0.053, 0.0021, 0.15, 0.85 },
};
/* NOTE: only the 30 original Run 3 tunnels ship (0-29). No extended/new stuff. */
