# Deobfuscation notes (original Run 3)

The demo is a re-implementation driven by data decoded out of the original
Flash game. This file records what was decoded, the mappings that are not
otherwise visible in the code, and which committed file each decoded artifact
lives in — so the decode survives without the original bundle.

## Where the original lives

| thing | location | committed |
| --- | --- | --- |
| decompiled ActionScript sources | `demos/run3/src/` (`bake_src.py`) | yes — 867 classes, 15 MB |
| readable mirror of the same tree | `demos/run3/readable_src/` (`make_readable.py`) | generated — see below |
| decompiler output (all `.as`, assets, level text) | `Run3.swf_Decompiler.com.zip` (repo root) | no — >100 MB, see `.gitignore` |
| extracted asset tree used by the older analysis scripts | `/tmp/run3assets/…` (`analyze_levels.py`) | no (scratch) |

The decompiled sources ship with the demo: `src/scripts/` is the game's own
tree as the decompiler emitted it (including the `§`-obfuscated folders), and
the two classes that only exist outside it sit at `src/`. Nothing in the site
reads them (or the zip) at runtime — every decoder below writes a committed
artifact, so a fresh checkout runs with no original files present.

## Reading the original: `src/` vs `readable_src/`

`src/` is the decompiler's output exactly as emitted and is what every decoder
and suite references by name, so it stays untouched — that faithfulness is what
lets a decode be re-checked later. `readable_src/` is a **generated mirror** of
it (`python3 make_readable.py`) in which the identifiers this project has
*established* are replaced by readable names, so the camera / layout / level /
staging classes can be read without a legend open in another window.

* Packages and classes are rewritten everywhere in the mirror (both are
globally unique by construction — a class name is a file name, a package name
is a directory), so the directory and file are renamed with them and every
`import` / `new` / `extends` / type annotation moves together.
* Members are rewritten **only inside the classes the project reads and edits**:
obfuscated member and local tokens are assigned per class, not globally, so a
global rewrite would mislabel unrelated members.
* Everything not established keeps its emitted token. A name in the mirror is
therefore either *known* or *untouched* — never a guess dressed up as a fact;
the few names read from use sites rather than stated by the source are marked
**inferred**.
* `readable_src/RENAME_MAP.md` lists every rename with its evidence. Some names
come straight out of the original: `Layout3D`'s abstract stubs are
`getRelativeIndex()`, `getPosition()`, `getIndexNearest()` and
`getAreaBounds()`, its spec factory `parseSpec(String)` matches `"line"`, a
grid spec and a tunnel spec, and `TunnelLayout3D`'s own errors say *"Tunnels
need at least three sides."*

Two decodes that came out of building the mirror, both relevant to cutscenes:

* **How a 3D node faces the camera** — `Billboard.lookAt(position, target, up,
  skipRoll)` builds an orthonormal basis from `(position - target)` and `up` and
  writes it to the target transform with `setRotation(Quaternion)`; the
  `Billboard` scene node calls it every frame against `World.camera`, which is
  how a staged actor keeps a flat sprite turned toward the viewer.
* **The camera's own orientation is a quaternion.** `World.camera` is a plain
  `Transform`, and a cutscene frame sets both its `position` (a `Point3D`) and
  its `rotation` (a `Quaternion`, `axis·sin(a)` / `cos(a)`). The renderer,
  `LevelView`, converts that quaternion to Euler angles on resize/render — so a
  scene's authored angle is expressible, it is only the bake that has yet to
  carry it (see the *Stage camera* note below).

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

**Cutscenes are composed by the engine** — a scene has no popup card: the held
tunnel and the staged cast render full-window exactly as gameplay does, and
`run3_cut_show` draws the dialogue bubble, the scene title and the Continue
prompt over them. The bubble is anchored on the line's **own** authored x/y
(dialog units on the original 800x600 stage, `x/2.5` = px, clamped to the box
the retired DOM bubble used: 24..76% across, 18..78% down) and wraps the text to
its own width, so a line spoken from the left wall reads on the left — a
centred full-width band read every line as if it came from the middle of the
tunnel. The host keeps only input, timing and audio; the `#cutview` /
`.cutstage` DOM nodes survive as the click target (and as the text the suites
read), with no card styling.

**Per-frame staging** — `STORY_TIMELINE` holds, per dialogue frame, the camera
and every actor's `ring` (tiles around the tube) and `z` (rows ahead of the
staged camera), plus props. Rows are anchored a row ahead of the camera so a
scene plays just in front of the viewer — the original camera sits *in* the
scene, level with the cast, and anchoring the cast down the tube shrank it to a
fraction of the runner's sprite size (a camera that read as "too far").

**Cast and prop scale** — a staged actor is an ordinary spritesheet of the
game's own size: `StageActor` builds its quad at
`(spriteSourceSize.x, spriteSourceSize.y, frame.w, frame.h) *
0.45681063122923593` world px, the same world pixels the level's geometry is in
(1 engine unit = 100 of them, `STAGE_PX`). So the sprite's screen height is
`FOCAL * frame.h * 0.4568 / 100 / depth` and nothing else — no anchor, no
quarter-screen rule, no wall floor. Props are measured in the SAME unit: a
prop's `size` is its panel **width in character heights**, from its own pixel
size in the original against the ~25px character (map 40/25 = 1.6, candy
25/25 = 1.0, TrainRide balloon 18.27/25 ~ 0.73). Sizing props in tunnel tiles
instead (the old `size * G.tile * FOCAL/dd`) made every panel ~6 characters
wide next to a cast member a row or two further down the bore.

**Where the cast can stand** — an actor is pinned to the tube WALL: `ring`
selects a point on the level's own cross-section at radius `R`, so a cast
member's screen x is where that wall point projects and its screen y is the
tunnel's perspective for its depth. The original places each character at a
free world `(x, y, z)`, so it can stand anywhere in the frame (mid-tube, in
front of the camera, beside another character at the same depth). Reproducing
that means giving the stage a free `(side, lift)` offset from the axis — rolled
by `G.rot` exactly like the staged camera's — instead of a ring index.

**Last checkpoint** — a scene that fires as a checkpoint completes stages on
the level's TAIL, so the rows ahead are the NEXT level's bitmap. The tunnel's
final checkpoint has no next level, so those rows are the solid fill: the
staged camera backs off `STAGE_TAIL_BACK` rows from the tail so the level's own
rows fill the view instead of a blank wall. A level whose FINISH row sits
before the end of its own terrain needs no back-off — see the win row below.

**Win row vs level end** — the original's `result-win` trigger (`BAKED_WIN`) is
where that checkpoint's cutscene starts, *not* the end of the level's terrain:
only a handful of levels carry one, and both of the originals' continue for
dozens of rows past it (the Low-Power Tunnel's last part finishes on a glow
wedge that widens and then narrows; home 1's corridor runs on). Every level
therefore loads ALL of its authored rows, and `BAKED_WIN` is kept as the
level's FINISH row (`level_finish_row`), which is what gameplay, the progress
bar, the hint route and the cutscene staging use. Truncating the terrain at the
win row was the "cutoff level problem": the rows after it fell into the solid
fill, so the tunnel visibly ended a few rows past the trigger.

**Stage camera** — the authored `Point3D` offsets are normalised to continuous
`side = x/250`, `lift = y/150` (clamped to ±1) so the host can ease the held
frame instead of snapping between buckets. They are a camera **position**, not
an angle — the per-frame authored camera *quaternion* is a separate field the
bake does not carry yet (see `readable_src`, above). The original's cutscene camera is an unparented `Transform` whose rest
position is on the tunnel AXIS (`x=2, y=0` in `Tunnel`), and each scene frame
moves it to an authored `(x, y)` in world axes while the tunnel rotates under
it — so `run3_stage_cam` folds `(side, lift)` into `cam_place` as the camera's
position *relative to the axis*, at one facet apothem per authored unit, in the
held frame's own (world) axes (rolled by that frame's `G.rot`, since the port
emulates the camera roll by rotating the level). The authored `y` is measured
with **+y along gravity** — the tunnel starts with the floor at +y, which is
why the map in `ComingThrough` can fall toward it — while the port's tube space
has the runner's floor at **negative y** (`corner()` puts side 0 below the
axis), so `lift` is negated before the roll: taking it as-is put the staged
camera on the far side of the axis from the floor in every scene, which threw
the cast off the bottom of the frame and left only the small distant sprites
bunched around the screen centre. The held tunnel is viewed **straight down the
bore** (`cam_pitch = 0`, the axis at `CY`), not through the gameplay chase
camera's pitch: reusing that camera put every scene a facet apothem up the
runner's wall and tilted 0.22 rad down. Mapping the offsets onto the view roll
instead also tilted every scene's tunnel; the placement is what every camera
consumer sees (tube, cast, props, `run3_runner_screen`). Its distance is
`CAM_BACK_STAGE` apothems (closer than the chase camera's `CAM_BACK`), because
the original views the scene from inside it rather than from behind a wall.

**Authored cutscene camera — position AND quaternion** (`camera-spec.md` §10).
The scenes set the camera two ways, and the bake now reads both: field writes
(`Point3D = tunnel.<cam>.position; .x/.y/.z = ...` + an
`axis*sin(A), cos(A)` quaternion) and the decompiler's push/pop form
(`§§push(tunnel.<cam>); §§push(x); §§push(y); §§push(<z>);
§§pop().<setPosition>(...)` + `QuaternionUtils.setFromEuler(...)`), which
Candy uses as `setPosition(0, 150, endZ - 800)` with a small tilt and **no
level roll** — the bake used to miss that form, leaving Candy on the fallback
path where the port rolls the whole level and the angle comes out wrong. The
`z` carries a base: `endZ + k` (the level's own end, where a cutscene fires —
resolvable exactly, since the level's own length cancels), `startZ + k`, or a
bare literal whose absolute origin is not in the data (measured across the
baked scenes it disagrees with the cast's place by -90..+130 tunnel radii).
Sprites are drawn far larger in a cutscene than on the track — up to 200 px on
the original's 600 px stage — so the staged front cast is anchored at a quarter
of the screen height and the rest of the cast scales with depth from it,
never closer than one apothem (the wall the cast stands on). The view itself
carries a quarter turn (`STAGE_GAUGE`): the port's cross-section frame puts side
0's midpoint at `-PI/2` while the original's layout angle origin is the `+x`
axis (`TunnelLayout3D.getIndexNearest` indexes a side by `atan2(y, x)` of the
point turned into the level's own frame and rounds it by `TAU/n`), so at the
authoring's own identity rotation every scene came out 90° round the bore — the
cast's world places read correctly (they move with the level) while the shot did
not. It applies to AUTHORED scenes only: a fallback scene is shot in the port's
own frame (the level already rolled to the runner's facet), so it takes no
gauge. The authored rotation is applied as ONE quaternion turn (the original's
`QuaternionUtils.rotateVector(conj(q), offset)`), never as a pitch/yaw/roll
chain: the bake builds the quaternions as `Rx*Ry*Rz`, so reading their Euler
components back by name and applying each about a different axis turned a
scene's roll about the bore into a TILT of the bore — the tunnel leaned instead
of the frame turning. The cast and the props ride that tilt too, because the
original's billboards take their up axis from the actor rather than the camera
(`StageActor.updateBillboard`), and the stars / neighbouring tunnels /
wormhole, drawn outside the staged projection, take it as the single angle
`view_roll`.

**Level load camera** — `open_level` sets the view roll to the target for that
spot (`cam_rot_target()`), not to 0. 78% of baked levels spawn on a wall that
is not "up", so zeroing the roll made every load visibly rotate the tunnel into
place and a just-loaded cutscene backdrop show the wrong angle.

**Gameplay camera — facet roll and lateral pan** (`camera-spec.md`) — the
original keeps the runner upright on the tunnel floor and slides the LEVEL
around them: the runner never moves on screen (except cutscenes and the
in-place animation), the tunnel both rotates and pans, and the floor under
them is level. The port now derives the view roll from the flat chord rather
than the runner's exact wall point, so it is an exact `-360`°`·side/n` step
(90° on a square, 60° on a hexagon), eased while steering, frozen while
airborne (the `gravSide` latch) and blended across a level seam with the same
`t` as the shape. The camera then translates laterally onto the runner's spot
*along the chord* and follows the jump / death drift vertically, which lands
the runner at the fixed low third `(CX, 2H/3)` by construction instead of by
algebra that cancels; the camera distance is keyed to the facet apothem so the
framing is rock-steady across a side and identical at every level's tile size.
The authored per-level `BAKED_ROT` no longer offsets gameplay (it would break
the exact steps); staged scenes keep their authored `side`/`lift` on top of the
facet roll. `verify_cam.js` pins the whole contract: exact `360/n` steps
off-seam, a pan that really sweeps the chord, a zero screen offset in every
state, and a roll that glides (never steps) on landing.

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

**World map pan** — the map is a single flat 2D world (`map_nodes` /
`map_wp` coordinates, x ~55..5760 and y ~40..640 after the extended world was
authored). It pans freely on BOTH axes now: `run3_map_scroll_xy(dx, dy)` from
the host's drag / wheel / arrow keys, `run3_map_scroll_x/y` to read it back, and
`run3_map_center_on(tun)` to put a tunnel's node under the view centre (used
when a scene gallery replay returns to the map). The background parchment, the
polylines, the checkpoint dots and the nodes are all drawn in world space with
the same pan, and the picker adds it back (`map_pick`), so a dot drawn at
screen `(sx, sy)` is picked at `(sx, sy)`. `verify_map.js` asserts the pan is 2D
and clamped, that centring makes a node pick at the view centre, and — the
regression this replaces — that moving EITHER axis alone repaints the frame.

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
| the 10 unmapped `explorelevels` paths | tunnels 42-45 (4 of them; see below) | `levels/bake_levels.py` |
| map polylines + node positions | `levels/map_assets.h` | `levels/bake_map.py` |
| character sprite sheets, tile textures | `levels/assets_data.h`, `levels/char_*.h` | `levels/bake_assets.py` |
| text glyph atlas | `levels/font_data.h` | `levels/bake_font.py` |
| music track names / per-level music ids | `story.js` (`T[].music`), `app.js` (`LEVEL_TRACKS`) | hand-mapped |
| `MapOfTheStars.mp3` | `assets/music/mapofthestars.mp3`, enum 7 in `levels/bake_levels.py` | — |

**The unmapped original paths.** `orig_levels.bin` ships 39 paths, but the
explore map only links 29 of them (+ `wormholeSpace`, which has no valid data
and is authored). The other ten are not scenery: `homePlanA` /
`homePlanAPart2`, `homePlanC` / `homePlanCPart2`, `wormholeP` and
`wormholeCrossing` are full-content levels (60-95% void, varied
cross-sections, per-level `tileWidth`s) that nothing in the decompiled map
data ever reached, and they are baked as tunnels 42-45 (a `Part2` path is the
same tunnel continued, so its levels concatenate onto the first part's). The
remaining four (`homeLaunchSiteA` / `homeLaunchSiteC`: single `model` scenes,
no tunnel; `working`: a dev scratch path of unassigned level ids) are not
playable tunnel content.

Level bit layout (from `levels_baked.h`): 1 bit per tile, `bit = row*n*k +
side*k + lane`, LSB-first, out-of-range rows read solid; levels are authored
mostly empty, so sparse holes are the hazard. Three bit planes share that
layout: `BAKED_BITS` (solid), `BAKED_CRUMB` (shakes and falls when stepped on)
and `BAKED_GLOW` (a `~glow` terrain layer). A glow tile is an ordinary solid
tile whose surface IS the tunnel's light, so it stays lit when a low-power
level's power is 0 — the Low-Power Tunnel finishes on a strip of them. Its
colour is the original's own recipe, `"glow" -> Color.interpolate(colour,
14540253, 0.2)`: the level tint pulled 20% toward 0xDDDDDD, then fogged with
distance and nothing else. The port used to paint a hot gold core with a
brighter inner quad, which read as loose gold tiles floating in a black tunnel
rather than a lit floor. `char_*_h` carry the per-character
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
node verify_levels.js && node verify_hint.js  # data + H-route geometry
node verify_cam.js && node verify_map.js      # camera contract + 2D map pan
node verify_stage.js && node verify_app.js    # rendering stages + full-stack smoke
```

The suites all run against `run3.wasm` directly (no browser); `verify_app.js`
boots the real `app.js` behind a minimal DOM stub. `verify_cam.js` and
`verify_map.js` pin the camera model (`camera-spec.md`) and the free 2D world
map pan respectively.

## Not committed / not decoded

* The original bundle itself (100 MB+; the extracted `.as` tree is committed).
* Original cutscene-only pose sheets: they are not extractable from the packed
  atlases, so staged actors use the gameplay run stance.
* Speaker-per-line tracking (the bytecode keeps it in obfuscated locals);
  bubble side is used as the cue instead.
