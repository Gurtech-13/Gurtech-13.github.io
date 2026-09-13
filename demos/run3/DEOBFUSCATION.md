# Deobfuscation notes (original Run 3)

The demo is a re-implementation driven by data decoded out of the original
Flash game. This file records what was decoded, the mappings that are not
otherwise visible in the code, and which committed file each decoded artifact
lives in — so the decode survives without the original bundle.

## Where the original lives

| thing | location | committed |
| --- | --- | --- |
| decompiled ActionScript sources | `demos/run3/src/` (`bake_src.py`) | yes — 867 classes, 15 MB |
| decompiler output (all `.as`, assets, level text) | `Run3.swf_Decompiler.com.zip` (repo root) | no — >100 MB, see `.gitignore` |
| extracted asset tree used by the older analysis scripts | `/tmp/run3assets/…` (`analyze_levels.py`) | no (scratch) |

The decompiled sources ship with the demo: `src/scripts/` is the game's own
tree as the decompiler emitted it (including the `§`-obfuscated folders), and
the two classes that only exist outside it sit at `src/`. Nothing in the site
reads them (or the zip) at runtime — every decoder below writes a committed
artifact, so a fresh checkout runs with no original files present.

## Shape of the decompiled source

* Obfuscated identifiers are emitted as `§name§` (a `\xA7`-delimited token),
  e.g. `§^s§`, `§9E§`, `§#!P§`. Files themselves sit in obfuscated folders
  (``§3!b§/Inflation.as``, ``scripts/§`_§/§^s§.as``; the folder name really
  does contain a backtick).
* Method bodies come out as a flat stack machine
  (`push(x); push(y); call(); loop0: while(true) { … }`) instead of readable
  expressions; locals are `_locN_`, params stay named `paramN`.
* Cutscene classes are a sequence of `function init()` / `function frameN()`
  methods. The frame a statement belongs to (not file order) is what the bake
  scripts key everything on.
* Dialogue is either `dialog.METHOD("text", x, y, …)` or the pushed form
  `push(dialog); push("text"); push(x); push(y)`. `scale(<1)` before a line
  means the tiny overlay text (e.g. ChangeTheSubject's lost spoon).
* The actor class (the ~40 KB ``§^s§`` class) exposes the per-frame placement
  call `§9E§(param1:Number, param2:Number[, …])` — the two-number form in every
  scene frame is *place at ring/row* — and `transform.§+n§()` reads the current
  position. Stage camera per frame is `tunnel.<cam>.position = new Point3D(x,
  y, z)` in original pixels (`y+ = high`).

## Decoded mappings

**Obfuscated scene actor vars → character ids** — hand-resolved per scene from
the dialogue roles and staging behaviour; kept in `bake_cutscenes.py` as the
`OBF_CHAR` table (`§#!P§`, `§-P§`, `§7W§`, `§7!!§`, …), because the same token
means different characters in different scenes. Readable vars resolve  themselves from the actor constructor (`new §^s§(§9_§, §'O§.skater, …)`).

**Props** — there is no boat or hover-platform mesh. In both BoatRide and
StopSolvingProblems the obfuscated `§7!!§` is a bare `Transform`: the cast is
re-parented onto it (`param1.transform.§5!,§(§7!!§)`) and it moves the frame of
reference, so it must draw **nothing**. The only visible panels the scenes
build are real models, decoded into `PANEL_PROPS` / `VEHICLE_PROP` in
`bake_cutscenes.py`:

| scene | source call | prop |
| --- | --- | --- |
| Candy | `new §%!§(tunnel,false,new §8f§("Candy.png",25,25))` | `tex_candy` (25×25 panel) |
| BoatRide | `new §8f§("cutscene/TrainRide/Balloon.png",18.27,36.54,false)` | `tex_balloon_train` |
| ComingThrough | `new §,T§(§=l§.§9T§(12364668),§<!9§.§7!P§(),true,20,0.5,12.5)` | flat `0xBCAB7C` panel (see below) |
| StopSolvingProblems | — (only the invisible transform) | none |
| ChangeTheSubject | — (the "lost wooden spoon" is dialogue, `§&!S§.scale(0.1)`) | none |

**The ComingThrough map has no texture.** `§=l§.§9T§(12364668)` builds six
copies of one colour (12364668 = `0xBCAB7C`) and the shader is
`§<!9§.§7!P§()`, whose vertex/fragment programs are `mov v0, vt1` / `mov oc,
v0` over a `PositionColorVertex` — vertex colour only, no texture sampler. The
`assets/images/singledpi_texture_mapwithteapot.png` artwork belongs to the
Teapot/Insanity wall hanging, not to this scene, so the port draws a flat
`0xBCAB7C` panel (40×25 in the original) and nothing else.

Everything else that merely looks like a placement call (`tunnel`, `map`,
`§?I§`, `§4!R§`) is filtered out in `build_timeline()`.

**Cutscene → stage** — each scene's `STORY_STAGE` entry is the tunnel/level the
original staged it against; mid-tunnel triggers (`STORY_MID_CUTS`) are the
checkpoint where the scene fires, with the tunnel it unlocks
(ComingThrough at Primary-10 unlocks the Skater, etc.).

**Per-frame staging** — `STORY_TIMELINE` holds, per dialogue frame, the camera
and every actor's `ring` (tiles around the tube) and `z` (rows ahead of the
staged camera), plus props. Rows are anchored 6 rows ahead of the camera so a
scene plays just in front of the viewer.

**Stage camera** — the authored `Point3D` offsets are normalised to continuous
`side = x/250`, `lift = y/150` (clamped to ±1) so the host can ease the held
frame instead of snapping between buckets. At render time the roll is
`cam_rot_target() - side * 0.28`, `lift` a pitch of `0.06`. A staged scene
renders without stepping the sim (S_CUT), so the side has to be folded into the
view roll directly (`run3_stage_cam`); writing it only into the eased target
(run3_step) silently dropped it and every scene kept the tunnel's own roll.

**Level load camera** — `open_level` sets the view roll to the target for that
spot (`cam_rot_target()`), not to 0. 78% of baked levels spawn on a wall that
is not "up", so zeroing the roll made every load visibly rotate the tunnel into
place and a just-loaded cutscene backdrop show the wrong angle.

**Outside the tunnel (`space.c`)** — the original's Space backdrop
(`com/player03/run3/level/<Space>.as`) constructs exactly three models: a
`Planet`, a `Wormhole` and a distant `TunnelSection`, and its
`setTunnelSection` (`Section entered`) re-parents the Planet and Wormhole onto
that section's own map position (`param1.<node>.x/.y`). It also wraps the
camera in the 6-face skybox cube (`skybox0..5.png`). The demo keeps that
layering:

1. the star sphere (baked from the skybox faces into `levels/skybox_data.h`,
   drawn by `sky_render`),
2. the other tunnels branching off (`space_outer`): the nearest other tunnels
   by map-node distance, each drawn as a short length of ITS OWN tube built
   from its own `n_sides` / `k_tiles` / `baseTile`, placed in the direction of
   its map node and sized by the same projection,
3. the wormhole (`space_wormhole`): the baked `singledpi_texture_wormhole`
   spun as a disc at the far end of the bore,
4. the player's own tube, then the player.

Everything outside is drawn BEFORE the tube and shares its camera pitch, roll
and origin, so the opaque wall (with its holes) occludes it: the space scene
shows through the holes and the far opening rather than painted over the wall.
`run3_space_visible()` / `run3_space_survived()` expose the two counts so a
suite can prove both that the layer painted and that the tube covered part of
it (equal counts would mean it was drawn on top).

**Engine file layout** — the engine is split so no file owns everything:
`run3.h` is the host API; `math.c` holds `ssin/scos/ssqrt/satan2/h32` (the wasm
build has no libm); `gfx.c` is the framebuffer and its primitives; `render.c`
is the camera, sky, tube, staged cast, font and map; `space.c` is everything
outside the tube; `run3.c` is the simulation, state and exports. `render_int.h`
declares what they share internally.

## Asset inventory (`demos/run3/assets/`)

| dir | files | what it is | consumer |
| --- | --- | --- | --- |
| `images/` | 126 | character sprite sheets, tile/prop textures, map + menu art, closeups, the 6 skybox faces, `singledpi_texture_wormhole.png` | the ones the engine draws are baked by `levels/bake_assets.py` into `assets_data.h` / `char_*.h` / `map_assets.h`, and the skybox faces into `skybox_data.h`; the rest (menu art, student closeups, `character_shadow`, `controls_*`, most `map_*/menu_*` icons) are UI-only and unused by the demo |
| `atlas/` | 17 | per-character frame metadata (grid + frame roles) | `bake_assets.py` (`atlas/<char>.json`) |
| `cutscenes/` | 67 | one still per cutscene plus the two pop textures (`trainride_balloon.png`, `candy_balloon.png`) | `app.js` (`sceneIcon`, story cards) and `bake_assets.py` (`tex_balloon_train`) |
| `fonts/` | 3 | glyph atlas + metrics | `levels/bake_font.py` → `font_data.h` |
| `music/` | 8 | the seven authored tracks + `tone.mp3` | `app.js` (`LEVEL_TRACKS`, `MUSIC_MAP`) |

## Original → committed artifact

| original | decoded into | decoder |
| --- | --- | --- |
| cutscene dialogue + staging + camera | `cutscenes.js` (`STORY_CUT`, `STORY_PATH_CUT`, `STORY_CAMSHOT`, `STORY_TIMELINE`) | `bake_cutscenes.py` |
| `explorelevels` level text (paths, RLE terrain bitmaps, music/colour, light triggers) | `levels/levels_baked.h`, `levels/levels.c` | `levels/bake_levels.py` |
| map polylines + node positions | `levels/map_assets.h` | `levels/bake_map.py` |
| character sprite sheets, tile textures | `levels/assets_data.h`, `levels/char_*.h` | `levels/bake_assets.py` |
| text glyph atlas | `levels/font_data.h` | `levels/bake_font.py` |
| music track names / per-level music ids | `story.js` (`T[].music`), `app.js` (`LEVEL_TRACKS`) | hand-mapped |
| `MapOfTheStars.mp3` | `assets/music/mapofthestars.mp3`, enum 7 in `levels/bake_levels.py` | — |

Level bit layout (from `levels_baked.h`): 1 bit per tile, `bit = row*n*k +
side*k + lane`, LSB-first, out-of-range rows read solid; levels are authored
mostly empty, so sparse holes are the hazard. `char_*_h` carry the per-character
frame counts and `CHAR_ANIM_RANGE(ch, STATE, DIR)` the run/jump/fall/land ranges
(AnimationSet A/B above).

## Units and conventions

* `ring` — tiles around the tube (`ring / k` = side, remainder = lane);
  `z`/row — tiles along the tunnel; `row` 1 = one tile.
* Dialogue `x`/`y` — original dialog units, `/2.5` = px on the 800×600 stage,
  centre origin; bubble side (`x < 0`) is the speaker cue.
* `run3_level_music()` — 1..7 select `LEVEL_TRACKS`, 8 = silence, 0 = tunnel map.
  `Music.as` maps `MapOfTheStars` → `TravelTheGalaxy` because the mp3 was
  missing from the original bundle; the file ships now, so `MapOfTheStars` is
  a real track (Far Shore plays it) instead of being substituted.
* Staged states: `S_CUT` (held frame as a backdrop) and `S_GATE` (checkpoint
  pause). Both render the host-placed cast instead of the runner.

## Reproducing

```bash
python3 bake_src.py                    # needs the zip (decompiled sources)
python3 bake_cutscenes.py              # needs the zip (cutscene data)
python3 levels/bake_levels.py          # needs levels/orig_levels.bin
python3 levels/bake_map.py             # needs levels/orig_map.json
bash build.sh                          # needs ../../zig/zig.exe (or zig on PATH)
node verify_stage.js && node verify_app.js   # data + full-stack smoke tests
```

## Not committed / not decoded

* The original bundle itself (100 MB+; the extracted `.as` tree is committed).
* Original cutscene-only pose sheets: they are not extractable from the packed
  atlases, so staged actors use the gameplay run stance.
* Speaker-per-line tracking (the bytecode keeps it in obfuscated locals);
  bubble side is used as the cue instead.
