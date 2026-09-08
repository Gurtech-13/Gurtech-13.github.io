/*
 * story.js - display metadata for the world map, lore and characters.
 * Faithfully matches the original Run 3 path structure with 48 tunnels.
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
  ];

  /* Tunnel map — 48 tunnels matching original Run 3 */
  var T = [
    /* ===== ORIGINAL PATHS ===== */
    { id: 0, kind: "name", name: "Primary", col: "#7dd3fc", x: 600, y: 70,
      music: "LeaveTheSolarSystem",
      lore: "The main tunnel. Clean square tiles stretching into infinity." },
    { id: 1, kind: "name", name: "Home 0", col: "#93c5fd", x: 290, y: 315,
      music: "LeaveTheSolarSystem",
      lore: "The Runner's first home tunnel. Where it all began." },
    { id: 2, kind: "name", name: "Home 1", col: "#93c5fd", x: 350, y: 280,
      music: "LeaveTheSolarSystem",
      lore: "A cozy square tunnel branching off Home 0." },
    { id: 3, kind: "name", name: "Home 2", col: "#93c5fd", x: 210, y: 360,
      music: "LeaveTheSolarSystem",
      lore: "Deeper into the home tunnels. The walls feel familiar." },
    { id: 4, kind: "name", name: "Home 3", col: "#93c5fd", x: 62, y: 314,
      music: "LeaveTheSolarSystem",
      lore: "The deepest home tunnel. The Child's favourite nap spot." },
    { id: 5, kind: "letter", name: "A", col: "#5eead4", x: 330, y: 205,
      music: "LeaveTheSolarSystem",
      lore: "Heptagon corridors. The Skater found it first." },
    { id: 6, kind: "letter", name: "B", col: "#fcd34d", x: 870, y: 205,
      music: "LeaveTheSolarSystem",
      lore: "Wide square slabs. The Duplicator calls it 'the closet'." },
    { id: 7, kind: "letter", name: "D", col: "#86efac", x: 455, y: 345,
      music: "TheVoid",
      lore: "Pentagon tunnels with a green glow." },
    { id: 8, kind: "letter", name: "G", col: "#d8b4fe", x: 600, y: 480,
      music: "WormholeToSomewhere",
      lore: "Octagon corridors that twist like a dream." },
    { id: 9, kind: "letter", name: "L", col: "#c4b5fd", x: 620, y: 600,
      music: "UnsafeSpeeds",
      lore: "Hexagon tunnels spiralling ever deeper." },
    { id: 10, kind: "letter", name: "M", col: "#f0abfc", x: 130, y: 280,
      music: "CrumblingWalls",
      lore: "Narrow pentagon corridors. Watch your step." },
    { id: 11, kind: "letter", name: "T", col: "#fb923c", x: 770, y: 480,
      music: "WormholeToSomewhere",
      lore: "Wide nonagon halls. The Student timed its rotation." },
    { id: 12, kind: "name", name: "Winter", col: "#bfdbfe", x: 120, y: 140,
      music: "CrumblingWalls",
      lore: "Frozen tunnels where ice coats every surface." },
    { id: 13, kind: "name", name: "Dark", col: "#1e1b4b", x: 1050, y: 130,
      music: "TheVoid",
      lore: "Almost no light reaches here. The Ghost navigates by feel." },
    { id: 14, kind: "name", name: "Boxes", col: "#a78bfa", x: 1120, y: 260,
      music: "TravelTheGalaxy",
      lore: "Movable boxes block the path. Push them aside." },
    { id: 15, kind: "name", name: "Memory", col: "#60a5fa", x: 1020, y: 50,
      music: "TheVoid",
      lore: "A tunnel of half-remembered things." },
    { id: 16, kind: "name", name: "River", col: "#67e8f9", x: 940, y: 404,
      music: "TheVoid",
      lore: "A thin blue thread of a tunnel. The Child named it." },
    { id: 17, kind: "letter", name: "Wormhole C", col: "#c084fc", x: 1180, y: 420,
      music: "WormholeToSomewhere",
      lore: "A spiralling vortex of colour." },
    { id: 18, kind: "letter", name: "Wormhole H", col: "#c084fc", x: 1200, y: 540,
      music: "WormholeToSomewhere",
      lore: "The second wormhole. Deeper and stranger." },
    { id: 19, kind: "letter", name: "Wormhole I", col: "#c084fc", x: 1280, y: 480,
      music: "WormholeToSomewhere",
      lore: "Reality bends at the seams here." },
    { id: 20, kind: "letter", name: "Wormhole J", col: "#c084fc", x: 1350, y: 360,
      music: "WormholeToSomewhere",
      lore: "Narrow and fast. The Ninja's favourite." },
    { id: 21, kind: "letter", name: "Wormhole K", col: "#c084fc", x: 1380, y: 220,
      music: "WormholeToSomewhere",
      lore: "A relentless sixteen-sided rush." },
    { id: 22, kind: "letter", name: "Wormhole N", col: "#c084fc", x: 1300, y: 100,
      music: "WormholeToSomewhere",
      lore: "Octagon chaos in the wormhole network." },
    { id: 23, kind: "letter", name: "Wormhole Space", col: "#c084fc", x: 1400, y: 600,
      music: "WormholeToSomewhere",
      lore: "The deepest wormhole. Almost no light." },
    { id: 24, kind: "name", name: "Newly Formed", col: "#34d399", x: 672, y: -22,
      music: "LeaveTheSolarSystem",
      lore: "A newly formed tunnel. Fresh and unstable." },
    { id: 25, kind: "name", name: "Runway 0", col: "#fbbf24", x: 400, y: 420,
      music: "LeaveTheSolarSystem",
      lore: "Wide hexagonal runway. Good for building speed." },
    { id: 26, kind: "name", name: "Runway 1", col: "#fbbf24", x: 135, y: 430,
      music: "LeaveTheSolarSystem",
      lore: "The second runway. Even wider tiles." },
    { id: 27, kind: "name", name: "Coordination", col: "#2dd4bf", x: 1305, y: 133,
      music: "TravelTheGalaxy",
      lore: "Precise decagon corridors requiring perfect timing." },

    /* ===== EXTENDED TUNNELS ===== */
    { id: 28, kind: "letter", name: "U", col: "#a78bfa", x: 870, y: 680,
      music: "TheVoid",
      lore: "Pentagon corridors with a violet glow." },
    { id: 29, kind: "letter", name: "W", col: "#34d399", x: 1120, y: 500,
      music: "WormholeToSomewhere",
      lore: "Hexagonal corridors. The Duplicator got lost here." },
    { id: 30, kind: "name", name: "Mega", col: "#ef4444", x: 1300, y: 600,
      music: "UnsafeSpeeds",
      lore: "Sixteen-sided mega tunnel. Relentless speed." },
    { id: 31, kind: "name", name: "Labyrinth", col: "#fde047", x: 330, y: 760,
      music: "CrumblingWalls",
      lore: "A square maze with crumbling walls." },
    { id: 32, kind: "name", name: "Chaos", col: "#fb923c", x: 700, y: 760,
      music: "WormholeToSomewhere",
      lore: "Octagon chaos. Nothing is predictable here." },
    { id: 33, kind: "name", name: "Pentarchy", col: "#f472b6", x: 510, y: 680,
      music: "UnsafeSpeeds",
      lore: "Five-sided empires rising and falling." },
    { id: 34, kind: "name", name: "Dodecahedron", col: "#86efac", x: 1200, y: 780,
      music: "CrumblingWalls",
      lore: "Twelve-sided perfection. The Gentleman's favourite." },
    { id: 35, kind: "name", name: "Twist", col: "#f0abfc", x: 370, y: 600,
      music: "TheVoid",
      lore: "Hexagon corridors that twist without warning." },
    { id: 36, kind: "name", name: "Icosahedron", col: "#fde047", x: 1400, y: 700,
      music: "UnsafeSpeeds",
      lore: "Twenty-sided. Almost round. Almost safe." },
    { id: 37, kind: "name", name: "Wide", col: "#93c5fd", x: 80, y: 420,
      music: "LeaveTheSolarSystem",
      lore: "Ultra-wide square tunnel. The Child barely fits." },
    { id: 38, kind: "name", name: "Swift", col: "#86efac", x: 1050, y: 600,
      music: "WormholeToSomewhere",
      lore: "Swift octagon corridors. Blink and you'll miss them." },
    { id: 39, kind: "name", name: "Gauntlet", col: "#fbbf24", x: 1120, y: 700,
      music: "UnsafeSpeeds",
      lore: "Decagon gauntlet. Only the fastest survive." },
    { id: 40, kind: "name", name: "Abyss", col: "#1e3a5f", x: 1300, y: 800,
      music: "TheVoid",
      lore: "A bottomless thirty-sided pit." },
    { id: 41, kind: "name", name: "Prism", col: "#f472b6", x: 1020, y: 850,
      music: "TravelTheGalaxy",
      lore: "Fourteen-sided corridors refracting light." },
    { id: 42, kind: "name", name: "Nebula", col: "#c084fc", x: 820, y: 880,
      music: "WormholeToSomewhere",
      lore: "Eighteen-sided nebula corridors." },
    { id: 43, kind: "name", name: "Supernova", col: "#ef4444", x: 620, y: 920,
      music: "UnsafeSpeeds",
      lore: "Twenty-four-sided explosion of speed." },
    { id: 44, kind: "name", name: "Blackhole", col: "#0f172a", x: 220, y: 920,
      music: "TheVoid",
      lore: "Sixteen-sided gravitational collapse." },
    { id: 45, kind: "name", name: "Infinity", col: "#f59e0b", x: 600, y: 1000,
      music: "WormholeToSomewhere",
      lore: "The last tunnel. An endless octagonal maze." },
    { id: 46, kind: "name", name: "Comet", col: "#fde047", x: 420, y: 880,
      music: "UnsafeSpeeds",
      lore: "Twenty-two-sided comet streak." },
    { id: 47, kind: "name", name: "Nova", col: "#fb923c", x: 780, y: 680,
      music: "TravelTheGalaxy",
      lore: "Ten-sided nova burst of energy." },
  ];

  /* Branching edges */
  var EDGES = [
    [0, [1, 5, 6, 24]],       /* Primary -> Home0, A, B, NewlyFormed */
    [1, [2]],                  /* Home0 -> Home1 */
    [2, [3]],                  /* Home1 -> Home2 */
    [3, [4]],                  /* Home2 -> Home3 */
    [5, [7, 10, 12]],          /* A -> D, M, Winter (Winter side-shoot off early A) */
    [6, [8, 14]],             /* B -> G, Boxes */
    [7, [9, 11]],             /* D -> L, T */
    [8, [13, 15]],            /* G -> Dark, Memory */
    [9, [16, 17]],            /* L -> River, WormholeC */
    [10, [25]],               /* M -> Runway0 */
    [11, [18]],               /* T -> WormholeH */
    [12, [19]],               /* Winter -> WormholeI */
    [13, [20]],               /* Dark -> WormholeJ */
    [14, [21]],               /* Boxes -> WormholeK */
    [15, [22]],               /* Memory -> WormholeN */
    [16, [23]],               /* River -> WormholeSpace */
    [17, [26]],               /* WormholeC -> Runway1 */
    [18, [27]],               /* WormholeH -> Coordination */
    [24, [28, 29]],           /* NewlyFormed -> U, W */
    [25, [30]],               /* Runway0 -> Mega */
    [26, [31]],               /* Runway1 -> Labyrinth */
    [27, [32]],               /* Coordination -> Chaos */
    [28, [33]],               /* U -> Pentarchy */
    [29, [34]],               /* W -> Dodecahedron */
    [30, [35]],               /* Mega -> Twist */
    [31, [36]],               /* Labyrinth -> Icosahedron */
    [32, [37]],               /* Chaos -> Wide */
    [33, [38]],               /* Pentarchy -> Swift */
    [34, [39]],               /* Dodecahedron -> Gauntlet */
    [35, [40]],               /* Twist -> Abyss */
    [36, [41]],               /* Icosahedron -> Prism */
    [37, [42]],               /* Wide -> Nebula */
    [38, [43, 47]],            /* Swift -> Supernova, Nova (Nova side-shoot) */
    [39, [44]],               /* Gauntlet -> Blackhole */
    [40, [45]],               /* Abyss -> Infinity */
    [41, [45]],               /* Prism -> Infinity */
    [42, [45]],               /* Nebula -> Infinity */
    [43, [45]],               /* Supernova -> Infinity */
    [44, [45, 46]],            /* Blackhole -> Infinity, Comet (Comet side-shoot) */
  ];

  /* NOTE: tunnels 0-29 are the original game path and complete first;
     30+ (Mega..Nova) are side-shoots branching off originals and never
     gate original progression. */

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
