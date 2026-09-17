/*
 * story.js - display metadata for the world map, lore and characters.
 * 30 original Run 3 paths (ids 0-29), 12 custom extended tunnels (ids 30-41:
 * side spurs F/S/V, the small Wormhole X at the end of Primary, the Far
 * Shore / Far Drift beyond it, and their six branches) and 4 recovered
 * ORIGINAL paths (42-45): the home planet's two plan runs and the P wormhole
 * with its crossing - real levels that ship in the game but that the explore
 * map never linked in.
 * The character list below is in the ORIGINAL game's registry order and
 * carries the original names, descriptions, unlock hints and power-cell
 * prices (character/§'O§.init() in the decompiled source).
 */
"use strict";
(function (global) {
  /* NO VERSION HERE. The game version is defined once, in the engine
     (run3.c's RUN3_VERSION), and read back out of the wasm by app.js — that is
     what the label top-right shows. Nothing in this file or index.html names a
     version, so the number on screen can only ever be the build actually
     loaded. (global.GAME_VERSION is set by app.js from the engine.) */
  /* Characters. THIS ORDER IS THE ORIGINAL GAME'S REGISTRY ORDER
     (character/§'O§.init()): Runner, Skater, Student, Angel, Lizard,
     Gentleman, (id 6 is the unused random slot), (id 7 Zombie is not
     playable and has no class), Duplicator, Skier, Bunny, Child, Pastafarian,
     JackOLantern, Climber, Ghost, IceSkater, Pirate, Ninja.

     Fields:
       id     - the ORIGINAL character id (registry index)
       sprite - this port's sprite-atlas id (bake_assets.py CHARS order); the
                atlas order is a storage detail and is NOT the original order
       name   - CharacterDef name, with the §]w§ display-name override applied
                (IceSkater -> "Ice Skater", JackOLantern -> "Jack-o-Lantern")
       desc   - CharacterDef §7!9§ (the original's own one-liner)
       hint   - CharacterDef §;G§ (the original's unlock hint; "Or..." means
                the price below is the alternative)
       price  - CharacterDef §1V§, the power-cell price (§4H§() returns it and
                the unlock path spends it). 0 = free / not for sale.
       unlock - the non-purchase unlock condition. Only the conditions this
                port can evaluate are carried: the Skater's level-10 scene,
                the Lizard's 40 finished levels, the Child's low-power area
                (the Dark tunnel) and the Bunny's 8 achievements. Every other
                character's registry condition depends on the original's
                explore level-group tables (§>K§), which this port does not
                carry, so those are purchase-only here. */
  var C = [
    { id: 0, sprite: 0, name: "Runner", col: "#9fdcff", img: "character_runner.png",
      frontImg: "menu_characterselection_runnerfront.png",
      desc: "Wants to see everything at least once, and she does mean everything.",
      hint: null, price: 0, unlock: "free" },
    { id: 1, sprite: 1, name: "Skater", col: "#ffb05c", img: "character_skater.png",
      frontImg: "menu_characterselection_skaterfront.png",
      desc: "Enjoys challenging himself almost as much as he enjoys going fast.",
      hint: "Finish level 10 in Explore Mode to unlock this speedster. Or...",
      price: 300, unlock: { cut: [0, 9] } },
    { id: 2, sprite: 7, name: "Student", col: "#8fd8ff", img: "character_student.png",
      frontImg: "menu_characterselection_studentfront.png",
      desc: "Once you figure out how something works, it's yours to use. This includes gravity.",
      hint: "Collect power cells to find out what's in the backpack.",
      price: 10000, unlock: null },
    { id: 3, sprite: 3, name: "Angel", col: "#c4b5fd", img: "character_angel.png",
      frontImg: "menu_characterselection_angelfront.png",
      desc: "He solves practical problems, and creates personal problems.",
      hint: "Collect power cells to unlock this self-proclaimed hero.",
      price: 12000, unlock: null },
    { id: 4, sprite: 5, name: "Lizard", col: "#4ade80", img: "character_lizard.png",
      frontImg: "menu_characterselection_lizardfront.png",
      desc: "Lizards are known for being green and jumping really high.",
      hint: "Finish level 40 in Explore Mode to unlock this high-jumper. Or...",
      price: 600, unlock: { levels: 40 } },
    { id: 5, sprite: 8, name: "Gentleman", col: "#d9a6ff", img: "character_gentleman.png",
      frontImg: "menu_characterselection_gentlemanfront.png",
      desc: "Employs magnets for rapid procurement of power cells.",
      hint: "Earn power cells to unlock this eccentric power cell collector.",
      price: 2000, unlock: null },
    { id: 8, sprite: 12, name: "Duplicator", col: "#ff8fa3", img: "character_duplicator.png",
      frontImg: "menu_characterselection_duplicatorfront.png",
      desc: "Suspicious of others, but he trusts alien technology that's been lying around for ages. Go figure.",
      hint: "Collect power cells to unlock this self-replicator.",
      price: 6000, unlock: null },
    { id: 9, sprite: 14, name: "Skier", col: "#60a5fa", img: "character_skier.png",
      frontImg: "menu_characterselection_skierfront.png",
      desc: "Listen, ANYONE would have trouble staying in control on frictionless skis.",
      hint: null, price: 500, unlock: null },
    { id: 10, sprite: 10, name: "Bunny", col: "#fbbf24", img: "character_bunny.png",
      frontImg: "menu_characterselection_bunnyfront.png",
      desc: "It doesn't care if you call it the \"Rabbit\" or the \"Bunny.\" All it cares about is bouncing.",
      hint: "Earn any 8 achievements to unlock this bundle of energy.",
      price: 0, unlock: { ach: 8 } },
    { id: 11, sprite: 2, name: "Child", col: "#96eb78", img: "character_child.png",
      frontImg: "menu_characterselection_childfront.png",
      desc: "Sometimes clever, sometimes immature. For example: he carries a balloon to help him jump farther, but it's filled with water so he can splash people.",
      hint: "Complete the low-power area to unlock this light-weight youngster. Or...",
      price: 2000, unlock: { tunnel: 13 } },
    { id: 12, sprite: 9, name: "Pastafarian", col: "#f97316", img: "character_pastafarian.png",
      frontImg: "menu_characterselection_pastafarianfront.png",
      desc: "Her faith in the Flying Spaghetti Monster allows her to run across empty space. Her faith also allows her to ignore the Student's alternate explanation.",
      hint: "Earn power cells to unlock this pastafarian bridge builder.",
      price: 6000, unlock: null },
    { id: 13, sprite: 16, name: "Jack-o-Lantern", col: "#f97316", img: "character_jackolantern.png",
      frontImg: "menu_characterselection_jackolanternfront.png",
      desc: "Well, I guess that's one idea for a costume. Isn't it heavy, though?",
      hint: null, price: 1000, unlock: null },
    { id: 14, sprite: 11, name: "Climber", col: "#a3e635", img: "character_climber.png",
      frontImg: "character_climber.png",
      desc: "She helped build the Tunnels, but sadly she can't seem to explain the details.",
      hint: "Earn power cells to unlock this outside-the-box thinker.",
      price: 8000, unlock: null },
    { id: 15, sprite: 4, name: "Ghost", col: "#e2e8f0", img: "character_ghost.png",
      frontImg: "menu_characterselection_ghostfront.png",
      desc: "He worked very hard on this costume. Pretend to be scared, ok?",
      hint: null, price: 2000, unlock: null },
    { id: 16, sprite: 15, name: "Ice Skater", col: "#67e8f9", img: "character_iceskater.png",
      frontImg: "menu_characterselection_iceskaterfront.png",
      desc: "Everyone tries new things sometimes.",
      hint: null, price: 500, unlock: null },
    { id: 17, sprite: 13, name: "Pirate", col: "#dc2626", img: "character_pirate.png",
      frontImg: "menu_characterselection_piratefront.png",
      desc: "Yarr!",
      hint: null, price: 6000, unlock: null },
    { id: 18, sprite: 6, name: "Ninja", col: "#1e293b", img: "character_ninja.png",
      frontImg: "menu_characterselection_ninjafront.png",
      /* the original sets no §7!9§ for the Ninja */
      desc: null,
      hint: null, price: 2000, unlock: null }
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

  /* Tunnel map — 30 original paths + 12 extended + 4 recovered originals */
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
      lore: "The Low-Power Tunnel. The lights fade in and out — and the music goes with them." },
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
    { id: 34, kind: "name", name: "Far Shore", col: "#67e8f9", x: 4520, y: 270,
      /* MapOfTheStars.mp3: the original only ever mapped this track onto
         levels that did not ship (and Music.as silently substituted
         TravelTheGalaxy for them). The file is present now, so the deep
         exploration run plays it for real. */
      music: "MapOfTheStars",
      lore: "The far side of Wormhole X. Two hundred checkpoints of strange light and unfamiliar angles." },
    { id: 35, kind: "name", name: "Far Drift", col: "#f0abfc", x: 6180, y: 490,
      music: "TheVoid",
      lore: "Deep drift beyond the Far Shore. The way back is a long one." },

    /* ===== BRANCHES OF THE EXTENDED WORLD ===== */
    { id: 36, kind: "letter", name: "X-Rift", col: "#c084fc", x: 3400, y: 120,
      music: "WormholeToSomewhere",
      lore: "A narrow rift peeled off Wormhole X. The walls here hum in a lower key." },
    { id: 37, kind: "letter", name: "X-Echo", col: "#c084fc", x: 2850, y: 170,
      music: "WormholeToSomewhere",
      lore: "A branch of Wormhole X that repeats everything you say, four seconds late." },
    { id: 38, kind: "letter", name: "Shoal", col: "#67e8f9", x: 5240, y: 490,
      music: "TheVoid",
      lore: "A shallow run off the Far Shore. The floor gives way under a running step." },
    { id: 39, kind: "letter", name: "Reef", col: "#67e8f9", x: 5960, y: 540,
      music: "WormholeToSomewhere",
      lore: "A wide shelf off the Far Shore, riddled with gaps and old growth." },
    { id: 40, kind: "letter", name: "Wake", col: "#f0abfc", x: 6840, y: 660,
      music: "TheVoid",
      lore: "Far Drift's wake, still settling after something passed through ahead of you." },
    { id: 41, kind: "letter", name: "Ember", col: "#f0abfc", x: 6620, y: 620,
      music: "CrumblingWalls",
      lore: "A warm branch off Far Drift. Something burned here a long time ago." },

    /* ===== RECOVERED ORIGINAL PATHS =====
       Real levels that ship in the game but that the explore map never
       linked in: the home planet's two plan tunnels (each split across a
       second path in the files) and the P wormhole with its crossing. */
    { id: 42, kind: "name", name: "Home Plan A", col: "#93c5fd", x: 520, y: 540,
      music: "LeaveTheSolarSystem",
      lore: "The plan-A run under the home planet. Sixteen checkpoints of unmapped corridor." },
    { id: 43, kind: "name", name: "Home Plan C", col: "#93c5fd", x: 180, y: 470,
      music: "LeaveTheSolarSystem",
      lore: "The plan-C run. Somebody drew these walls and never told anyone." },
    { id: 44, kind: "letter", name: "Wormhole P", col: "#c084fc", x: 2320, y: -130,
      music: "WormholeToSomewhere",
      lore: "A wormhole the maps skipped. Ten checkpoints of it, humming quietly." },
    { id: 45, kind: "letter", name: "The Crossing", col: "#c084fc", x: 2620, y: -40,
      music: "WormholeToSomewhere",
      lore: "The single level where Wormhole P crosses something else. Nobody agrees on what." },
  ];

  /* Branching edges � unlock topology from the original game's
     explorelevels (unlockPath/unlockPoint); Primary seeds the early map */
  var EDGES = [
    [0, [5, 6, 8, 9, 10, 12, 13, 14, 28, 30, 33]], /* Primary -> A,B,G,L,M,Winter,Dark,Boxes,U,F + Wormhole X */
    [1, [2, 3, 42]],      /* Home0 -> Home1, Home2, Home Plan A */
    [2, [4]],             /* Home1 -> Home3 */
    [3, [43]],            /* Home2 -> Home Plan C */
    [6, [5, 22]],         /* B -> A, N */
    [9, [11]],            /* L -> T */
    [10, [16]],           /* M -> River */
    [12, [1, 29, 31]],    /* Winter -> Home0, W, S */
    [13, [15, 24]],       /* Dark -> Memory, NewlyFormed */
    [14, [27, 32]],       /* Boxes -> Coordination, V */
    [17, [23, 25]],       /* WormholeC -> Space, Runway0 */
    [18, [20, 21]],       /* WormholeH -> J, K */
    [19, [17, 18]],       /* WormholeI -> C, H */
    [22, [19, 44]],       /* WormholeN -> I, Wormhole P */
    [44, [45]],           /* Wormhole P -> the Crossing */
    [25, [26]],           /* Runway0 -> Runway1 */
    [28, [7]],            /* U -> D */
    [33, [34, 36, 37]],   /* Wormhole X -> Far Shore + X-Rift / X-Echo */
    [34, [35, 38, 39]],   /* Far Shore -> Far Drift + Shoal / Reef */
    [35, [40, 41]],       /* Far Drift -> Wake / Ember */
  ];

  /* NOTE: tunnels 0-29 are the original game's 30 map paths; 30-41 are
     custom extended tunnels; 42-45 are recovered original paths (real
     levels the explore map never linked in). Node positions are the
     original first waypoints (the rest are hand-placed, node = path start). */

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
