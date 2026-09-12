/*
 * story.js - display metadata for the world map, lore and characters.
 * 30 original Run 3 paths (ids 0-29) plus 6 custom extended tunnels
 * (ids 30-35): side spurs F/S/V, the small Wormhole X at the end of
 * Primary, and the Far Shore / Far Drift on the other side.
 * Characters unlock through gameplay (clearing tunnels), no power cell cost.
 */
"use strict";
(function (global) {
  /* Characters — all unlock through gameplay (clearing tunnels) */
  var C = [
    { id: 0, name: "The Runner", col: "#9fdcff", img: "character_runner.png",
      frontImg: "menu_characterselection_runnerfront.png",
      desc: "Well-rounded and quick on the ground.", need: 0 },
    { id: 1, name: "The Skater", col: "#ffb05c", img: "character_skater.png",
      frontImg: "menu_characterselection_skaterfront.png",
      desc: "Fast strafing, shorter jumps.", need: 1 },
    { id: 2, name: "The Child", col: "#96eb78", img: "character_child.png",
      frontImg: "menu_characterselection_childfront.png",
      desc: "Weighs almost nothing, falls slowly.", need: 2 },
    { id: 3, name: "The Angel", col: "#c4b5fd", img: "character_angel.png",
      frontImg: "menu_characterselection_angelfront.png",
      desc: "Glides through the air effortlessly.", need: 3 },
    { id: 4, name: "The Ghost", col: "#e2e8f0", img: "character_ghost.png",
      frontImg: "menu_characterselection_ghostfront.png",
      desc: "Transparent, passes through walls.", need: 4 },
    { id: 5, name: "The Lizard", col: "#4ade80", img: "character_lizard.png",
      frontImg: "menu_characterselection_lizardfront.png",
      desc: "Climbs walls, sticks to surfaces.", need: 5 },
    { id: 6, name: "The Ninja", col: "#1e293b", img: "character_ninja.png",
      frontImg: "menu_characterselection_ninjafront.png",
      desc: "Extra fast and silent movement.", need: 6 },
    { id: 7, name: "The Student", col: "#8fd8ff", img: "character_student.png",
      frontImg: "menu_characterselection_studentfront.png",
      desc: "Analytical mind, runs the numbers.", need: 8 },
    { id: 8, name: "The Gentleman", col: "#d9a6ff", img: "character_gentleman.png",
      frontImg: "menu_characterselection_gentlemanfront.png",
      desc: "Falls slowly, drawn to power cells.", need: 10 },
    { id: 9, name: "The Pastafarian", col: "#f97316", img: "character_pastafarian.png",
      frontImg: "menu_characterselection_pastafarianfront.png",
      desc: "Devout follower of the Flying Spaghetti Monster.", need: 12 },
    { id: 10, name: "The Bunny", col: "#fbbf24", img: "character_bunny.png",
      frontImg: "menu_characterselection_bunnyfront.png",
      desc: "Highest jumper in the galaxy.", need: 14 },
    { id: 11, name: "The Climber", col: "#a3e635", img: "character_climber.png",
      frontImg: "character_climber.png",
      desc: "Hooks onto walls, never loses grip.", need: 16 },
    { id: 12, name: "The Duplicator", col: "#ff8fa3", img: "character_duplicator.png",
      frontImg: "menu_characterselection_duplicatorfront.png",
      desc: "Many in one, doodles on the map.", need: 18 },
    { id: 13, name: "The Pirate", col: "#dc2626", img: "character_pirate.png",
      frontImg: "menu_characterselection_piratefront.png",
      desc: "Adventurous and bold explorer.", need: 20 },
    { id: 14, name: "The Skier", col: "#60a5fa", img: "character_skier.png",
      frontImg: "menu_characterselection_skierfront.png",
      desc: "Fast on slopes and icy surfaces.", need: 22 },
    { id: 15, name: "The Icy", col: "#67e8f9", img: "character_iceskater.png",
      frontImg: "menu_characterselection_iceskaterfront.png",
      desc: "Slides on ice, cool under pressure.", need: 24 },
    { id: 16, name: "The Jack-o'-lantern", col: "#f97316", img: "character_jackolantern.png",
      frontImg: "menu_characterselection_jackolanternfront.png",
      desc: "A seasonal spirit, glows in the dark.", need: 26 }
  ];

  /* Map decorations */
  var MAP_DECOR = [
    { img: "map_planet.png", x: 1450, y: 50, w: 64, h: 64, opacity: 0.6 },
    { img: "map_teapot.png", x: 720, y: 310, w: 40, h: 40, opacity: 0.5 },
    { img: "map_wormhole.png", x: 1180, y: 390, w: 56, h: 56, opacity: 0.5 },
    { img: "map_snowflakes.png", x: 100, y: 100, w: 48, h: 48, opacity: 0.4 },
    { img: "map_bridge.png", x: 1100, y: 230, w: 44, h: 44, opacity: 0.4 },
    { img: "map_box.png", x: 1145, y: 290, w: 36, h: 36, opacity: 0.45 },
    { img: "map_movableboxicon.png", x: 1130, y: 240, w: 32, h: 32, opacity: 0.4 },
    { img: "map_speechbubbles.png", x: 580, y: 50, w: 36, h: 36, opacity: 0.35 },
    { img: "map_infinity.png", x: 575, y: 970, w: 52, h: 52, opacity: 0.5 },
    { img: "map_battery.png", x: 1070, y: 100, w: 36, h: 36, opacity: 0.4 },
    { img: "map_planetoidbelt0.png", x: 300, y: 130, w: 60, h: 60, opacity: 0.25 },
    { img: "map_planetoidbelt1.png", x: 850, y: 160, w: 50, h: 50, opacity: 0.25 },
    { img: "map_wormhole.png", x: 2400, y: 300, w: 44, h: 44, opacity: 0.7 },
    { img: "map_planet.png", x: 3050, y: 320, w: 56, h: 56, opacity: 0.5 },
  ];

  /* Tunnel map — 30 original Run 3 paths + 6 custom extended tunnels */
  var T = [
    /* ===== ORIGINAL PATHS ===== */
    { id: 0, kind: "name", name: "Primary", col: "#7dd3fc", x: 0, y: 0,
      music: "LeaveTheSolarSystem",
      lore: "The main tunnel. Clean square tiles stretching into infinity." },
    { id: 1, kind: "name", name: "Home 0", col: "#93c5fd", x: 400, y: 420,
      music: "LeaveTheSolarSystem",
      lore: "The Runner's first home tunnel. Where it all began." },
    { id: 2, kind: "name", name: "Home 1", col: "#93c5fd", x: 290, y: 315,
      music: "LeaveTheSolarSystem",
      lore: "A cozy square tunnel branching off Home 0." },
    { id: 3, kind: "name", name: "Home 2", col: "#93c5fd", x: 290, y: 315,
      music: "LeaveTheSolarSystem",
      lore: "Deeper into the home tunnels. The walls feel familiar." },
    { id: 4, kind: "name", name: "Home 3", col: "#93c5fd", x: 62, y: 314,
      music: "LeaveTheSolarSystem",
      lore: "The deepest home tunnel. The Child's favourite nap spot." },
    { id: 5, kind: "letter", name: "A", col: "#5eead4", x: 1796, y: 0,
      music: "LeaveTheSolarSystem",
      lore: "Heptagon corridors. The Skater found it first." },
    { id: 6, kind: "letter", name: "B", col: "#fcd34d", x: 1440, y: 264,
      music: "LeaveTheSolarSystem",
      lore: "Wide square slabs. The Duplicator calls it 'the closet'." },
    { id: 7, kind: "letter", name: "D", col: "#86efac", x: 1285, y: 637,
      music: "TheVoid",
      lore: "Pentagon tunnels with a green glow." },
    { id: 8, kind: "letter", name: "G", col: "#d8b4fe", x: 1817, y: 306,
      music: "WormholeToSomewhere",
      lore: "Octagon corridors that twist like a dream." },
    { id: 9, kind: "letter", name: "L", col: "#c4b5fd", x: 2040, y: 324,
      music: "UnsafeSpeeds",
      lore: "Hexagon tunnels spiralling ever deeper." },
    { id: 10, kind: "letter", name: "M", col: "#f0abfc", x: 1200, y: 240,
      music: "CrumblingWalls",
      lore: "Narrow pentagon corridors. Watch your step." },
    { id: 11, kind: "letter", name: "T", col: "#fb923c", x: 2160, y: 394,
      music: "WormholeToSomewhere",
      lore: "Wide nonagon halls. The Student timed its rotation." },
    { id: 12, kind: "name", name: "Winter", col: "#bfdbfe", x: 540, y: 138,
      music: "CrumblingWalls",
      lore: "Frozen tunnels where ice coats every surface." },
    { id: 13, kind: "name", name: "Dark", col: "#1e1b4b", x: 1000, y: 212,
      music: "TheVoid",
      lore: "Almost no light reaches here. The Ghost navigates by feel." },
    { id: 14, kind: "name", name: "Boxes", col: "#a78bfa", x: 1200, y: 240,
      music: "TravelTheGalaxy",
      lore: "Movable boxes block the path. Push them aside." },
    { id: 15, kind: "name", name: "Memory", col: "#60a5fa", x: 1016, y: 47,
      music: "TheVoid",
      lore: "A tunnel of half-remembered things." },
    { id: 16, kind: "name", name: "River", col: "#67e8f9", x: 940, y: 404,
      music: "TheVoid",
      lore: "A thin blue thread of a tunnel. The Child named it." },
    { id: 17, kind: "letter", name: "Wormhole C", col: "#c084fc", x: 2476, y: 103,
      music: "WormholeToSomewhere",
      lore: "A spiralling vortex of colour." },
    { id: 18, kind: "letter", name: "Wormhole H", col: "#c084fc", x: 2509, y: 250,
      music: "WormholeToSomewhere",
      lore: "The second wormhole. Deeper and stranger." },
    { id: 19, kind: "letter", name: "Wormhole I", col: "#c084fc", x: 2476, y: -14,
      music: "WormholeToSomewhere",
      lore: "Reality bends at the seams here." },
    { id: 20, kind: "letter", name: "Wormhole J", col: "#c084fc", x: 3021, y: 219,
      music: "WormholeToSomewhere",
      lore: "Narrow and fast. The Ninja's favourite." },
    { id: 21, kind: "letter", name: "Wormhole K", col: "#c084fc", x: 2767, y: 188,
      music: "WormholeToSomewhere",
      lore: "A relentless sixteen-sided rush." },
    { id: 22, kind: "letter", name: "Wormhole N", col: "#c084fc", x: 2180, y: -40,
      music: "WormholeToSomewhere",
      lore: "Octagon chaos in the wormhole network." },
    { id: 23, kind: "letter", name: "Wormhole Space", col: "#c084fc", x: 2950, y: 89,
      music: "WormholeToSomewhere",
      lore: "The deepest wormhole. Almost no light." },
    { id: 24, kind: "name", name: "Newly Formed", col: "#34d399", x: 672, y: -22,
      music: "LeaveTheSolarSystem",
      lore: "A newly formed tunnel. Fresh and unstable." },
    { id: 25, kind: "name", name: "Runway 0", col: "#fbbf24", x: 3327, y: 204,
      music: "LeaveTheSolarSystem",
      lore: "Wide hexagonal runway. Good for building speed." },
    { id: 26, kind: "name", name: "Runway 1", col: "#fbbf24", x: 3784, y: 310,
      music: "LeaveTheSolarSystem",
      lore: "The second runway. Even wider tiles." },
    { id: 27, kind: "name", name: "Coordination", col: "#2dd4bf", x: 1305, y: 133,
      music: "TravelTheGalaxy",
      lore: "Precise decagon corridors requiring perfect timing." },

    /* ===== EXTENDED TUNNELS ===== */
    { id: 28, kind: "letter", name: "U", col: "#a78bfa", x: 1440, y: 264,
      music: "TheVoid",
      lore: "Pentagon corridors with a violet glow." },
    { id: 29, kind: "letter", name: "W", col: "#34d399", x: 400, y: 420,
      music: "WormholeToSomewhere",
      lore: "Hexagonal corridors. The Duplicator got lost here." },

    /* ===== EXTENDED TUNNELS (custom) ===== */
    { id: 30, kind: "letter", name: "F", col: "#5eead4", x: 1650, y: 140,
      music: "LeaveTheSolarSystem",
      lore: "A shortcut spur off the Primary tunnel. The Skater swears it saves time." },
    { id: 31, kind: "letter", name: "S", col: "#bfdbfe", x: 650, y: 520,
      music: "CrumblingWalls",
      lore: "Snow-dusted corridors past Winter. Quiet, cold, easy to get lost in." },
    { id: 32, kind: "letter", name: "V", col: "#a78bfa", x: 1500, y: 80,
      music: "TravelTheGalaxy",
      lore: "Box-lined halls beyond the Boxes tunnel. Somebody has been stacking." },
    { id: 33, kind: "letter", name: "Wormhole X", col: "#c084fc", x: 2400, y: 300,
      music: "WormholeToSomewhere",
      lore: "A small, freshly-formed wormhole at the very end of the Primary tunnel." },
    { id: 34, kind: "name", name: "Far Shore", col: "#67e8f9", x: 2620, y: 220,
      music: "WormholeToSomewhere",
      lore: "The far side of Wormhole X. Strange light, unfamiliar angles." },
    { id: 35, kind: "name", name: "Far Drift", col: "#f0abfc", x: 3000, y: 300,
      music: "TheVoid",
      lore: "Deep drift beyond the Far Shore. The way back is a long one." },
  ];

  /* Branching edges � unlock topology from the original game's
     explorelevels (unlockPath/unlockPoint); Primary seeds the early map */
  var EDGES = [
    [0, [5, 6, 8, 9, 10, 12, 13, 14, 28, 30, 33]], /* Primary -> A,B,G,L,M,Winter,Dark,Boxes,U,F + Wormhole X */
    [1, [2, 3]],          /* Home0 -> Home1, Home2 */
    [2, [4]],             /* Home1 -> Home3 */
    [6, [5, 22]],         /* B -> A, N */
    [9, [11]],            /* L -> T */
    [10, [16]],           /* M -> River */
    [12, [1, 29, 31]],    /* Winter -> Home0, W, S */
    [13, [15, 24]],       /* Dark -> Memory, NewlyFormed */
    [14, [27, 32]],       /* Boxes -> Coordination, V */
    [17, [23, 25]],       /* WormholeC -> Space, Runway0 */
    [18, [20, 21]],       /* WormholeH -> J, K */
    [19, [17, 18]],       /* WormholeI -> C, H */
    [22, [19]],           /* WormholeN -> I */
    [25, [26]],           /* Runway0 -> Runway1 */
    [28, [7]],            /* U -> D */
    [33, [34]],           /* Wormhole X -> Far Shore (through the small wormhole) */
    [34, [35]],           /* Far Shore -> Far Drift */
  ];

  /* NOTE: tunnels 0-29 are the original game's 30 map paths; 30-35 are
     custom extended tunnels. Node positions are the original first
     waypoints (custom ones are hand-placed, node = path start). */

  /* Rename beats */
  var RENAME = {
    16: { to: "The River", title: "What to call it",
      text: "The Child watches the walls go by. \"Rivers are thin blue lines,\" he says. He asks if he can call it The River.",
      img: "river.png" },
  };

  /* Music per tunnel */
  var MUSIC_MAP = {};
  T.forEach(function (t) { MUSIC_MAP[t.id] = t.music.toLowerCase(); });

  /* Shop items */
  var SHOP = [
    { id: "cells_100", name: "100 Power Cells", cost: 0, desc: "Free starter pack", action: "cells", amount: 100 },
    { id: "cells_500", name: "500 Power Cells", cost: 50, desc: "Buy with 50 cells", action: "cells", amount: 500 },
    { id: "cells_1000", name: "1000 Power Cells", cost: 150, desc: "Buy with 150 cells", action: "cells", amount: 1000 },
  ];

  var STORY = { C: C, T: T, EDGES: EDGES, RENAME: RENAME, MUSIC: MUSIC_MAP, MAP_DECOR: MAP_DECOR, SHOP: SHOP };
  global.STORY = STORY;
  if (typeof module !== "undefined") module.exports = STORY;
})(typeof window !== "undefined" ? window : globalThis);
