# Deobfuscation notes (original Run 3)

The demo is a re-implementation driven by data decoded out of the original
Flash game. This file records what was decoded, the mappings that are not
otherwise visible in the code, and which committed file each decoded artifact
lives in — so the decode survives without the original bundle.

## Where the original lives

| thing | location | committed |
| --- | --- | --- |
| decompiler output (all `.as`, assets, level text) | `Run3.swf_Decompiler.com.zip` (repo root) | no — >100 MB, see `.gitignore` |
| extracted asset tree used by the older analysis scripts | `/tmp/run3assets/…` (`analyze_levels.py`) | no (scratch) |

Nothing in the site reads the zip at runtime: every decoder below writes a
committed artifact, so a fresh checkout runs with no original files present.

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

**Vehicles / props** — `§7!!§` is the boat (BoatRide) and the hover platform
(StopSolvingProblems); Candy's `transform.tran(x, y, size*4)` frames become the
candy prop keyframes. Everything else that merely looks like a placement call
(`tunnel`, `map`, `§?I§`, `§4!R§`) is filtered out in `build_timeline()`.

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
frame instead of snapping between buckets.

## Original → committed artifact

| original | decoded into | decoder |
| --- | --- | --- |
| cutscene dialogue + staging + camera | `cutscenes.js` (`STORY_CUT`, `STORY_PATH_CUT`, `STORY_CAMSHOT`, `STORY_TIMELINE`) | `bake_cutscenes.py` |
| `explorelevels` level text (paths, RLE terrain bitmaps, music/colour, light triggers) | `levels/levels_baked.h`, `levels/levels.c` | `levels/bake_levels.py` |
| map polylines + node positions | `levels/map_assets.h` | `levels/bake_map.py` |
| character sprite sheets, tile textures | `levels/assets_data.h`, `levels/char_*.h` | `levels/bake_assets.py` |
| text glyph atlas | `levels/font_data.h` | `levels/bake_font.py` |
| music track names / per-level music ids | `story.js` (`T[].music`), `app.js` (`LEVEL_TRACKS`) | hand-mapped |

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
* `run3_level_music()` — 1..6 select `LEVEL_TRACKS`, 8 = silence, 0 = tunnel map.
* Staged states: `S_CUT` (held frame as a backdrop) and `S_GATE` (checkpoint
  pause). Both render the host-placed cast instead of the runner.

## Reproducing

```bash
python3 bake_cutscenes.py              # needs the zip (cutscene data)
python3 levels/bake_levels.py          # needs levels/orig_levels.bin
python3 levels/bake_map.py             # needs levels/orig_map.json
bash build.sh                          # needs ../../zig/zig.exe (or zig on PATH)
node verify_stage.js && node verify_app.js   # data + full-stack smoke tests
```

## Not committed / not decoded

* The original bundle and its extracted `.as` tree (size + upstream content).
* Original cutscene-only pose sheets: they are not extractable from the packed
  atlases, so staged actors use the gameplay run stance.
* Speaker-per-line tracking (the bytecode keeps it in obfuscated locals);
  bubble side is used as the cue instead.
