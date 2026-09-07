/*
 * levels.c - the level data. Twelve branching tunnels, each one continuous
 * tube split into 45-second checkpoint levels. Average ~69 levels per tunnel
 * (830 total). Display metadata (letters/names/lore/rename beats) lives in
 * the host page; this file is the tuning the engine plays.
 *
 * Tunnel sim profile fields:
 *   shape  = archetype index (sides/tiles/tile-size table in run3.c)
 *   theme  = palette 0..4
 *   levels = checkpoint count (45 s each)
 *   blockEvery = rows between 4-row void blocks (0 = none)
 *   blockStart = first level that has blocks
 *   baseRps/rpsPer/maxRps   = rows/s ramp across levels (cap 7.0)
 *   holeStart/holePer/maxHole = hazard ramp across levels (cap 0.26)
 *   tileMul = tile-size multiplier
 */
#include "../run3.h"

const uint16_t NTUNNELS = 12;

const tunnel_t TUNNELS[MAX_TUNNELS] = {
  /* 0 Main Tunnel     - gentle square intro                      (75) */
  { 0, 0, 75,  0,   0, 2.2, .016, 3.3, .040, .0014, .10, 1.0 },
  /* 1 A-Tunnel        - hexes, first wall voids late             (65) */
  { 3, 1, 65, 26,  42, 2.6, .019, 3.9, .050, .0015, .12, 1.0 },
  /* 2 B-Tunnel        - wide pentagon slabs                       (80) */
  { 2, 2, 80, 22,  36, 2.8, .021, 4.2, .050, .0016, .13, .90 },
  /* 3 C-Tunnel        - big-square turners                        (55) */
  { 1, 3, 55, 24,  32, 2.9, .023, 4.4, .055, .0017, .14, 1.0 },
  /* 4 D-Tunnel        - octagons, longer                            (90) */
  { 4, 4, 90, 20,  30, 3.2, .025, 4.8, .060, .0018, .16, 1.0 },
  /* 5 E-Tunnel        - decagons, fewer but wider tiles           (70) */
  { 5, 0, 70, 18,  28, 3.4, .027, 5.1, .065, .0019, .18, 1.0 },
  /* 6 F-Tunnel        - dodecagons pick up speed                  (60) */
  { 6, 1, 60, 16,  26, 3.6, .029, 5.4, .070, .0020, .19, 1.0 },
  /* 7 G-Tunnel        - hexadecagons, many tiles                  (85) */
  { 7, 2, 85, 14,  24, 3.9, .031, 5.8, .075, .0021, .21, 1.0 },
  /* 8 H-Tunnel        - fast squares                               (50) */
  { 0, 3, 50, 12,  22, 4.2, .033, 6.2, .080, .0022, .22, .90 },
  /* 9 J-Tunnel        - swift hexes                               (70) */
  { 3, 4, 70, 12,  20, 4.4, .035, 6.5, .085, .0023, .23, .90 },
  /* 10 K-Tunnel       - relentless 16-gon rush                    (75) */
  { 7, 0, 75, 10,  18, 4.6, .037, 6.9, .090, .0024, .25, 1.0 },
  /* 11 L-Tunnel       - the final gauntlet                        (55) */
  { 4, 1, 55, 10,  16, 4.8, .039, 7.0, .095, .0025, .26, .90 },
};
