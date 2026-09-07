/*
 * story.js - display metadata for the world map, lore and characters.
 * Tunnel ids and order MUST match the TUNNELS[] table in levels/levels.c;
 * letters are shown until a tunnel is cleared, after which a rename beat
 * (cutscene) may give it a proper name, e.g. F-Tunnel -> "The River".
 * Lore follows the Run 3 wiki's characters and story beats (Runner maps the
 * tunnels; the Child names thin blue tunnels after rivers; the Duplicator
 * doodles on her map) but is written fresh for this tribute.
 */
"use strict";
(function (global) {
  var C = [
    { id: 0, name: "The Runner", col: "#9fdcff",
      desc: "Well-rounded and quick on the ground. The galaxy map is hers; she marks every tunnel she charts.",
      need: 0 },
    { id: 1, name: "The Skater", col: "#ffb05c",
      desc: "Fast strafing, shorter jumps. \"Don't knock it till you've tried it.\"",
      need: 1 },
    { id: 2, name: "The Child", col: "#96eb78",
      desc: "Weighs almost nothing - falls slowly, jumps high, and names thin blue tunnels after rivers.",
      need: 2 },
    { id: 3, name: "The Gentleman", col: "#d9a6ff",
      desc: "Falls slowly and is magnetically drawn to power cells. Ask him about tunnel names at your own risk.",
      need: 4 },
    { id: 4, name: "The Student", col: "#8fd8ff",
      desc: "A scientist without a lab coat. She runs the numbers on every tunnel's rotation.",
      need: 7 },
    { id: 5, name: "The Duplicator", col: "#ff8fa3",
      desc: "Not just a character - many. He doodles on the Runner's map to commemorate moments.",
      need: 10 }
  ];

  var T = [
    { id: 0, kind: "name",  name: "Main Tunnel", col: "#7dd3fc", x: 600, y: 70,
      lore: "A long, clean square tube. Somewhere beyond its far end the Runner's planet used to be. She runs, and she maps, and she does not look back." },
    { id: 1, kind: "letter", name: "A", col: "#5eead4", x: 330, y: 205,
      lore: "Hexagon walls humming in sixes. The Skater found it first and swears the air is faster here." },
    { id: 2, kind: "letter", name: "B", col: "#fcd34d", x: 870, y: 205,
      lore: "Wide pentagon slabs the colour of old paper. The Duplicator insists the B stands for backup copies." },
    { id: 3, kind: "letter", name: "C", col: "#f9a8d4", x: 210, y: 350,
      lore: "A turner of big square tiles. The Student clocked its rotation and filed it under useful but tedious." },
    { id: 4, kind: "letter", name: "D", col: "#86efac", x: 455, y: 345,
      lore: "Long octagonal halls - the longest stretch charted yet. The Gentleman keeps requesting a better name for it." },
    { id: 5, kind: "letter", name: "E", col: "#a5b4fc", x: 745, y: 345,
      lore: "Decagons, wide and few. Someone doodled a teapot on one of the walls. It is, they insist, too small to see." },
    { id: 6, kind: "letter", name: "F", col: "#67e8f9", x: 990, y: 345,
      lore: "A thin blue thread of a tunnel. The Child watches the walls stream past and thinks, very quietly, of rivers." },
    { id: 7, kind: "letter", name: "G", col: "#d8b4fe", x: 600, y: 480,
      lore: "Sixteen narrow tiles spinning past like a zoetrope. The Lizard slept through the turn into it; nobody woke him." },
    { id: 8, kind: "letter", name: "H", col: "#fdba74", x: 250, y: 490,
      lore: "Fast square halls. The Duplicator came here to get some space and, somehow, filled it." },
    { id: 9, kind: "letter", name: "J", col: "#bef264", x: 770, y: 480,
      lore: "Swift hexes. The Student's notes suggest the gravity here changes for no one in particular." },
    { id: 10, kind: "letter", name: "K", col: "#fda4af", x: 990, y: 480,
      lore: "A relentless sixteen-sided rush. The Angel says it almost looks like home - wherever home is now." },
    { id: 11, kind: "letter", name: "L", col: "#c4b5fd", x: 620, y: 600,
      lore: "The last tunnel on the chart, and the fastest. Past it there is nothing mapped at all." }
  ];

  /* from-tunnel -> tunnels it opens; a tunnel unlocks once any incoming edge
     has been cleared (the first tunnel is always open) */
  var EDGES = [
    [0, [1, 2]],
    [1, [3, 4]],
    [2, [5, 6]],
    [3, [7]],
    [4, [7, 8]],
    [5, [9]],
    [6, [10]],
    [7, [8, 11]],
    [8, [11]],
    [9, [11]],
    [10, [11]],
    [11, []]
  ];

  /* cutscene beat shown the first time a tunnel is cleared; some rename it */
  var RENAME = {
    6: { to: "The River", title: "What to call the F-Tunnel",
      text: "The Child watches the walls go by. \"Rivers are a thin blue line,\" he says, \"and this tunnel is like a thin blue line in space.\" He asks, very politely, if he can call it The River. The Runner marks it on her map before he can move it." },
    8: { to: "The Crowd", title: "Some space",
      text: "The Duplicator catches his breath at the gate while his duplicates keep arriving behind him. \"I came here to get some space,\" he sighs. \"It's called The Crowd now. Only fair.\" The Runner updates the chart." }
  };

  var STORY = { C: C, T: T, EDGES: EDGES, RENAME: RENAME };
  global.STORY = STORY;
  if (typeof module !== "undefined") module.exports = STORY;
})(typeof window !== "undefined" ? window : globalThis);
