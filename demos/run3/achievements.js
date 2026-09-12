/* achievements.js - achievement roster copied from the original Run 3
 * (names, descriptions and point values from the decompiled Achievements).
 * Skipped originals this engine cannot express: Wind Sailor + A Breath of
 * Fresh Nothing (no sustained out-of-tunnel floating), I Would Bounce 500
 * More (no hold-to-jump), Falling to Pieces (a death ends endless runs).
 * Earning 8 achievements unlocks the Planet Stolen cutscene.
 */
"use strict";
(function (global) {
  var ACHIEVEMENTS = [
    { id: 0, name: "Galactic Vandalism", desc: "Dislodge 700 tiles.", pts: 50 },
    { id: 1, name: "Boldly Gone", desc: "Complete the Primary tunnel.", pts: 250 },
    { id: 2, name: "Slipping and Sliding to Victory", desc: "Complete the Winter tunnel.", pts: 100 },
    { id: 3, name: "Thoroughly Lost", desc: "Complete four different tunnels.", pts: 100 },
    { id: 4, name: "A Journey of 1000 Light-Years", desc: "Run 800 meters in Infinite Mode.", pts: 100 },
    { id: 5, name: "Tetrahedron Enthusiast", desc: "Hold 40 power cells at once in one run.", pts: 150 },
    { id: 7, name: "A Glimpse of New Places", desc: "Locate the Wormhole.", pts: 300 },
    { id: 9, name: "Where the Power Cells Are", desc: "Reach 2000 meters in Infinite Mode without dying.", pts: 500 },
    { id: 10, name: "Unlimited Endurance", desc: "Reach 5000 meters in Infinite Mode.", pts: 1000 },
  ];
  global.ACHIEVEMENTS = ACHIEVEMENTS;
  global.ACH_PLANETSTOLEN_NEED = 8;
})(typeof window !== "undefined" ? window : globalThis);
