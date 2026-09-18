# Runaway — the engine behind Run 3

## What it is

**Runaway is player03's own engine.** The author says so himself, in the post
linked from the blog's tag page:

> Runaway is a game engine, named after **Run** (the game series) and **Away3D**
> (the 3D rendering library).

So the name is a portmanteau of the game and the ActionScript 3D library it
started from — not a reference to anything in the SWF.  Confirmed: the string
`runaway` appears **nowhere** in any build (`runIII`, v1.12.1, v1.13.0), so the
name only exists in the author's own writing, not in the shipped code.

The engine is **written in Haxe** (the author's blog is titled *"I Call Haxe!"*
and is mostly about porting the Run games to Haxe/OpenFL/Lime).  Both facts
together explain everything about these SWFs.

## The three facts that identify it

Taken from the 2014 build's own class names and imports:

1. It renders through **Flash Stage3D with hand-written AGAL**, not a scene
   library: `flash.display3D.Context3D`, `Program3D`, `VertexBuffer3D`,
   `Context3DBlendFactor`, `Context3DCompareMode`, plus
   `openfl.utils.AGALMiniAssembler` and `com.adobe.utils.PerspectiveMatrix3D`.
2. It has **its own scene graph, meshes, physics world, layout library and math
   library** — `Transform`, `World3D`, `Cube`, `Layout3D`, `Matrix3D`,
   `Quaternion`.  That is the engine.
3. It runs on **NME in 2014 and OpenFL/Lime later** (see *Version history*), with
   `haxe.*` and the Haxe runtime linked in.

## Layers, by SWF package

Counts are from the 2014 build (743 classes total, `RUN3_2014_MAP.md` has the
full inventory).

| layer | packages | classes | what it is |
| --- | --- | --- | --- |
| **Runaway** — render | `nme3D`, `nme3D.model`, `nme3D.shader`, `nme3D.shader.vertex`, `nme3D.physics` | 34 | Stage3D context, meshes, materials, vertex formats, the frame world |
| **Runaway** — math | `haxeutils.math`, `haxeutils.math.geom` | 17 | matrices, quaternions, points, angle math, easing |
| **Runaway** — UI/sound | `haxeutils.display`, `haxeutils.display.animation`, `haxeutils.sound` | 26 | the sprite/UI toolkit and the music manager |
| **Runaway** — vertex data | `com.player03.vertexdata` | 9 | AGAL vertex attribute iterators |
| **Runaway** — framework | 60 obfuscated top-level packages | 141 | scene graph, layout, render state, achievements |
| Game | `com.player03.run3.*` | 196 | characters, level, terrain, cutscenes, menu, UI, editor, controls, api |
| Vendor | `openfl`, `lime`, `haxe`, `motion`, `com.adobe.utils`, `co.janicek.core.math`, `flash`, `unitsystem`, top-level | 314 | OpenFL 26, Lime 62, Haxe runtime 11, Actuate 34, AGAL 5, Janicek math 6 |

### Render pipeline

The single entry point is **`nme3D.Context3DUtils`** (342 lines) — it holds
`Stage3D` / `Context3D` statically, assembles programs, and caches them.  Its
imports name the whole pipeline: `AGALMiniAssembler`, `Program3D`,
`Context3DProgramType`, `TextureBase`, `PerspectiveMatrix3D`, `Matrix3D`.

Two layers implement AGAL itself:

* **`§--_-__--__§`** — a Haxe port of the AGAL assembler:
  * `FS` — per-attribute field sizes.
  * `Sampler` — the packed sampler bits (`shift`, `mask`, `value`) plus the
    presets table (`rgba`, `rg`, `r`, `compressed`, `compressed_alpha`, `dxt1`).
  * `§--_-______§` — the **opcode table** (`mov`, `add`, … each with operand
    kinds, component counts and read/write restrictions).
  * `§-_--_______§` — the **register-type table** (`va` = vertex attribute,
    `vc` = vertex constant, `fc` = fragment constant, `ft` = fragment temporary,
    …).
* **`openfl.utils.AGALMiniAssembler`** / **`com.adobe.utils.AGALMiniAssembler`**
  — the upstream Adobe assembler, still linked.

Drawing is described by a **material** class, `nme3D.shader.§--____---_-§`
(328 lines): a program, its constant registers, a `Vector` of textures, a
`update:Function` hook and the vertex class.  Vertex *shapes* are separate
classes — `nme3D.shader.PositionUVVertex`,
`PositionDepthVertex`, `PositionUVDepthVertex`,
`nme3D.shader.vertex.PositionColorVertex`, `PositionUVAlphaVertex`,
`PositionColorAlphaVertex` — all extending `com.player03.vertexdata.Vertex`,
which iterates its attributes through `Attribute1Iterator` …
`Attribute4Iterator`.

Geometry is under **`nme3D.model`**:

* `§-_______---§` (417 lines) — the mesh base class (`uploadPositions`, …).
* `Cube` (521 lines) and three more subclasses.
* `§---__----§` (230 lines) — a swept surface: three `Point3D` arguments, three
  counts (radius and `side1Segments` / `side2Segments`) and a material, with
  `setSides()`.  This is the **tube/tunnel mesh**.
* `VertexBuffer` (268 lines) — wraps `VertexBuffer3D`, reads the Flash player
  version out of `Capabilities.version` with an `EReg`.
* `§-----_--§` / `§-_-_-___-__§` (`update`, `sort`) — the depth-sorted draw
  batches.

Frame/state bookkeeping lives in `nme3D.§--_--_-___-§` (429 lines, `update` /
`reset`) and `nme3D.physics.World3D`.

### Scene graph

**`§--_-_-__-_§.Transform`** (810 lines) is the node: `position` (a
`Point3DInst`), `rotation` (a **`Quaternion`**), `scale`, a cached `matrix`
(`Matrix3D`), a parent pointer, plus `onChange` / `onChangeParents` callback
vectors.  A staged actor's sprite is a child node whose rotation is written each
frame by a billboard helper, which is why a flat sprite stays square to the
camera.

**`nme3D.physics.World3D`** (630 lines) is the simulation: `gravity` (2D
`Point`) *and* `gravity3D` (`Point3DInst`), `unpausedTime`, a depth tolerance
(`1e-10`), a `Vector` of renderables and a `Vector` of one more sortable type,
and it implements `§--___--_-__§`.  Subclasses/peers: `§-_______-_--§` (269
lines, `update`/`reset`), `§--_-__-_-_§` (360 lines), `§-----_---_§` (80,
`display`), `§---__----__§` (79, `reset`).

### Layout — how a cross-section becomes ring/side

**`§-__--__-_---§`** (13 classes) is the layout library, and it kept almost all
its class names: `Layout2D`, `Layout3D`, `LineLayout2D`, `LineLayout3D`,
`GridLayout2D`, `GridLayout3D`, `PositionData2D`, `PositionData3D`, plus five
renamed ones.  `Layout3D` is abstract and exposes exactly the four operations
the port needed:

```
Layout3D.parseSpec(String)      // "line" | grid regex | tunnel regex
getRelativeIndex(int,int,int,int) : int
getPosition(...) / getIndexNearest(...) / getAreaBounds(...)   // abstract
```

`parseSpec` returns `LineLayout3D`, `GridLayout3D`, or the tunnel layout
class; the abstract methods throw `TypeError("… is abstract.")`.  This is the
ring/side geometry the port re-implements as `TunnelLayout3D`.

### Math

`haxeutils.math.geom`: **`Matrix3D`** (505 lines), **`Point3DUtils`** (368),
**`Point2DUtils`** (289), **`Quaternion`** (`§-____-___---§` — proven by its own
`toString`, `"Quaternion[x=…,y=…,z=…,w=…]"`), `Point3D` (`§-_---_--__§`,
extending `Point3DInst`), `AngleMath`, `§--_--_--§`, and the largest class in
the library at 665 lines.
`haxeutils.math`: **`GrowthFunctions`** (179 lines — the easing curves),
`§-___-__-_--_§` (an integer range iterator: `start`/`increment`/`end`), four
more.

### UI toolkit and sound

`haxeutils.display` (23 classes): `ScaledAssets` (126), `ScrollIndicator` (132),
a 191-line sprite base (`§-_--____-___§`), a 347-line container
(`§-__--_-_-_§`), a 308-line layout helper (`§-___----_-_-§`, `placeRightOf`),
plus interfaces `§----_--_§` (6 methods) / `§----__--__-§`, and
`haxeutils.display.animation.Animation` (172 lines).
`haxeutils.sound.MusicManager` (321 lines) is the music/level-track controller.

### Vendor runtimes (nothing here is Runaway)

`openfl` 26, `lime` 62, `haxe` 11 (the standard library), `motion` 34 (the
**Actuate** tweening library: `motion.actuators`, `motion.easing`),
`com.adobe.utils` 5 (AGAL + `PerspectiveMatrix3D`), `co.janicek.core.math` 6,
`flash` 2, `unitsystem` 1, and 167 top-level classes (the Haxe runtime —
`Std`, `Type`, `Reflect`, `Lambda`, `EReg`, `StringBuf`, `StringTools`, `Xml`,
`IMap` — plus one `__ASSET__*` class per embedded file).

## Version history — why later builds are unreadable

| | 2014 (`runIII.swf`) | v1.12.1 | v1.13.0 |
| --- | --- | --- | --- |
| preloader | `NMEPreloader` (**NME**) | `SplashScreen` | `SplashScreen`, `lime.app.Module` |
| extra vendor libs | — | `format.svg`, `mx.core` | `format.svg`, `mx.core` |
| layout library | `§-__--__-_---§` (top level) | `com.player03.layout` | `com.player03.layout` |
| API | `KongregateAPI` | `GlobalEventManager` | `+ PlayFabAPI`, `DevMessage`, `News` |
| obfuscated names | 52% | 59% | 63% |
| readable `com.player03` classes | **75** | 33 | 38 |
| cutscene stills | 1 | 67 | 68 |

The same engine is in all three — `nme3D`, `haxeutils`,
`com.player03.vertexdata` and `Transform`/`Layout3D`/`Sampler` are present in
every one — but from ~2018 the build started shipping obfuscated.

### What the obfuscation does and does not touch

* **Package names**: renamed to character soup — `-----__-_-` style in 2014,
  base-95 style (`!l`, `>+`, `%22R`) in the later builds.
* **Class names**: partly kept (`Transform`, `Layout3D`, `Achievement`,
  `Sampler`, `FS`, `Cube`, `Runner`, `Skater`), partly renamed.
* **Member and local names**: renamed (`§-_-_-_-§`, `§-------_-§`, `_loc4_`).
* **String literals, numbers and asset paths**: untouched.

That last line is the lever: dialogue lines, asset filenames and float
constants survive in every build, so an obfuscated class can be matched to its
readable 2014 twin by its strings and shape — which is how the 2014 map is meant
to be used against v1.13.0.

## Reproduce

```bash
java -jar "FFDec/ffdec.jar" -export script decomp/runIII   runIII.swf
java -jar "FFDec/ffdec.jar" -export script decomp/adobeflash run3-adobeflash.swf
python3 map_run3.py decomp/runIII .        # -> run3_2014_map.json
python3 mk_map_doc.py RUN3_2014_MAP.md     # -> RUN3_2014_MAP.md
```

Builds (archive.org, md5-verified):

| file | md5 | source |
| --- | --- | --- |
| `runIII.swf` (7,051,724) | `d153a5f96bee2a3307479b18f578e946` | item `runIII` |
| `run3-collection.swf` (9,831,125) | `1d817c1fceb80aa3111e20caa6a30071` | item `run_1_standard_reverse_basic` (`run3.swf`) |
| `run3-adobeflash.swf` (12,817,107) | `ee36c2536d96a23aed1afe59e8edb08b` | item `adobeflash-run3` |
| `run3-202403.swf` (12,921,158) | `1ce170acc00ee82262d392a68ad1e852` | item `run-3_202403` |
