/*
 * levels.c - the Run 3 tunnel structure.
 *
 * Paths match the original game's map: Primary, home tunnels, side paths,
 * dark, winter, boxes, memory, river, wormholes, and the infinite tunnel.
 * Each tunnel's level count and default layout are the most common values
 * from the decompiled SWF (see bake_levels.py). Every level of every tunnel
 * ships a baked tile bitmap (levels_baked.h): the originals decoded from the
 * game, and the extended tunnels - Wormhole X and beyond - authored as flat
 * bitmaps in ext_levels.txt. Nothing is generated at runtime.
 *
 * Layout format: n_sides, k_tiles (e.g. tunnel4,4 = 4 sides, 4 tiles/side).
 * Speed ramps from baseRps with rpsPer per checkpoint, capped at maxRps.
 */
#include "../run3.h"

const uint16_t NTUNNELS = 46;

const tunnel_t TUNNELS[MAX_TUNNELS] = {
  /* =================================================================
   * ORIGINAL RUN 3 PATHS — counts/layouts from the decompiled game
   * ================================================================= */

  /*  0 Primary         tunnel8,2 — the main starting path (65 levels) */
  { 8, 2, 0, 65, 3.00, 0.022, 4.00, 75.0 },

  /*  1 Home 0          tunnel12,1 — first home branch (7 levels) */
  { 12, 1, 0, 7, 3.20, 0.026, 3.70, 75.0 },

  /*  2 Home 1          tunnel13,2 — second home branch (1 level) */
  { 13, 2, 0, 1, 3.10, 0.024, 3.50, 75.0 },

  /*  3 Home 2          tunnel24,1 — third home branch (5 levels) */
  { 24, 1, 0, 5, 3.05, 0.023, 3.40, 75.0 },

  /*  4 Home 3          tunnel6,4 — deepest home branch (9 levels) */
  { 6, 4, 0, 9, 3.15, 0.025, 3.60, 75.0 },

  /*  5 Side Path A     tunnel8,2 — first side branch (9 levels) */
  { 8, 2, 0, 9, 3.40, 0.028, 4.20, 75.0 },

  /*  6 Side Path B     tunnel8,2 — box-themed side path (13 levels) */
  { 8, 2, 3, 13, 3.30, 0.027, 4.10, 75.0 },

  /*  7 Side Path D     tunnel18,1 — pentagon side path (14 levels) */
  { 18, 1, 4, 14, 3.60, 0.030, 4.50, 75.0 },

  /*  8 Side Path G     tunnel5,4 — octagon side path (10 levels) */
  { 5, 4, 2, 10, 3.50, 0.029, 4.30, 75.0 },

  /*  9 Side Path L     tunnel7,3 — hexagon side path (5 levels) */
  { 7, 3, 1, 5, 3.70, 0.031, 4.70, 75.0 },

  /* 10 Side Path M     tunnel6,3 — narrow pentagon (5 levels) */
  { 6, 3, 2, 5, 3.35, 0.026, 4.00, 75.0 },

  /* 11 Side Path T     tunnel5,4 — wide hexagon (7 levels) */
  { 5, 4, 4, 7, 3.80, 0.032, 4.90, 75.0 },

  /* 12 Winter          tunnel11,2 — ice tunnel (20 levels) */
  { 11, 2, 0, 20, 4.00, 0.034, 5.20, 75.0 },

  /* 13 Dark            tunnel5,4 — LOW-POWER tunnel (25 levels):
     lights fade out and back along the run (theme 5) */
  { 5, 4, 5, 25, 4.20, 0.036, 5.50, 75.0 },

  /* 14 Boxes           tunnel4,6 — box puzzle tunnel (11 levels) */
  { 4, 6, 3, 11, 3.60, 0.030, 4.50, 75.0 },

  /* 15 Memory          tunnel10,3 — memory corridor (7 levels) */
  { 10, 3, 0, 7, 3.70, 0.031, 4.60, 75.0 },

  /* 16 River           tunnel4,5 — the river tunnel (5 levels) */
  { 4, 5, 0, 5, 3.55, 0.029, 4.40, 75.0 },

  /* 17 Wormhole C      tunnel5,3 — first wormhole (9 levels) */
  { 5, 3, 2, 9, 4.10, 0.035, 5.30, 75.0 },

  /* 18 Wormhole H      tunnel9,2 — second wormhole (10 levels) */
  { 9, 2, 3, 10, 4.30, 0.037, 5.70, 75.0 },

  /* 19 Wormhole I      tunnel12,2 — third wormhole (7 levels) */
  { 12, 2, 1, 7, 3.90, 0.033, 5.00, 75.0 },

  /* 20 Wormhole J      tunnel4,6 — fourth wormhole (6 levels) */
  { 4, 6, 2, 6, 4.00, 0.034, 5.10, 75.0 },

  /* 21 Wormhole K      tunnel4,4 — fifth wormhole (8 levels) */
  { 4, 4, 4, 8, 4.40, 0.038, 5.90, 75.0 },

  /* 22 Wormhole N      tunnel5,2 — sixth wormhole (9 levels) */
  { 5, 2, 0, 9, 4.20, 0.036, 5.60, 75.0 },

  /* 23 Wormhole Space  tunnel16,1 — deepest wormhole (12 levels). The
     original ships no valid data here, so these are authored bitmaps
     like every other extended tunnel - no procedural fallback. */
  { 16, 1, 2, 12, 4.60, 0.090, 6.20, 75.0 },

  /* 24 Newly Formed    tunnel8,3 — newly formed tunnel (9 levels) */
  { 8, 3, 0, 9, 3.40, 0.028, 4.10, 75.0 },

  /* 25 Runway 0        tunnel4,4 — runway tunnel (11 levels) */
  { 4, 4, 1, 11, 3.50, 0.029, 4.30, 75.0 },

  /* 26 Runway 1        tunnel10,2 — second runway (8 levels) */
  { 10, 2, 3, 8, 3.60, 0.030, 4.40, 75.0 },

  /* 27 Coordination    tunnel5,4 — coordination tunnel (11 levels) */
  { 5, 4, 2, 11, 3.30, 0.026, 3.90, 75.0 },

  /* 28 Side Path U     tunnel6,2 — side path U (10 levels) */
  { 6, 2, 0, 10, 3.45, 0.028, 4.20, 75.0 },

  /* 29 Side Path W     tunnel4,4 — side path W (3 levels) */
  { 4, 4, 4, 3, 3.55, 0.029, 4.30, 75.0 },

  /* =================================================================
   * EXTENDED TUNNELS — authored flat bitmaps (levels/ext_levels.txt).
   * ================================================================= */

  /* 30 Side Path F     tunnel8,2 — shortcut spur off Primary (8 levels) */
  { 8, 2, 0, 8, 3.40, 0.050, 4.60, 75.0 },

  /* 31 Side Path S     tunnel6,3 — snowy spur past Winter (10 levels) */
  { 6, 3, 1, 10, 3.55, 0.048, 4.80, 75.0 },

  /* 32 Side Path V     tunnel4,6 — box-lined halls past Boxes (7 levels) */
  { 4, 6, 3, 7, 3.60, 0.050, 4.80, 75.0 },

  /* =================================================================
   * WORMHOLE X AND BEYOND — 200 levels each, split across a main run
   * and two sub-branches.
   * ================================================================= */

  /* 33 Wormhole X      tunnel5,3 — main run (140 levels) */
  { 5, 3, 2, 140, 4.10, 0.0209, 7.00, 75.0 },
  /* 34 Far Shore       tunnel7,3 — main run past Wormhole X (140) */
  { 7, 3, 4, 140, 4.00, 0.0216, 7.00, 75.0 },
  /* 35 Far Drift       tunnel5,4 — main run past the Shore (140) */
  { 5, 4, 1, 140, 4.30, 0.0194, 7.00, 75.0 },

  /* 36 X-Rift          tunnel9,2 — narrow branch off Wormhole X (30) */
  { 9, 2, 2, 30, 4.20, 0.0760, 6.40, 75.0 },
  /* 37 X-Echo          tunnel4,4 — echoing branch off Wormhole X (30) */
  { 4, 4, 2, 30, 4.05, 0.0800, 6.45, 75.0 },
  /* 38 Shoal           tunnel5,3 — crumble branch off Far Shore (30) */
  { 5, 3, 4, 30, 4.10, 0.0800, 6.50, 75.0 },
  /* 39 Reef            tunnel10,2 — wide branch off Far Shore (30) */
  { 10, 2, 4, 30, 4.15, 0.0780, 6.50, 75.0 },
  /* 40 Wake            tunnel6,3 — branch off Far Drift (30) */
  { 6, 3, 1, 30, 4.20, 0.0790, 6.55, 75.0 },
  /* 41 Ember           tunnel4,6 — branch off Far Drift (30) */
  { 4, 6, 1, 30, 4.25, 0.0780, 6.60, 75.0 },

  /* =================================================================
   * RECOVERED ORIGINAL PATHS — real levels in the SWF that the explore
   * map never linked in. Same bitmap decode as tunnels 0-29.
   * ================================================================= */

  /* 42 Home Plan A     tunnel6,3 — the home planet's plan-A run. The
     SWF splits it across homePlanA and homePlanAPart2 (16 levels) */
  { 6, 3, 0, 16, 3.30, 0.026, 4.25, 75.0 },
  /* 43 Home Plan C     tunnel7,3 — plan-C run, homePlanC + Part2 (22) */
  { 7, 3, 0, 22, 3.35, 0.026, 4.30, 75.0 },
  /* 44 Wormhole P      tunnel12,2 — the P wormhole (10 levels) */
  { 12, 2, 2, 10, 4.15, 0.035, 5.40, 75.0 },
  /* 45 Wormhole Crossing tunnel7,2 — the single crossing level (1) */
  { 7, 2, 3, 1, 4.50, 0.040, 6.00, 75.0 },
};
/* NOTE: tunnels 0-29 are the original Run 3 paths, 30-41 the custom extended
   tunnels and 42-45 the recovered original paths. Every tunnel has baked
   bitmaps - the engine generates nothing. */
