# Run 3 (2014 build) — structural map

Mapped from the **readable** build, the one whose own class names survived:
`runIII.swf` (7,051,724 bytes, SWF v15, `800x600`, archive.org item `runIII`,
md5 `d153a5f96bee2a3307479b18f578e946`).  It is the only Run 3 build in the
archive that keeps the game's class names — the later SWFs obfuscate 60%+ of
them — so it is the key to reading every other version.

Reproduce:

```bash
java -jar FFDec/ffdec.jar -export script decomp/runIII runIII.swf
python3 map_run3.py decomp/runIII .        # -> run3_2014_map.json
python3 mk_map_doc.py RUN3_2014_MAP.md     # -> this file
```

Every name below is **as the compiler emitted it**, not a guess.  `§name§` is
FFDec's marker for an identifier that is not valid ActionScript (the obfuscator
renamed it to dash/underscore soup, e.g. `§-------_-§`).

## How the 743 classes divide

| layer | classes | lines | what it is |
| --- | --- | --- | --- |
| **Runaway** engine, named packages | 92 | 12,693 | `nme3D` render/physics/shaders, `haxeutils` math+display+sound, `com.player03.vertexdata` |
| Runaway engine, obfuscated packages | 141 | 15,182 | the engine core: scene graph (`Transform`), layouts, render state (`Sampler`/`FS`), achievements |
| **Game** | 196 | 34,921 | `com.player03.run3.*` — character, level, terrain, cutscene, menu, ui, editor, controls, api, analytics |
| Vendor runtimes | 314 | 26,896 | OpenFL, Lime, `haxe.*`, Actuate (`motion.*`), `com.adobe.utils` (AGAL), `co.janicek.core.math`, `flash`, `unitsystem`, and the top-level Haxe runtime + `__ASSET__*` |


### Runaway engine — named packages

`nme3D` (render + physics + shaders), `haxeutils` (math/geom, display, sound), `com.player03.vertexdata` (AGAL vertex formats).

#### `haxeutils.display` — 23 classes  (21 obfuscated)

- `ScaledAssets` — 16 fn / 5 field — ScaledAssets(2 arg), §-__-_--_-___§(0 arg) : void, §---_--_§(2 arg) : Bitmap, §----_---_-_§(1 arg) : Number, §----_-----§(1 arg) : Number, §-___-__----§(1 arg) : Number
- `ScrollIndicator` extends `Sprite` — 5 fn / 5 field — ScrollIndicator(4 arg), onTweenComplete(0 arg) : void, onEnterFrame(1 arg) : void, onClick(1 arg) : void, dispose(0 arg) : void
- `§------__--§` — 3 fn / 3 field — §------__--§(0 arg)
- `§----_--__§` — 3 fn / 3 field — §----_--__§(1 arg), §-__-__--__-§(0 arg) : int
- `§----_--_§` *(interface)* — 6 fn / 0 field
- `§----__--__-§` *(interface)* — 1 fn / 0 field
- `§---_----_-_§` — 4 fn / 5 field — §---_----_-_§(0 arg)
- `§---____-___§` — 3 fn / 4 field — §---____-___§(4 arg), §-_--_-_---__§(0 arg) : void, §-_-__-_-_--_§(0 arg) : void
- `§--__--_---§` extends `§-_--____-___§` — 1 fn / 1 field — §--__--_---§(8 arg)
- `§--__--_-_-_§` implements `§----_--_§` — 7 fn / 2 field — §--__--_-_-_§(0 arg), update(1 arg) : void, §-_----------§(1 arg) : void, onMouseUp(1 arg) : Boolean, onMouseMove(1 arg) : Boolean, onMouseDown(1 arg) : Boolean, onMouseClick(1 arg) : Boolean
- `§--____-___-§` extends `ScaledAssets` — 3 fn / 4 field — §--____-___-§(4 arg), onResize(1 arg) : void, findScale(0 arg) : void
- `§-_------__--§` implements `§----_--_§` — 7 fn / 8 field — §-_------__--§(1 arg), update(1 arg) : void, §-_----------§(1 arg) : void, onMouseUp(1 arg) : Boolean, onMouseMove(1 arg) : Boolean, onMouseDown(1 arg) : Boolean, onMouseClick(1 arg) : Boolean
- `§-_--_-_-___-§` extends `§-_------__--§` — 3 fn / 3 field — §-_--_-_-___-§(2 arg), update(1 arg) : void, onMouseDown(1 arg) : Boolean
- `§-_--____-___§` extends `Sprite` — 12 fn / 5 field — §-_--____-___§(1 arg), set_currentState(1 arg) : §-__--§, onMouseOver(1 arg) : void, onMouseOut(1 arg) : void, onMouseDown(1 arg) : void, §-_--_---_--_§(1 arg) : Sprite, §----_-_---§(0 arg) : void, §-----____-_§(4 arg) : void, addRectangle2(7 arg) : void, §-___---_--_§(7 arg) : void, §-_-------__-§(3 arg) : void, §-__--__-_-§(3 arg) : void
- `§-_-____-_-_§` extends `§--__--_---§` — 4 fn / 2 field — §-_-____-_-_§(7 arg), toggle(1 arg) : void, §-_--------§(1 arg) : Boolean, get_checked(0 arg) : Boolean
- `§-__---___-§` implements `§----_--_§` — 7 fn / 2 field — §-__---___-§(1 arg), update(1 arg) : void, §-_----------§(1 arg) : void, onMouseUp(1 arg) : Boolean, onMouseMove(1 arg) : Boolean, onMouseDown(1 arg) : Boolean, onMouseClick(1 arg) : Boolean
- `§-__--_-_-_§` extends `§-__-_--_---_§` implements `§-_----_-_-§` — 26 fn / 17 field — §-__--_-_-_§(7 arg), update(1 arg) : void, §-__---_-_-__§(1 arg) : Number, §-__-____--__§(1 arg) : Number, §--_______§(0 arg) : void, §-___-_-____§(0 arg) : void, §-_--___-----§(3 arg) : GenericActuator, reset(0 arg) : void, removeListeners(1 arg) : void, onMouseUp(1 arg) : void, onMouseMove(1 arg) : void, onMouseDown(1 arg) : void, onMouseClick(1 arg) : void, onEnterFrame(1 arg) : void, …
- `§-__--§` — 2 fn / 9 field — §-__--§(3 arg)
- `§-__-_--_---_§` extends `Sprite` — 16 fn / 2 field — §-__-_--_---_§(0 arg), swapChildrenAt(2 arg) : void, swapChildren(2 arg) : void, §-___-_---_-§(1 arg) : void, §-__--__--_§(2 arg) : void, §-_-____§(1 arg) : void, setChildIndex(2 arg) : void, removeChildren(2 arg) : void, removeChildAt(1 arg) : DisplayObject, removeChild(1 arg) : DisplayObject, get, getChildIndex(1 arg) : int, getChildByName(1 arg) : DisplayObject, getChildAt(1 arg) : DisplayObject, …
- `§-__-_--_-__§` — 5 fn / 0 field — §-__-_--_-__§(0 arg)
- `§-___----_-_-§` extends `Sprite` — 18 fn / 7 field — §-___----_-_-§(8 arg), §-____-_-_-_§(1 arg) : String, placeRightOfHelper(4 arg) : void, §--_-----_--§(3 arg) : void, placeLeftOfHelper(4 arg) : void, §---____-_-§(3 arg) : void, §----______-§(4 arg) : void, §-_---_-_-___§(3 arg) : void, placeAboveHelper(4 arg) : void, §-____-____-_§(3 arg) : void, hide(1 arg) : void, §-_____-_---_§(0 arg) : String, §-_-___-_-_-§(0 arg) : Number, §--__-__--§(0 arg) : Number, …
- `§-___--_-___-§` extends `§-_--____-___§` — 3 fn / 3 field — §-___--_-___-§(3 arg), §--____----_§(1 arg) : Bitmap, §-__--_----_§(5 arg) : void
- `§-____-__-_-_§` extends `§-__-_--_---_§` — 4 fn / 1 field — §-____-__-_-_§(1 arg), toggleOpen(1 arg) : void, set_open(1 arg) : Boolean, §-_---__---§(0 arg) : Boolean

#### `nme3D.shader` — 12 classes  (10 obfuscated)

- `PositionDepthVertex` extends `Vertex` — 7 fn / 1 field — PositionDepthVertex(2 arg), toString(0 arg) : String, §-__-_--_--__§(1 arg) : §-_---___-__-§, §-_-_-__-----§(1 arg) : §-_---___-__-§, §----__-___-§(0 arg) : §-_---___-__-§, §-__--___---_§(0 arg) : §-_---___-__-§, getAttribute3(1 arg) : §-_---___-__-§
- `PositionUVDepthVertex` extends `Vertex` — 10 fn / 1 field — PositionUVDepthVertex(2 arg), toString(0 arg) : String, §-__--__---_§(1 arg) : §-_---___-__-§, §-__-_--_--__§(1 arg) : §-_---___-__-§, §-_-_-__-----§(1 arg) : §-_---___-__-§, §---__--__-_§(0 arg) : §-_---___-__-§, §----__-___-§(0 arg) : §-_---___-__-§, §-__--___---_§(0 arg) : §-_---___-__-§, getAttribute3(1 arg) : §-_---___-__-§, getAttribute2(1 arg) : §-_---___-__-§
- `§---_--_---_§` — 2 fn / 3 field — §---_--_---_§(0 arg)
- `§---_-__-_§` — 8 fn / 10 field — §---_-__-_§(0 arg)
- `§--____---_-§` — 13 fn / 13 field — §--____---_-§(3 arg), setVertexUniform4f(5 arg) : void, setVertexUniform1f(3 arg) : void, §-__---_-___§(2 arg) : void, setFragmentUniform4f(5 arg) : void, setFragmentUniform1f(3 arg) : void, §-_--_---_-__§(0 arg) : void, §-___-_-___§(0 arg) : void, §-_-___--§(2 arg) : Number, §--______-_--§(1 arg) : §--_-------_§, §-___--___-§(2 arg) : Number
- `§-_--_--_-_--§` — 3 fn / 4 field — §-_--_--_-_--§(0 arg)
- `§-_--__----_§` — 4 fn / 4 field — §-_--__----_§(0 arg)
- `§-_-_-_-_--__§` — 6 fn / 5 field — §-_-_-_-_--__§(0 arg)
- `§-_-______-_§` — 2 fn / 1 field — §-_-______-_§(0 arg)
- `§-__--_____-§` — 2 fn / 3 field — §-__--_____-§(0 arg)
- `§-__-_---_-§` — 3 fn / 1 field — §-__-_---_-§(0 arg)
- `§-____--_--_§` — 2 fn / 4 field — §-____--_--_§(0 arg)

#### `nme3D.model` — 11 classes  (9 obfuscated)

- `Cube` extends `§-_______---§` — 2 fn / 2 field — Cube(6 arg)
- `VertexBuffer` — 18 fn / 10 field — VertexBuffer(3 arg), §-_____--__-_§(0 arg) : void, §-_----______§(1 arg) : void, toString(0 arg) : String, §-___-_-_-_--§(3 arg) : void, §-_-__--_§(0 arg) : void, §--_-_-_-__§(0 arg) : void, §-_-__---_--_§(0 arg) : int, get_length(0 arg) : int, §-_---_§(0 arg) : int, dispose(0 arg) : void, copyFrom(1 arg) : void, §-_-_---__-_§(1 arg) : void
- `§-------§` extends `§-_______---§` — 1 fn / 7 field — §-------§(4 arg)
- `§-----_--§` — 12 fn / 2 field — §-----_--§(0 arg), update(2 arg) : void, sort(1 arg) : void, render(1 arg) : void, §------_-§(1 arg) : void, §--___-_-_-§(0 arg) : void, §-__-___---§(0 arg) : void, §--__--_§(1 arg) : Boolean, groupForModel(1 arg) : §-_-_-___-__§, dispose(0 arg) : void, §--__--__-_§(0 arg) : void, §-____--___--§(1 arg) : void
- `§---__----§` extends `§-_______---§` — 4 fn / 5 field — §---__----§(9 arg), setSides(3 arg) : void, §-_-__-_---_§(2 arg) : void
- `§-_-_----_---§` extends `§-_______---§` — 1 fn / 0 field — §-_-_----_---§(2 arg)
- `§-_-_-___-__§` — 17 fn / 9 field — §-_-_-___-__§(2 arg), update(2 arg) : void, sort(1 arg) : void, §-_-_--___--_§(0 arg) : void, render(1 arg) : void, §------_-§(1 arg) : void, isEmpty(0 arg) : Boolean, §--__--_§(1 arg) : Boolean, §--__----§(0 arg) : void, §----_--_-_§(0 arg) : Vertex, dispose(0 arg) : void, §------_---_§(0 arg) : void, cleanBuffers(0 arg) : void, §-_---_--___-§(2 arg) : void, …
- `§-_-__--_-_§` — 15 fn / 6 field — §-_-__--_-_§(1 arg), §-_____--__-_§(0 arg) : void, toString(0 arg) : String, §------_-_§(2 arg) : void, §-___-_-_-_--§(2 arg) : void, §--_-§(3 arg) : void, set(2 arg) : void, §--_-_-_-__§(0 arg) : void, get_length(0 arg) : int, get(1 arg) : uint, dispose(0 arg) : void, copyFrom(1 arg) : void
- `§-_-____-_-§` — 1 fn / 3 field — §-_-____-_-§(1 arg)
- `§-__-_-_-__-_§` extends `§-----_--§` — 2 fn / 1 field — §-__-_-_-__-_§(0 arg), §-__-___---§(0 arg) : void
- `§-_______---§` — 22 fn / 16 field — §-_______---§(3 arg), §-__----_-_-_§(0 arg) : void, uploadPositionData(0 arg) : void, §-__-___---_-§(1 arg) : void, update(1 arg) : void, §--_____-__§(1 arg) : Boolean, §-__---_-__-§(1 arg) : Transform, §-__-__----§(1 arg) : §--____---_-§, §-------__§(1 arg) : §-_-_-___-__§, §-_---___-_-_§(1 arg) : int, §-_-_________§(2 arg) : void, onTransformUpdated(3 arg) : void, onTransformTranslated(3 arg) : void, §-_-_____-_-_§(0 arg) : §-_______---§, …

#### `haxeutils.math.geom` — 10 classes  (5 obfuscated)

- `AngleMath` — 7 fn / 0 field — AngleMath(0 arg)
- `Matrix3D` — 28 fn / 10 field — Matrix3D(1 arg), §-__--____-__§(0 arg) : void, §------_--_§(2 arg) : void, transformVector4(2 arg) : Vector3D, transformVector3Into4(2 arg) : Vector3D, transformVector3(2 arg) : Point3DInst, §----____---§(6 arg) : void, setToAxisRotation(4 arg) : void, §--__-_-__-_§(3 arg) : void, §-_---____-__§(3 arg) : void, §-_-_--____§(3 arg) : void, §-_-_-___---_§(1 arg) : void, §---__-___-_§(1 arg) : void, invert(0 arg) : Boolean, …
- `Point2DUtils` — 20 fn / 0 field — Point2DUtils(0 arg)
- `Point3DInst` extends `Point` — 2 fn / 1 field — Point3DInst(3 arg), toString(0 arg) : String
- `Point3DUtils` — 24 fn / 0 field — Point3DUtils(0 arg)
- `§----_--__-_§` — 24 fn / 2 field — §----_--__-_§(0 arg)
- `§----___-_-§` — 1 fn / 2 field — §----___-_-§(2 arg)
- `§--_--_--§` — 3 fn / 0 field — §--_--_--§(0 arg)
- `§-_---_--__§` extends `Point3DInst` — 2 fn / 1 field — §-_---_--__§(0 arg), toString(0 arg) : String
- `§-____-___---§` — 2 fn / 4 field — §-____-___---§(0 arg), toString(0 arg) : String

#### `com.player03.vertexdata` — 9 classes  (4 obfuscated)

- `Attribute1Iterator` extends `§-_--_-_--§` — 3 fn / 0 field — Attribute1Iterator(3 arg), next(0 arg) : §-_---___-__-§, get(1 arg) : §-_---___-__-§
- `Attribute2Iterator` extends `§-_--_-_--§` — 3 fn / 0 field — Attribute2Iterator(3 arg), next(0 arg) : §-_---___-__-§, get(1 arg) : §-_---___-__-§
- `Attribute3Iterator` extends `§-_--_-_--§` — 3 fn / 0 field — Attribute3Iterator(3 arg), next(0 arg) : §-_---___-__-§, get(1 arg) : §-_---___-__-§
- `Attribute4Iterator` extends `§-_--_-_--§` — 3 fn / 0 field — Attribute4Iterator(3 arg), next(0 arg) : §-_---___-__-§, get(1 arg) : §-_---___-__-§
- `Vertex` extends `§-_---___-__-§` — 11 fn / 3 field — Vertex(5 arg), hasAttribute(1 arg) : Boolean, §-__-------_§(0 arg) : int, getAttribute3(1 arg) : §-_---___-__-§, getAttribute2(1 arg) : §-_---___-__-§, getAttribute1(1 arg) : §-_---___-__-§, getAttribute(1 arg) : §-_---___-__-§, §--_----__-§(1 arg) : Vertex, clone(0 arg) : Vertex
- `§-_---___-__-§` — 1 fn / 2 field — §-_---___-__-§(2 arg)
- `§-_--_-_--§` — 2 fn / 4 field — §-_--_-_--§(3 arg), hasNext(0 arg) : Boolean
- `§-_-_--__-___§` — 3 fn / 3 field — §-_-_--__-___§(2 arg), next(0 arg) : Vertex, hasNext(0 arg) : Boolean
- `§-_______-§` — 1 fn / 2 field — §-_______-§(2 arg)

#### `haxeutils.math` — 7 classes  (6 obfuscated)

- `GrowthFunctions` — 15 fn / 1 field — GrowthFunctions(0 arg)
- `§---_-__-_-§` — 2 fn / 0 field — §---_-__-_-§(0 arg)
- `§-_--___-_-_§` — 3 fn / 1 field — §-_--___-_-_§(0 arg)
- `§-_-__-_-___§` — 12 fn / 2 field — §-_-__-_-___§(3 arg), §--___--§(0 arg) : §-_-__-_-___§
- `§-_-__§` — 12 fn / 0 field — §-_-__§(0 arg)
- `§-___--___-_-§` — 15 fn / 4 field — §-___--___-_-§(0 arg)
- `§-___-__-_--_§` — 4 fn / 4 field — §-___-__-_--_§(3 arg), reset(0 arg) : void, next(0 arg) : int, hasNext(0 arg) : Boolean

#### `nme3D.physics` — 5 classes  (4 obfuscated)

- `World3D` implements `§--___--_-__§` — 32 fn / 20 field — World3D(3 arg), update(1 arg) : void, reset(0 arg) : void, §-__-__-__-__§(1 arg) : void, §---_§(1 arg) : void, §-__-----_--_§(1 arg) : void, §-_____-____§(1 arg) : void, registerAnimation(1 arg) : void, §-_--____-__§(0 arg) : void, §--_--_-__--§(0 arg) : int, §---__-_-_-_§(0 arg) : Boolean, §-___-__-__-_§(1 arg) : Boolean, §----__-_---§(0 arg) : Boolean, §-_----__----§(0 arg) : DisplayObjectContainer, …
- `§-----_---_§` extends `§-_______-_--§` — 3 fn / 3 field — §-----_---_§(4 arg), display(1 arg) : void
- `§---__----__§` extends `§----_-§` — 5 fn / 4 field — §---__----__§(2 arg), reset(0 arg) : void, §-__--_--_---§(4 arg) : void, §----______§(4 arg) : void, §-----___-_§(0 arg) : Number
- `§--_-__-_-_§` implements `§-_----_-_-§` — 12 fn / 12 field — §--_-__-_-_§(1 arg), update(1 arg) : void, §---_-__-___§(1 arg) : void, reset(0 arg) : void, recordForceFromCollision(3 arg) : void, §-___-_-_--__§(0 arg) : void, §-____-_-_---§(2 arg) : void, §-___-_-_---§(3 arg) : void, §-____-__-_--§(3 arg) : void, §--_-_--___§(3 arg) : void, applyCurrentForce(1 arg) : void, applyCollisionResult(2 arg) : void
- `§-_______-_--§` implements `§--__-_-__§` — 33 fn / 11 field — §-_______-_--§(3 arg), §-__----__-_§(0 arg) : void, §--__-__-__§(0 arg) : void, update(1 arg) : void, §-_-_--___--§(1 arg) : void, §-_-_-_-_---§(1 arg) : void, §-_-__-------§(1 arg) : void, §-_--__-___--§(1 arg) : void, §-_-___---__§(1 arg) : void, §-_-__--_-_-_§(1 arg) : void, reset(0 arg) : void, §----_--_---§(0 arg) : void, onTransformTranslated(3 arg) : void, §---_-__-§(3 arg) : void, …

#### `nme3D.shader.vertex` — 4 classes

- `PositionColorAlphaVertex` extends `Vertex` — 10 fn / 1 field — PositionColorAlphaVertex(2 arg), toString(0 arg) : String, §-__-_--_--__§(1 arg) : §-_---___-__-§, set_color(1 arg) : §-_---___-__-§, §--______-_-§(1 arg) : Number, §----__-___-§(0 arg) : §-_---___-__-§, get_color(0 arg) : §-_---___-__-§, §-_-______-§(0 arg) : Number, getAttribute3(1 arg) : §-_---___-__-§, getAttribute1(1 arg) : §-_---___-__-§
- `PositionColorVertex` extends `Vertex` — 7 fn / 1 field — PositionColorVertex(2 arg), toString(0 arg) : String, §-__-_--_--__§(1 arg) : §-_---___-__-§, set_color(1 arg) : §-_---___-__-§, §----__-___-§(0 arg) : §-_---___-__-§, get_color(0 arg) : §-_---___-__-§, getAttribute3(1 arg) : §-_---___-__-§
- `PositionUVAlphaVertex` extends `Vertex` — 11 fn / 1 field — PositionUVAlphaVertex(2 arg), toString(0 arg) : String, §-__--__---_§(1 arg) : §-_---___-__-§, §-__-_--_--__§(1 arg) : §-_---___-__-§, §--______-_-§(1 arg) : Number, §---__--__-_§(0 arg) : §-_---___-__-§, §----__-___-§(0 arg) : §-_---___-__-§, §-_-______-§(0 arg) : Number, getAttribute3(1 arg) : §-_---___-__-§, getAttribute2(1 arg) : §-_---___-__-§, getAttribute1(1 arg) : §-_---___-__-§
- `PositionUVVertex` extends `Vertex` — 8 fn / 1 field — PositionUVVertex(2 arg), toString(0 arg) : String, §-__--__---_§(1 arg) : §-_---___-__-§, §-__-_--_--__§(1 arg) : §-_---___-__-§, §---__--__-_§(0 arg) : §-_---___-__-§, §----__-___-§(0 arg) : §-_---___-__-§, getAttribute3(1 arg) : §-_---___-__-§, getAttribute2(1 arg) : §-_---___-__-§

#### `com.player03.analytics` — 3 classes

- `RequestData` — 1 fn / 1 field — RequestData(0 arg)
- `RequestManager` — 8 fn / 9 field — RequestManager(2 arg), submitEvents(0 arg) : void, setCommonProperty(2 arg) : void, onSuccess(1 arg) : void, onError(2 arg) : void, onEnterFrame(1 arg) : void, dispose(0 arg) : void, commonPropertiesToJSON(0 arg) : String
- `Timestamp` — 3 fn / 0 field — Timestamp(0 arg)

#### `com.player03.analytics.base` — 2 classes

- `AnalyticsEvent` — 5 fn / 4 field — AnalyticsEvent(1 arg), setProperty(2 arg) : void, setProperties(2 arg) : void, removeProperty(1 arg) : Boolean, getProperty(1 arg) : *
- `EventAPI` — 9 fn / 4 field — EventAPI(1 arg), submitQueuedEvents(5 arg) : Vector.<AnalyticsEvent>, queueEvents(1 arg) : void, queueEvent(1 arg) : void, hasQueuedEvents(1 arg) : Boolean, clearQueuedEvents(0 arg) : void, applyRequestData(1 arg) : void

#### `haxeutils.sound` — 2 classes  (1 obfuscated)

- `MusicManager` — 14 fn / 10 field — MusicManager(0 arg), §---_-§(1 arg) : Number, §--_----_-_-§(1 arg) : Boolean, set_currentMusic(1 arg) : §-_--___§, setNextMusic(1 arg) : void, resetVolume(0 arg) : void, §-_-_-_-_-_--§(1 arg) : void, playFromAsset(3 arg) : void, §-_-__--___-_§(0 arg) : void, onFadeOutComplete(0 arg) : void, §-_-_-____--§(0 arg) : Boolean, §-_-_-__---__§(0 arg) : Boolean, §--__--§(1 arg) : void
- `§-_--___§` — 10 fn / 8 field — §-_--___§(4 arg), stop(0 arg) : void, resume(0 arg) : void, §-_----__-___§(1 arg) : void, play(1 arg) : void, onFadeDone(0 arg) : void, onComplete(1 arg) : void, §-----_-____§(0 arg) : Boolean, §--___--__-§(0 arg) : Boolean, §-__-________§(2 arg) : void

#### `nme3D` — 2 classes  (1 obfuscated)

- `Context3DUtils` — 14 fn / 27 field — Context3DUtils(0 arg)
- `§--_--_-___-§` implements `§-_----_-_-§` — 15 fn / 13 field — §--_--_-___-§(1 arg), update(1 arg) : void, §-_--___--_-_§(2 arg) : Point3DInst, reset(0 arg) : void, §-__-__-__-__§(1 arg) : void, §---_§(1 arg) : void, render(1 arg) : void, §------_-§(1 arg) : void, project(2 arg) : Point3DInst, §--__--_§(1 arg) : Boolean, dispose(0 arg) : void, §-_--_-____-§(1 arg) : §-----_--§, §--__--__-_§(0 arg) : void, §-____--___--§(1 arg) : void

#### `com.player03.analytics.keen` — 1 classes

- `KeenEventAPI` extends `EventAPI` — 2 fn / 0 field — KeenEventAPI(3 arg), applyRequestData(1 arg) : void

#### `haxeutils.display.animation` — 1 classes

- `Animation` extends `Sprite` implements `§-_-__---__-_§` — 12 fn / 7 field — Animation(0 arg), update(1 arg) : void, stop(0 arg) : void, reset(0 arg) : void, play(0 arg) : void, §-__----_-__§(1 arg) : void, §--_-__---_-§(1 arg) : void, §-_----_---_-§(1 arg) : void, §-__-______--§(0 arg) : Boolean

### Runaway framework — the obfuscated core

The engine's own framework, in packages the obfuscator renamed but whose *class* names mostly survived, so each subsystem is still recognisable (`Transform`, `Layout2D/3D`, `Sampler`/`FS`, `Achievement`). The port's `make_readable.py` maps these to `world3d/Transform`, `layout3d/Layout3D`, …

#### `§-__--__-_---§` — 13 classes  (5 obfuscated)

- `GridLayout2D` extends `Layout2D` — 2 fn / 2 field — GridLayout2D(1 arg), §-_--__--___-§(1 arg) : PositionData2D
- `GridLayout3D` extends `Layout3D` — 6 fn / 8 field — GridLayout3D(2 arg), toString(0 arg) : String, §----__---§(4 arg) : int, §-_--__--___-§(2 arg) : PositionData3D, §--__-_-_-§(1 arg) : int, §--_______-__§(0 arg) : §---_--_-_§
- `Layout2D` — 4 fn / 0 field — Layout2D(0 arg), iterator(0 arg) : Object, §-_--__--___-§(1 arg) : PositionData2D
- `Layout3D` — 7 fn / 2 field — Layout3D(0 arg), toString(0 arg) : String, §----__---§(4 arg) : int, §-_--__--___-§(2 arg) : PositionData3D, §--__-_-_-§(1 arg) : int, §--_______-__§(0 arg) : §---_--_-_§
- `LineLayout2D` extends `Layout2D` — 2 fn / 4 field — LineLayout2D(2 arg), §-_--__--___-§(1 arg) : PositionData2D
- `LineLayout3D` extends `Layout3D` — 6 fn / 0 field — LineLayout3D(0 arg), toString(0 arg) : String, §----__---§(4 arg) : int, §-_--__--___-§(2 arg) : PositionData3D, §--__-_-_-§(1 arg) : int, §--_______-__§(0 arg) : §---_--_-_§
- `PositionData2D` — 1 fn / 2 field — PositionData2D(3 arg)
- `PositionData3D` — 3 fn / 2 field — PositionData3D(4 arg)
- `§--___--_-__§` extends `§-_----_-_-§` *(interface)* — 17 fn / 0 field
- `§-_-__--__-§` — 1 fn / 7 field — §-_-__--__-§(4 arg)
- `§-__--____§` — 5 fn / 3 field — §-__--____§(1 arg), decorate(3 arg) : §-_-__--__-§, §-_-__---__-§(2 arg) : void
- `§-__-__-_-_-§` — 3 fn / 2 field — §-__-__-_-_-§(1 arg), next(0 arg) : Point
- `§-___----__-§` extends `Layout3D` — 8 fn / 16 field — §-___----__-§(2 arg), toString(0 arg) : String, rotate(1 arg) : void, §----__---§(4 arg) : int, §-_--__--___-§(2 arg) : PositionData3D, §--__-_-_-§(1 arg) : int, §--_______-__§(0 arg) : §---_--_-_§, §--__-_----_§(0 arg) : void

#### `§--_-__--__§` — 9 classes  (7 obfuscated)

- `FS` — 1 fn / 2 field — FS(0 arg)
- `Sampler` — 1 fn / 3 field — Sampler(3 arg)
- `§-----______§` — 1 fn / 4 field — §-----______§(0 arg)
- `§---__--_--_§` — 2 fn / 1 field — §---__--_--_§(0 arg)
- `§--_-______§` — 2 fn / 1 field — §--_-______§(0 arg)
- `§-_--_______§` — 2 fn / 1 field — §-_--_______§(0 arg)
- `§-__---__--__§` — 1 fn / 3 field — §-__---__--__§(2 arg)
- `§-__---___§` — 1 fn / 5 field — §-__---___§(10 arg)
- `§-___-__--__§` — 1 fn / 2 field — §-___-__--__§(2 arg)

#### `§-__----____-§` — 8 classes  (8 obfuscated)

- `§------__-__§` extends `§---__--_§` — 2 fn / 1 field — §------__-__§(0 arg), §-____--_-§(1 arg) : void
- `§---_--_-_-§` implements `§-_----_-_-§` — 19 fn / 2 field — §---_--_-_-§(0 arg), update(1 arg) : void, §--_____--__-§(2 arg) : void, §--__--_---_§(2 arg) : void, §-_-__-__--_§(2 arg) : void, §---____-__-§(2 arg) : void, reset(0 arg) : void, onDeactivate(0 arg) : void, onActivate(0 arg) : void, §-__-_-__--__§(0 arg) : §---__--_§, §-_--__-_--_§(1 arg) : Boolean, §-__-_____-__§(1 arg) : Number, §-_-_---_-_-§(1 arg) : Number, §---__----_-§(1 arg) : Boolean, …
- `§---__--_§` implements `§-_----_-_-§` — 5 fn / 5 field — §---__--_§(0 arg), update(1 arg) : void, reset(0 arg) : void, clear(0 arg) : void, §-____--_-§(1 arg) : void
- `§--_-_-_§` extends `§---_--_-_-§` — 16 fn / 1 field — §--_-_-_§(0 arg), update(1 arg) : void, §--_____--__-§(2 arg) : void, §--__--_---_§(2 arg) : void, §-_-__-__--_§(2 arg) : void, reset(0 arg) : void, onDeactivate(0 arg) : void, onActivate(0 arg) : void, §-_--__-_--_§(1 arg) : Boolean, §-__-_____-__§(1 arg) : Number, §-_-_---_-_-§(1 arg) : Number, §---__----_-§(1 arg) : Boolean, §-___-__--_-_§(1 arg) : Boolean, §--____-_---§(1 arg) : Boolean, …
- `§-_---___-§` extends `§---__--_§` — 6 fn / 4 field — §-_---___-§(0 arg), reset(0 arg) : void, onMouseEvent(1 arg) : void, onDeactivate(0 arg) : void, onActivate(0 arg) : void, §-____--_-§(1 arg) : void
- `§-_-___----_§` extends `§---_--_-_-§` — 10 fn / 10 field — §-_-___----_§(2 arg), §-__----_-_--§(2 arg) : void, onEnterFrame(1 arg) : void, §-__-_-__--__§(0 arg) : §---__--_§, §-__-_--_-_--§(1 arg) : §------__-__§, §-___-_-_____§(1 arg) : Object, dispose(0 arg) : void, §--___--__--§(2 arg) : void, §-_____---§(2 arg) : void, §--_----_-_§(2 arg) : void
- `§-____-_-__§` — 11 fn / 4 field — §-____-_-__§(0 arg)
- `§-_____--__§` extends `§---_--_-_-§` — 5 fn / 0 field — §-_____--__§(0 arg), onDeactivate(0 arg) : void, onActivate(0 arg) : void, §-__-_-__--__§(0 arg) : §---__--_§, §----_-__---§(3 arg) : void

#### `§-__---_---_-§` — 8 classes  (8 obfuscated)

- `§--_------_§` extends `§-_______-_--§` — 10 fn / 5 field — §--_------_§(5 arg), §---__§(0 arg) : Boolean, update(1 arg) : void, §-_-__-----__§(3 arg) : void, §-_-___§(1 arg) : void, §-_-_---_---§(1 arg) : void, §-_-__-___-_-§(0 arg) : Boolean, dispose(1 arg) : void, display(1 arg) : void, §--_---_-__§(0 arg) : void
- `§--_-____---§` extends `§-_-__--__-§` — 1 fn / 5 field — §--_-____---§(7 arg)
- `§-_----_---__§` extends `§-__--____§` — 2 fn / 0 field — §-_----_---__§(0 arg), decorate(3 arg) : §-_-__--__-§
- `§-_-_--___-_§` extends `§-_______-_--§` — 2 fn / 1 field — §-_-_--___-_§(3 arg), display(1 arg) : void
- `§-__---___-_-§` extends `§--_------_§` — 11 fn / 27 field — §-__---___-_-§(6 arg), §---__§(0 arg) : Boolean, update(1 arg) : void, §-_-_________§(1 arg) : void, reset(0 arg) : void, §---___-_-_§(1 arg) : void, §-_-_-__-_-_-§(0 arg) : void, §-_-_---_---§(1 arg) : void, §--_---_-__§(0 arg) : void
- `§-___-_---__-§` extends `§-__--____§` — 3 fn / 4 field — §-___-_---__-§(0 arg), decorate(3 arg) : §-_-__--__-§, §-_-__---__-§(2 arg) : void
- `§-___-___---§` extends `§-----_--§` — 3 fn / 0 field — §-___-___---§(0 arg), §--___-_-_-§(0 arg) : void, §-__-___---§(0 arg) : void
- `§-_____-___--§` implements `§-_-__---__-_§` — 5 fn / 14 field — §-_____-___--§(1 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean, decorate(1 arg) : void

#### `§-____-_--___§` — 8 classes  (8 obfuscated)

- `§----_----_-§` — 5 fn / 2 field — §----_----_-§(0 arg)
- `§--_--_---_§` extends `§-_-__--_-§` — 7 fn / 2 field — §--_--_---_§(1 arg), §-__----__§(3 arg) : void, §---_-__--__§(2 arg) : void, §-_---____--_§(1 arg) : Boolean, §--_--__-_--§(1 arg) : Boolean, §-___--_-_--_§(1 arg) : Number, §-___-_-_-__-§(1 arg) : String
- `§-_---_-__-__§` implements `§-___----__--§` — 8 fn / 15 field — §-_---_-__-__§(0 arg), §-__----__§(3 arg) : void, §---_-__--__§(2 arg) : void, §--_--__-_--§(1 arg) : Boolean, §-___--_-_--_§(1 arg) : Number, §-_---___--_-§(1 arg) : String, §-___-_-_-__-§(1 arg) : String
- `§-_--_--_-__§` implements `§-___----__--§` — 7 fn / 4 field — §-_--_--_-__§(2 arg), §-__----__§(3 arg) : void, §---_-__--__§(2 arg) : void, §--_--__-_--§(1 arg) : Boolean, §-___--_-_--_§(1 arg) : Number, §-_---___--_-§(1 arg) : String, §-___-_-_-__-§(1 arg) : String
- `§-_-_-__-_§` — 1 fn / 2 field — §-_-_-__-_§(2 arg)
- `§-_-__--_-§` implements `§-___----__--§` — 12 fn / 20 field — §-_-__--_-§(2 arg), §-__----__§(3 arg) : void, §---_-__--__§(2 arg) : void, §-_---____--_§(1 arg) : Boolean, §---__--_-_§(0 arg) : Boolean, §--_--__-_--§(1 arg) : Boolean, getVictoryScreen(0 arg) : §-_---_---§, §-___--_-_--_§(1 arg) : Number, §-_---___--_-§(1 arg) : String, §-___-_-_-__-§(1 arg) : String, §-_--__--____§(1 arg) : int
- `§-__--___-__-§` — 16 fn / 12 field — §-__--___-__-§(0 arg), §--_____§(0 arg) : void
- `§-___----__--§` *(interface)* — 6 fn / 0 field

#### `§--_--____-§` — 7 classes  (7 obfuscated)

- `§---_--__-_-§` — 3 fn / 2 field — §---_--__-_-§(2 arg), next(0 arg) : Object, hasNext(0 arg) : Boolean
- `§--_____---§` — 2 fn / 2 field — §--_____---§(2 arg), iterator(0 arg) : Object
- `§-_----_-_-§` *(interface)* — 2 fn / 0 field
- `§-_---_-_--_§` — 2 fn / 2 field — §-_---_-_--_§(2 arg), iterator(0 arg) : Object
- `§-_--_-_---_-§` — 1 fn / 0 field — §-_--_-_---_-§(0 arg)
- `§-_-__---__-_§` extends `§-_----_-_-§` *(interface)* — 1 fn / 0 field
- `§-___-_---_-_§` — 3 fn / 3 field — §-___-_---_-_§(2 arg), next(0 arg) : Object, hasNext(0 arg) : Boolean

#### `§-_--_----_-_§` — 6 classes  (6 obfuscated)

- `§--_---_--_§` extends `Shape` — 4 fn / 9 field — §--_---_--_§(3 arg), §--_---_---_§(0 arg) : void
- `§--_--§` extends `Point` — 3 fn / 2 field — §--_--§(2 arg), toString(0 arg) : String
- `§--_-__-__§` extends `Point` — 3 fn / 0 field — §--_-__-__§(0 arg), §-___----_-§(1 arg) : void, §--------___§(1 arg) : void
- `§-_----_-__-§` extends `Sprite` implements `§-_----_-_-§` — 12 fn / 5 field — §-_----_-__-§(1 arg), update(1 arg) : void, reset(0 arg) : void, §-_-__--__---§(0 arg) : §--_---_--_§, §-_----___-_§(0 arg) : §--_---_--_§, §-_____-_____§(0 arg) : §-_----__--__§, §-_____--_-§(6 arg) : TextField, §-__--_-__--_§(7 arg) : void
- `§-_----__--__§` extends `Sprite` — 3 fn / 4 field — §-_----__--__§(3 arg), §--_---_---_§(0 arg) : void, onTextChanged(1 arg) : void
- `§-_---_--___§` — 2 fn / 0 field — §-_---_--___§(0 arg)

#### `§-___----§` — 5 classes  (5 obfuscated)

- `§----_--_-§` extends `§---_--_-_§` — 4 fn / 3 field — §----_--_-§(2 arg), §---___---_§(3 arg) : void, §-__-__-----_§(3 arg) : void, §--_-___--__§(2 arg) : void
- `§---_--_-_§` — 9 fn / 6 field — §---_--_-_§(1 arg), §-______--__-§(0 arg) : void, §---___---_§(3 arg) : void, §-_--_--_--__§(3 arg) : void, §---_--____-§(2 arg) : Point3DInst, contains(1 arg) : Boolean, §--___-_-_§(6 arg) : Point3DInst, §--_-___--__§(2 arg) : void, §----_---___§(0 arg) : void
- `§-_-___-_§` — 4 fn / 9 field — §-_-___-_§(0 arg), §-___-_----_§(1 arg) : Boolean, §-___----_-§(1 arg) : void, reset(0 arg) : void
- `§-__--___---§` extends `§---_--_-_§` — 6 fn / 4 field — §-__--___---§(2 arg), §---___---_§(3 arg) : void, §------_--_-§(6 arg) : Point3DInst, §--___-_-_§(6 arg) : Point3DInst, §--_-___--__§(2 arg) : void
- `§-___-_------§` extends `§---_--_-_§` — 8 fn / 1 field — §-___-_------§(1 arg), §---___---_§(3 arg) : void, §---_--____-§(2 arg) : Point3DInst, moveInside(3 arg) : Point3DInst, §---_-_-_§(1 arg) : Number, §-_-__--_----§(2 arg) : Boolean, contains(1 arg) : Boolean, §--_-___--__§(2 arg) : void

#### `§--_-___-___§` — 4 classes  (4 obfuscated)

- `§--______-_§` implements `§-____-_-____§` — 2 fn / 1 field — §--______-_§(1 arg), contains(2 arg) : Boolean
- `§-_-_-__--_§` implements `§-____-_-____§` — 4 fn / 4 field — §-_-_-__--_§(4 arg), toString(0 arg) : String, §---_---___-§(1 arg) : void, contains(2 arg) : Boolean
- `§-__-____-___§` implements `§-____-_-____§` — 3 fn / 1 field — §-__-____-___§(0 arg), contains(2 arg) : Boolean, §-__-_-__---§(1 arg) : void
- `§-____-_-____§` *(interface)* — 1 fn / 0 field

#### `§--___----__§` — 4 classes  (4 obfuscated)

- `§----_-_-_-_§` — 7 fn / 2 field — §----_-_-_-_§(2 arg), random(0 arg) : Number, §-_-__-__----§(1 arg) : Number, §--______----§(1 arg) : Number, §-__-__-_-___§(1 arg) : Number, §-_----__-__-§(1 arg) : Number, clamp(1 arg) : Number
- `§-_--_--_--_-§` — 6 fn / 2 field — §-_--_--_--_-§(2 arg), §--_----_-§(1 arg) : Number, map(1 arg) : Number, §-______-____§(1 arg) : Number, §----___---§(1 arg) : Number
- `§-_-_-_-_-_§` extends `§----_-_-_-_§` — 3 fn / 1 field — §-_-_-_-_-_§(3 arg), §-_-__-__----§(1 arg) : Number, §--______----§(1 arg) : Number
- `§-____-__--_§` extends `§----_-_-_-_§` — 4 fn / 0 field — §-____-__--_§(2 arg)

#### `§-__----__-_-§` — 4 classes  (4 obfuscated)

- `§--___-_-§` extends `§-_-_---_-___§` — 9 fn / 3 field — §--___-_-§(2 arg), zLess(1 arg) : Boolean, zGreater(1 arg) : Boolean, win(0 arg) : void, setPower(2 arg) : void, getResult(1 arg) : Function, getCondition(1 arg) : Function, §-__---_--___§(0 arg) : Boolean, applyResults(0 arg) : void
- `§-_--_--__---§` extends `§-_-_---_-___§` — 3 fn / 1 field — §-_--_--__---§(1 arg), §-__---_--___§(0 arg) : Boolean, applyAction(0 arg) : void
- `§-_-_---_-___§` implements `§-_-__---__-_§` — 5 fn / 8 field — §-_-_---_-___§(5 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean, §-__---_--___§(0 arg) : Boolean
- `§-______-___§` implements `§-----__--__§` — 2 fn / 4 field — §-______-___§(0 arg), update(2 arg) : Boolean

#### `§-___-__-__§` — 4 classes  (4 obfuscated)

- `§----____-__§` — 2 fn / 0 field — §----____-__§(0 arg)
- `§-_--_--_---_§` — 2 fn / 0 field — §-_--_--_---_§(0 arg)
- `§-_-_-___---§` — 2 fn / 0 field — §-_-_-___---§(0 arg)
- `§-_-__----_§` — 2 fn / 9 field — §-_-__----_§(3 arg)

#### `§----_--__-§` — 3 classes  (1 obfuscated)

- `Achievement` — 5 fn / 7 field — Achievement(6 arg), §-_-_____---_§(0 arg) : Boolean, §--_-____-_-§(2 arg) : §-__-___-_-_§, §-_-__-_-§(0 arg) : void, §---_-_---_§(0 arg) : void
- `Achievements` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 16 fn / 20 field — Achievements(0 arg), update(1 arg) : void, reset(0 arg) : void, init(0 arg) : void, create(0 arg) : void, §----___--§(0 arg) : void
- `§-__-___-_-_§` extends `Sprite` — 4 fn / 6 field — §-__-___-_-_§(7 arg), reset(0 arg) : void, §-----_-_---§(1 arg) : void, drawBackgroundAndIcon(1 arg) : void

#### `§---_-_-_-__§` — 3 classes  (3 obfuscated)

- `§----_--__--§` extends `§--_____--_§` — 13 fn / 22 field — §----_--__--§(16 arg), update(1 arg) : void, §---__-_-__-§(0 arg) : void, §-__-__-_---_§(4 arg) : void, restoreJumps(1 arg) : void, reset(0 arg) : void, §---__--_---§(1 arg) : void, §-__--_-_-_-_§(0 arg) : void, §-_-_-_-___§(0 arg) : §--_____--_§, §-____-____§(0 arg) : Boolean, applyFloatOnce(1 arg) : Number, applyFloatAfter(2 arg) : Number, §----_----§(0 arg) : Boolean
- `§--_-_-_-__-§` — 3 fn / 2 field — §--_-_-_-__-§(1 arg), §-__--_-_-_-_§(0 arg) : void, §-_-__-_--__§(1 arg) : void
- `§-__-_---____§` extends `Event` — 1 fn / 1 field — §-__-_---____§(1 arg)

#### `§--_-__-_--§` — 3 classes  (3 obfuscated)

- `§--_-_-_____§` — 8 fn / 0 field — §--_-_-_____§(0 arg)
- `§-_--__---_-_§` — 4 fn / 3 field — §-_--__---_-_§(1 arg), reset(0 arg) : void, next(0 arg) : Object, hasNext(0 arg) : Boolean
- `§-_-__---___§` — 3 fn / 2 field — §-_-__---___§(1 arg), next(0 arg) : Object, hasNext(0 arg) : Boolean

#### `§-_---_----_§` — 3 classes  (3 obfuscated)

- `§--___--_-_§` — 8 fn / 0 field — §--___--_-_§(0 arg)
- `§-_----_-_-_§` — 2 fn / 0 field — §-_----_-_-_§(0 arg)
- `§-_-____-___§` — 4 fn / 0 field — §-_-____-___§(0 arg)

#### `§-_--_--___-_§` — 3 classes  (3 obfuscated)

- `§---_-_-_-_§` — 6 fn / 2 field — §---_-_-_-_§(2 arg), toString(0 arg) : String, set_length(1 arg) : int, set(2 arg) : void, get(1 arg) : Boolean, §--_-_-___--§(1 arg) : void
- `§--_-_-_---_§` — 8 fn / 1 field — §--_-_-_---_§(1 arg), toString(0 arg) : String, iterator(0 arg) : Object, §----__-_--_§(0 arg) : int
- `§--___-__---§` — 4 fn / 6 field — §--___-__---§(1 arg), next(0 arg) : int, hasNext(0 arg) : Boolean, findNext(0 arg) : void

#### `§-_--_-___---§` — 3 classes  (3 obfuscated)

- `§--_-_---_-§` — 2 fn / 9 field — §--_-_---_-§(3 arg)
- `§-_-_--___-__§` — 2 fn / 9 field — §-_-_--___-__§(3 arg)
- `§-__-_-____§` — 2 fn / 10 field — §-__-_-____§(3 arg)

#### `§-_-_-_____§` — 3 classes  (3 obfuscated)

- `§--_------_-§` — 7 fn / 6 field — §--_------_-§(4 arg), victoryCallback(0 arg) : void, §-_---__-_-__§(0 arg) : void, §-_-___-_--§(0 arg) : void, §--__-___--§(0 arg) : Boolean, §-----§(0 arg) : Boolean, §----___-_§(0 arg) : §--_-__-__--§
- `§-_--__--_-__§` — 4 fn / 5 field — §-_--__--_-__§(6 arg), victoryCondition(1 arg) : Boolean, victoryCallback(0 arg) : void, §--_-_-_--_§(0 arg) : void
- `§-_-_-_-____§` extends `§-_-____-_-_§` — 2 fn / 1 field — §-_-_-_-____§(1 arg), toggle(1 arg) : void

#### `§-----__-_-_§` — 2 classes  (2 obfuscated)

- `§-_------__§` — 1 fn / 0 field — §-_------__§(0 arg)
- `§-__---_--_-_§` — 1 fn / 0 field — §-__---_--_-_§(0 arg)

#### `§-----____--§` — 2 classes  (2 obfuscated)

- `§-__-_--_---§` — 5 fn / 0 field — §-__-_--_---§(0 arg)
- `§-________-_-§` — 3 fn / 3 field — §-________-_-§(3 arg), next(0 arg) : int, hasNext(0 arg) : Boolean

#### `§---__-_--__§` — 2 classes  (2 obfuscated)

- `§-_--_-_-__--§` extends `§-_______---§` — 4 fn / 12 field — §-_--_-_-__--§(10 arg), §-_-_--___---§(1 arg) : Boolean, set_currentFrame(1 arg) : int, setFrameRect(4 arg) : void
- `§-__----___§` extends `§-_______---§` — 2 fn / 1 field — §-__----___§(6 arg), set_textureData(1 arg) : §--_-------_§

#### `§---__-_-_--§` — 2 classes  (2 obfuscated)

- `§--------_§` — 4 fn / 3 field — §--------_§(0 arg)
- `§--_-------_§` — 2 fn / 9 field — §--_-------_§(2 arg), §-_--_---_-_-§(0 arg) : void

#### `§--_-_-__-_§` — 2 classes  (1 obfuscated)

- `Transform` — 30 fn / 17 field — Transform(2 arg), translate(3 arg) : void, §---__------§(0 arg) : void, §--__-_---_§(3 arg) : void, §-___-_-__---§(1 arg) : void, setRotation(1 arg) : void, §-__--_-_-__-§(3 arg) : void, §-__------__§(1 arg) : void, §-_--_-____-_§(1 arg) : void, §-_-__--_§(0 arg) : void, set(1 arg) : void, rotate(1 arg) : void, reset(0 arg) : void, §-_---_--_---§(1 arg) : void, …
- `§-__-__-_----§` — 17 fn / 2 field — §-__-__-_----§(0 arg), translate(3 arg) : void, toString(0 arg) : String, §-___--_-__§(2 arg) : Boolean, §-_---_--_-§(0 arg) : Number, §-__-_-__-___§(0 arg) : Number, §-__--___---_§(0 arg) : Number, §--_-___-__§(0 arg) : Number, §---------__§(0 arg) : Number, §-__-_---___§(0 arg) : Number, §-_---_---_-_§(3 arg) : void, §-_---__§(1 arg) : void, §-_---_----__§(1 arg) : void, §-___--_--_-§(3 arg) : void, …

#### `§-_-----_-_§` — 2 classes  (2 obfuscated)

- `§----___----§` extends `§--_____--_§` — 4 fn / 2 field — §----___----§(3 arg), §---__--_---§(1 arg) : void, §-____-____§(0 arg) : Boolean, §----_----§(0 arg) : Boolean
- `§--_____--_§` — 14 fn / 21 field — §--_____--_§(1 arg), update(1 arg) : void, §-___-_____-§(0 arg) : Boolean, §---__-_-__-§(0 arg) : void, reset(0 arg) : void, §---__--_---§(1 arg) : void, §-__-______-§(0 arg) : int, §-_-_-_-___§(0 arg) : §--_____--_§, §-_--_--__-_§(0 arg) : §--_____--_§, §--__--_-__§(0 arg) : Boolean, §-____-____§(0 arg) : Boolean, §--__--_--_-§(0 arg) : void, §----_----§(0 arg) : Boolean

#### `§-_---_-___§` — 2 classes  (2 obfuscated)

- `§-_----_----_§` extends `Sprite` implements `§-_-__---__-_§` — 5 fn / 0 field — §-_----_----_§(0 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean
- `§-_-_-_--__-§` extends `Sprite` implements `§-_-__---__-_§` — 4 fn / 0 field — §-_-_-_--__-§(0 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean

#### `§-_--_-_-_-_§` — 2 classes  (2 obfuscated)

- `§----_-§` — 7 fn / 13 field — §----_-§(2 arg), set_mass(1 arg) : Number, reset(0 arg) : void, onUpdateGravity(1 arg) : void, §-___-_-_--__§(3 arg) : void, §-______§(2 arg) : void, checkGround(0 arg) : void
- `§--__-_-__§` extends `§-_----_-_-§` *(interface)* — 21 fn / 0 field

#### `§-_-_-_--__-_§` — 2 classes  (2 obfuscated)

- `§--_---___§` — 5 fn / 1 field — §--_---___§(0 arg)
- `§-_--___--___§` extends `haxeutils.math.geom.Matrix3D` — 2 fn / 1 field — §-_--___--___§(1 arg), §--__----__-§(3 arg) : void

#### `§-__-____--§` — 2 classes  (2 obfuscated)

- `§-_-_--__--_§` — 1 fn / 2 field — §-_-_--__--_§(1 arg)
- `§-__-_---_§` — 5 fn / 2 field — §-__-_---_§(0 arg)

#### `§-___-__----_§` — 2 classes  (2 obfuscated)

- `§-_-_---__-__§` extends `§-__--___-__§` *(interface)* — 2 fn / 0 field
- `§-__--___-__§` extends `§--__-_-__§` *(interface)* — 0 fn / 0 field

#### `§---_-___-_§` — 1 classes  (1 obfuscated)

- `§--__--__-_-§` — 6 fn / 0 field — §--__--__-_-§(0 arg)

#### `§--_-_----__§` — 1 classes  (1 obfuscated)

- `§--_--__-_-§` — 4 fn / 0 field — §--_--__-_-§(0 arg)

#### `§--_-_-_----§` — 1 classes  (1 obfuscated)

- `§-__-____---_§` implements `§-_-__---__-_§` — 7 fn / 13 field — §-__-____---_§(3 arg), update(1 arg) : void, set_frameRate(1 arg) : Number, set_currentFrame(1 arg) : Number, reset(0 arg) : void, §-___-__-_-_-§(0 arg) : void, §-__-______--§(0 arg) : Boolean

#### `§--_-_-__§` — 1 classes  (1 obfuscated)

- `§-__________-§` — 1 fn / 8 field — §-__________-§(1 arg)

#### `§--_-___---§` — 1 classes  (1 obfuscated)

- `§-----__-§` — 2 fn / 0 field — §-----__-§(0 arg)

#### `§--__--__---§` — 1 classes  (1 obfuscated)

- `§-_--__----_-§` — 20 fn / 0 field — §-_--__----_-§(0 arg)

#### `§--__-_--_-§` — 1 classes  (1 obfuscated)

- `§--------_--§` — 13 fn / 17 field — §--------_--§(0 arg)

#### `§-_---__----§` — 1 classes  (1 obfuscated)

- `§-_--__-_---§` — 5 fn / 0 field — §-_--__-_---§(0 arg)

#### `§-_--_-__--§` — 1 classes  (1 obfuscated)

- `§-_-----___-_§` — 11 fn / 0 field — §-_-----___-_§(0 arg)

#### `§-_--__-----_§` — 1 classes  (1 obfuscated)

- `§-__-_-_--_--§` — 16 fn / 7 field — §-__-_-_--_--§(0 arg), toString(0 arg) : String, §-__---_-__-§(1 arg) : Transform, §---_--__--§(1 arg) : Point3DInst, §-_-______§(1 arg) : Point3DInst, §----__---_§(3 arg) : void, §-_-__-_-____§(3 arg) : void, onTransformUpdated(3 arg) : void, nearestPointOnPlane(2 arg) : Point3DInst, §--§(3 arg) : Point3DInst, §-_---__-_-_-§(1 arg) : Boolean, §----____-_-§(5 arg) : Point3DInst, §-_-_____-_-§(1 arg) : Number, §-_-__--___-§(0 arg) : void, …

#### `§-_-_---_-§` — 1 classes  (1 obfuscated)

- `§--_-___-__-§` — 2 fn / 0 field — §--_-___-__-§(0 arg)

#### `§-_-_--__-_§` — 1 classes  (1 obfuscated)

- `§--_--__-___§` extends `§-__-_-__-__-§` — 6 fn / 5 field — §--_--__-___§(1 arg), rate(1 arg) : void, onShown(1 arg) : void, create(0 arg) : void

#### `§-_-__-_---__§` — 1 classes  (1 obfuscated)

- `§---_-_-_-_-§` — 14 fn / 0 field — §---_-_-_-_-§(0 arg)

#### `§-_-___--_--§` — 1 classes  (1 obfuscated)

- `§-___-___--§` implements `§-_----_-_-§` — 6 fn / 8 field — §-___-___--§(6 arg), update(1 arg) : void, toggle(0 arg) : void, reset(0 arg) : void, §---__-_----§(1 arg) : void, addToggleListener(1 arg) : void

#### `§-__--_--____§` — 1 classes  (1 obfuscated)

- `§---__---_§` — 24 fn / 0 field — §---__---_§(0 arg)

#### `§-__--__-__-§` — 1 classes  (1 obfuscated)

- `§------____§` — 2 fn / 1 field — §------____§(1 arg), iterator(0 arg) : Object

#### `§-__-_-__§` — 1 classes

- `KongregateFlashAPI` extends `EventDispatcher` — 12 fn / 9 field — KongregateFlashAPI(0 arg), §-_----___-__§(3 arg) : void, submit(2 arg) : void, showRegistrationBox(0 arg) : void, onLogin(1 arg) : void, onLoadError(1 arg) : void, §-_---__-__--§(1 arg) : void, §-_____--_-_§(0 arg) : Boolean, isGuest(0 arg) : Boolean, getUsername(0 arg) : String, getUserId(0 arg) : int, §-____-__-__§(2 arg) : void

#### `§-____-_-_--_§` — 1 classes  (1 obfuscated)

- `§-__-__-_---§` — 3 fn / 0 field — §-__-__-_---§(0 arg)

### Game — `com.player03.run3`

#### `com.player03.run3.character` — 40 classes  (23 obfuscated)

- `Anchor` extends `§-_______-_--§` — 12 fn / 8 field — Anchor(2 arg), update(1 arg) : void, §--_-_§(0 arg) : void, §-___---_-__-§(1 arg) : §-_______-_--§, reset(0 arg) : void, §-______-_---§(1 arg) : Boolean, onGlancingCollision(1 arg) : Boolean, onCollision(2 arg) : Boolean, §-_____----§(1 arg) : void, §-__--__-_§(0 arg) : Boolean, §-_---_-_-§(1 arg) : void
- `Angel` extends `§-_--__--__-§` — 2 fn / 3 field — Angel(2 arg), §-_--_--____§(0 arg) : Number
- `Animation` — 4 fn / 3 field — Animation(3 arg), §-___-_-_--_-§(1 arg) : Boolean, §-__--_-_--_§(2 arg) : void, clone(0 arg) : Animation
- `Bunny` extends `§-_--__--__-§` — 8 fn / 10 field — Bunny(2 arg), update(1 arg) : void, §-_-___---_--§(1 arg) : void, reset(0 arg) : void, §-_--_--____§(0 arg) : Number, §-____-_--_-§(2 arg) : Boolean, §--_--___-__§(0 arg) : Boolean, §-_-__--_-___§(0 arg) : void
- `Caveman` extends `§-_--__--__-§` — 1 fn / 0 field — Caveman(2 arg)
- `Child` extends `§-_--__--__-§` — 2 fn / 0 field — Child(2 arg), update(1 arg) : void
- `Climber` extends `§-_--__--__-§` — 13 fn / 20 field — Climber(2 arg), update(1 arg) : void, reset(0 arg) : void, §----_--_---§(0 arg) : void, isNotAnchor(1 arg) : Boolean, §--____-__-_§(0 arg) : void, §----_-_-_--§(0 arg) : void, §-_--_--____§(0 arg) : Number, §-_--_-_-§(0 arg) : §--_-_---_§, display(1 arg) : void, §-___-______-§(0 arg) : void, §-_---_-_----§(4 arg) : void
- `Duplicator` extends `§-_--__--__-§` — 15 fn / 19 field — Duplicator(2 arg), §--__-__-__§(0 arg) : void, update(1 arg) : void, spawn(1 arg) : void, sortCharacters(0 arg) : void, reset(0 arg) : void, §--__--__--§(0 arg) : void, §-_--__----§(0 arg) : void, §--_-_---§(0 arg) : §--____---_-§, display(1 arg) : void, §-_-____-----§(3 arg) : void
- `Gentleman` extends `§-_--__--__-§` — 7 fn / 12 field — Gentleman(2 arg), update(1 arg) : void, spawnPowerCell(1 arg) : void, reset(0 arg) : void, §----_--_---§(0 arg) : void, §-_--___-__--§(1 arg) : void, §-_--_--____§(0 arg) : Number
- `Lizard` extends `§-_--__--__-§` — 1 fn / 0 field — Lizard(2 arg)
- `Pastafarian` extends `§-_--__--__-§` — 9 fn / 23 field — Pastafarian(2 arg), §--__-__-__§(0 arg) : void, update(1 arg) : void, reset(0 arg) : void, §----_--_---§(0 arg) : void, removeAssociatedGameObjects(0 arg) : void, §---_----__§(0 arg) : void, displayBridge(1 arg) : void, §-_-____-----§(3 arg) : void
- `Runner` extends `§-_--__--__-§` — 1 fn / 0 field — Runner(2 arg)
- `Shadow` extends `§-_______-_--§` — 6 fn / 16 field — Shadow(4 arg), update(1 arg) : void, setupAABB(2 arg) : void, §--_--___--_§(0 arg) : void, reset(0 arg) : void, display(1 arg) : void
- `Skater` extends `§-_--__--__-§` — 3 fn / 1 field — Skater(2 arg), §--__-__-__§(0 arg) : void, §-_-___---_--§(1 arg) : void
- `Skier` extends `Runner` — 2 fn / 1 field — Skier(2 arg), §-_-___---_--§(1 arg) : void
- `Student` extends `§-_--__--__-§` — 2 fn / 1 field — Student(2 arg), display(1 arg) : void
- `Zombie` extends `§-_--__--__-§` — 4 fn / 8 field — Zombie(2 arg), update(1 arg) : void, reset(0 arg) : void, jump(0 arg) : void
- `§--------__-§` extends `§-_-____-_-_§` — 4 fn / 1 field — §--------__-§(2 arg), §-_--------§(1 arg) : Boolean, reset(0 arg) : void, dispose(0 arg) : void
- `§-----__--__§` *(interface)* — 1 fn / 0 field
- `§---_-___-§` implements `§-----__--__§` — 2 fn / 3 field — §---_-___-§(3 arg), update(2 arg) : Boolean
- `§--_--__--_§` extends `§--_____--_§` — 8 fn / 4 field — §--_--__--_§(2 arg), update(1 arg) : void, §---__-_-__-§(0 arg) : void, §-__-_-____-_§(0 arg) : void, setUnused(1 arg) : void, reset(0 arg) : void, §-____-____§(0 arg) : Boolean, §----_----§(0 arg) : Boolean
- `§--_-_-___§` extends `§--_____--_§` — 4 fn / 2 field — §--_-_-___§(1 arg), §-_-_-_-___§(0 arg) : §--_____--_§, §-____-____§(0 arg) : Boolean, §----_----§(0 arg) : Boolean
- `§--_-____--_§` extends `§--_____--_§` — 6 fn / 4 field — §--_-____--_§(5 arg), update(1 arg) : void, reset(0 arg) : void, §---__--_---§(1 arg) : void, §-____-____§(0 arg) : Boolean, §----_----§(0 arg) : Boolean
- `§--___-_---§` extends `§-___--__-_-§` — 8 fn / 2 field — §--___-_---§(0 arg), §-___-_-____-§(0 arg) : Boolean, §-_----_-__§(1 arg) : String, §-_---__-___§(1 arg) : String, §-___-_§(1 arg) : §-_-__-_-__§, §-----_§(1 arg) : Class, §-__----_--_§(1 arg) : §-_-__-_-__§
- `§--_____--_-_§` extends `§-___--__-_-§` — 6 fn / 3 field — §--_____--_-_§(0 arg), §-___-_-____-§(0 arg) : Boolean, §-_----_-__§(1 arg) : String, §-_---__-___§(1 arg) : String, §-___-_§(1 arg) : §-_-__-_-__§, §-----_§(1 arg) : Class
- `§-_-----_____§` extends `§--_-_-_-__-§` — 3 fn / 3 field — §-_-----_____§(1 arg), §-__--_-_-_-_§(0 arg) : void, §-_-__-_--__§(1 arg) : void
- `§-_----___---§` extends `§-_______-_--§` — 4 fn / 9 field — §-_----___---§(2 arg), §--_--------§(1 arg) : void, rotateBookX(1 arg) : void, display(1 arg) : void
- `§-_--_-___--_§` — 3 fn / 5 field — §-_--_-___--_§(4 arg), §--___-_----§(1 arg) : Animation, clone(0 arg) : §-_--_-___--_§
- `§-_--__--__-§` extends `§-_______-_--§` implements `IEventDispatcher` — 44 fn / 83 field — §-_--__--__-§(2 arg), willTrigger(1 arg) : Boolean, §--__-__-__§(0 arg) : void, §--_--_-_-_-§(0 arg) : void, update(1 arg) : void, §-_-___---_--§(1 arg) : void, §---___-_§(1 arg) : Number, §-_-__----___§(1 arg) : Number, §-_-__--__--_§(2 arg) : void, §-_______-___§(0 arg) : void, §--_-____§(2 arg) : void, reset(0 arg) : void, §----_--_---§(0 arg) : void, removeEventListener(3 arg) : void, …
- `§-_-__-_-__§` — 13 fn / 40 field — §-_-__-_-__§(8 arg), toString(0 arg) : String, §-__-_____§(0 arg) : String, §---_-_-_-§(0 arg) : String, purchase(0 arg) : void, §---_--_-__§(0 arg) : String, §-___-_-____-§(0 arg) : Boolean, §-___--_----_§(1 arg) : §-_--__--__-§, §-___--_--__-§(0 arg) : int, §-_____-----_§(0 arg) : String, §-_----_--§(2 arg) : §-_--__--__-§, §-__-----_-_§(2 arg) : void
- `§-__----_-§` extends `§--_--__--_§` — 4 fn / 4 field — §-__----_-§(6 arg), §---__-_-__-§(0 arg) : void, §---__--_---§(1 arg) : void, §-_-_-_-___§(0 arg) : §--_____--_§
- `§-__---__-___§` implements `§-_----_-_-§` — 6 fn / 14 field — §-__---__-___§(1 arg), update(1 arg) : void, §-_---_-__-_§(2 arg) : void, reset(0 arg) : void, §-____---___§(0 arg) : void, clone(0 arg) : §-__---__-___§
- `§-__--_--_-_§` — 2 fn / 9 field — §-__--_--_-_§(3 arg)
- `§-__-___----§` extends `§--_____--_§` — 7 fn / 15 field — §-__-___----§(1 arg), §---__-_-__-§(0 arg) : void, §---__--_---§(1 arg) : void, §-_-_-_-___§(0 arg) : §--_____--_§, §-____-____§(0 arg) : Boolean, §----_----§(0 arg) : Boolean
- `§-__-___--_--§` extends `§-_--_-_-__--§` implements `§-_-__---__-_§` — 6 fn / 4 field — §-__-___--_--§(3 arg), update(1 arg) : void, §--_-_--__--§(1 arg) : Boolean, reset(0 arg) : void, §-_----_-§(0 arg) : Boolean, §-__-______--§(0 arg) : Boolean
- `§-__-_____-§` extends `§--_____--_§` — 6 fn / 12 field — §-__-_____-§(1 arg), §---__-_-__-§(0 arg) : void, §---__--_---§(1 arg) : void, §-_-_-_-___§(0 arg) : §--_____--_§, §-____-____§(0 arg) : Boolean, §----_----§(0 arg) : Boolean
- `§-___--__-_-§` — 10 fn / 6 field — §-___--__-_-§(2 arg), shouldBeActive(0 arg) : Boolean, §-___-_-____-§(0 arg) : Boolean, §-_----_-__§(1 arg) : String, §-_---__-___§(1 arg) : String, §-___-_§(1 arg) : §-_-__-_-__§, §-----_§(1 arg) : Class, §-__----_--_§(1 arg) : §-_-__-_-__§
- `§-___-_-__-__§` — 2 fn / 3 field — §-___-_-__-__§(2 arg), §-_-______--§(0 arg) : Boolean
- `§-____--__--_§` — 4 fn / 20 field — §-____--__--_§(0 arg)
- `§-______----§` — 6 fn / 4 field — §-______----§(2 arg), toString(0 arg) : String, setFromString(2 arg) : void, §-__--___--__§(2 arg) : void, §-_____----_-§(1 arg) : void

#### `com.player03.run3.ui` — 27 classes  (23 obfuscated)

- `HomeButton` extends `§-__--__--§` — 3 fn / 0 field — HomeButton(0 arg)
- `Leaderboards` — 9 fn / 8 field — Leaderboards(0 arg)
- `OptionsMenu` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 13 fn / 9 field — OptionsMenu(0 arg), update(1 arg) : void, toggleOptions(1 arg) : void, toMap(1 arg) : void, showMapButton(0 arg) : Boolean, showForwardButton(0 arg) : Boolean, reset(0 arg) : void, previousLevel(1 arg) : void, nextLevel(1 arg) : void, labelLastButton(1 arg) : void, create(0 arg) : void, addButton(4 arg) : void
- `RestrictedCharacterSelect` extends `§-__-_-__-__-§` — 4 fn / 2 field — RestrictedCharacterSelect(2 arg), onRemoved(1 arg) : void, create(0 arg) : void
- `§---_---_-_-§` extends `§-__--_-_-_§` — 7 fn / 7 field — §---_---_-_-§(0 arg), selectCharacter(1 arg) : void, reset(0 arg) : void, §--_---_-__-§(0 arg) : void, characterButtonClicked(2 arg) : void, §-____--_-_§(1 arg) : void
- `§--_--___-§` — 6 fn / 14 field — §--_--___-§(4 arg), onComplete(0 arg) : void, §-_---___---_§(0 arg) : Boolean, hide(0 arg) : void, §--___---_--§(1 arg) : Boolean, §-_-__-_--__§(0 arg) : void
- `§--_-_----_-§` extends `TextField` implements `§-_----_-_-§` — 5 fn / 1 field — §--_-_----_-§(0 arg), update(1 arg) : void, §-_-----_--__§(1 arg) : String, reset(0 arg) : void, §---______-_§(0 arg) : String
- `§--_-_-__-_-§` extends `§-__-_-__-__-§` — 12 fn / 18 field — §--_-_-__-_-§(0 arg), showLeaderboard(1 arg) : void, onUserChanged(0 arg) : void, onSignInClicked(1 arg) : void, onRemoved(1 arg) : void, displayWithoutSaving(0 arg) : void, §-___-___-_§(3 arg) : Boolean, create(0 arg) : void, checkSignInButtonVisible(1 arg) : void, checkSignInButton(0 arg) : void
- `§--_-__---_§` extends `Sprite` — 12 fn / 7 field — §--_-__---_§(0 arg), updateNumber(0 arg) : void, §-__-_----__-§(1 arg) : void, §--_-____-__§(0 arg) : void, onEnterFrame(1 arg) : void, onClick(1 arg) : void, §-___-_--__-§(0 arg) : Number, flash(1 arg) : void, dispose(0 arg) : void
- `§--___-__§` extends `§-__-_-__-__-§` — 2 fn / 0 field — §--___-__§(0 arg), create(0 arg) : void
- `§--____-_-_§` extends `Sprite` — 2 fn / 5 field — §--____-_-_§(4 arg), onClicked(1 arg) : void
- `§-_---_---§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 4 fn / 3 field — §-_---_---§(3 arg), update(1 arg) : void, reset(0 arg) : void, create(0 arg) : void
- `§-_--_-_____§` extends `Sprite` — 13 fn / 10 field — §-_--_-_____§(4 arg), updateUsername(0 arg) : void, toString(0 arg) : String, §-_-__--_-__§(1 arg) : void, init(1 arg) : void, equals(1 arg) : Boolean, dispose(0 arg) : void, clone(0 arg) : §-_--_-_____§, charactersToString(0 arg) : String
- `§-_--__-§` extends `Sprite` — 2 fn / 5 field — §-_--__-§(0 arg), §-__-__-_--_-§(1 arg) : void
- `§-_--_____-§` extends `§-___--_-___-§` — 1 fn / 1 field — §-_--_____-§(3 arg)
- `§-_-_-_--_-_§` extends `Sprite` — 4 fn / 4 field — §-_-_-_--_-_§(3 arg), set_number(1 arg) : int, §-_-____--__§(0 arg) : void, display(1 arg) : void
- `§-_-__--____-§` extends `TextField` implements `§-_----_-_-§` — 3 fn / 4 field — §-_-__--____-§(0 arg), update(1 arg) : void, reset(0 arg) : void
- `§-_-___-_--_§` extends `Shape` implements `§-_-__---__-_§` — 4 fn / 5 field — §-_-___-_--_§(3 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean
- `§-__--_---_§` extends `Sprite` implements `§-_----_-_-§` — 4 fn / 3 field — §-__--_---_§(0 arg), update(1 arg) : void, toggleMute(1 arg) : void, reset(0 arg) : void
- `§-__--__--§` extends `§-___--_-___-§` implements `§-_----_-_-§` — 3 fn / 3 field — §-__--__--§(5 arg), update(1 arg) : void, reset(0 arg) : void
- `§-__-_--_--_§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 7 fn / 9 field — §-__-_--_--_§(3 arg), update(1 arg) : void, save(0 arg) : void, reset(0 arg) : void, §-_--_-_§(2 arg) : void, §---____-__§(2 arg) : void, create(0 arg) : void
- `§-__-_-__-__-§` extends `Sprite` — 7 fn / 4 field — §-__-_-__-__-§(1 arg), removeResizeListener(1 arg) : void, §-_---__----_§(0 arg) : void, onResize(1 arg) : void, dispose(0 arg) : void, create(0 arg) : void, addResizeListener(1 arg) : void
- `§-__-______§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 15 fn / 19 field — §-__-______§(0 arg), update(1 arg) : void, §-_---__-_--_§(0 arg) : void, showNextOverlay(0 arg) : void, reset(0 arg) : void, §-_--_--_§(0 arg) : DisplayObject, §-_----_-----§(0 arg) : void, onClick(1 arg) : void, create(0 arg) : void, §-_--_-__--_-§(0 arg) : void, §-___---_---_§(0 arg) : Boolean, §--___---_§(1 arg) : void, §--_---_-_--§(1 arg) : void, §--_-_---___§(4 arg) : void
- `§-___--_-_-_§` extends `Sprite` — 3 fn / 2 field — §-___--_-_-_§(5 arg), §-_---_____§(1 arg) : void, signInToKongregate(1 arg) : void
- `§-___-__--__-§` extends `§-__-_-__-__-§` implements `§-_-__---__-_§` — 19 fn / 16 field — §-___-__--__-§(0 arg), update(1 arg) : void, show(3 arg) : void, respawnAs(1 arg) : void, reset(0 arg) : void, removedFromStage(1 arg) : void, onRemoved(1 arg) : void, onCharacterClicked(2 arg) : void, §----§(0 arg) : void, hide(1 arg) : void, §-__-______--§(0 arg) : Boolean, §-__-__-_--__§(0 arg) : void, create(0 arg) : void, cancel(1 arg) : void, …
- `§-___-____--§` extends `§-__-_-__-__-§` — 3 fn / 1 field — §-___-____--§(1 arg), tryNowClicked(1 arg) : void, create(0 arg) : void
- `§-_____----_§` extends `Sprite` — 10 fn / 2 field — §-_____----_§(0 arg), §-_-__---_-__§(0 arg) : void, §-__-_--____-§(0 arg) : Boolean, §-__-_------§(4 arg) : void, §-_-__-----§(1 arg) : void, §-__--___-_-_§(2 arg) : void, §-__-_-___--_§(1 arg) : void

#### `com.player03.run3.cutscene` — 24 classes  (4 obfuscated)

- `Batteries` extends `§--_-__-__--§` — 4 fn / 2 field — Batteries(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame0(0 arg) : void
- `Candy` extends `§--_-__-__--§` — 10 fn / 6 field — Candy(0 arg), §-_-_-_-_-§(2 arg) : void, removeSplat(0 arg) : void, removeBalloon(0 arg) : void, init(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `Cheating` extends `§--_-__-__--§` — 4 fn / 2 field — Cheating(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame0(0 arg) : void
- `Cutscenes` — 21 fn / 19 field — Cutscenes(0 arg)
- `Insanity` extends `§--_-__-__--§` — 20 fn / 3 field — Insanity(0 arg), update(1 arg) : void, §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame9(0 arg) : void, frame8(0 arg) : void, frame7(0 arg) : void, frame6(0 arg) : void, frame5(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame15(0 arg) : void, frame14(0 arg) : void, …
- `LetsGo` extends `§--_-__-__--§` — 7 fn / 5 field — LetsGo(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `Naming` extends `§--_-__-__--§` — 7 fn / 2 field — Naming(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `Orbits` extends `§--_-__-__--§` — 6 fn / 2 field — Orbits(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `PlanetGone` extends `§--_-__-__--§` — 6 fn / 3 field — PlanetGone(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `PlanetStolen` extends `§--_-__-__--§` — 6 fn / 2 field — PlanetStolen(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitDuplicator` extends `§--_-__-__--§` — 6 fn / 4 field — RecruitDuplicator(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitGentleman` extends `§--_-__-__--§` — 9 fn / 3 field — RecruitGentleman(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame5(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitLizard` extends `§--_-__-__--§` — 9 fn / 3 field — RecruitLizard(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame5(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitPastafarian` extends `§--_-__-__--§` — 9 fn / 2 field — RecruitPastafarian(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame5(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitRunner` extends `§--_-__-__--§` — 11 fn / 8 field — RecruitRunner(0 arg), §-_--_---_--§(0 arg) : void, §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame5(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitSkater` extends `§--_-__-__--§` — 8 fn / 2 field — RecruitSkater(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `RecruitStudent` extends `§--_-__-__--§` — 9 fn / 4 field — RecruitStudent(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame5(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `River` extends `§--_-__-__--§` — 5 fn / 2 field — River(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `Teapot` extends `§--_-__-__--§` — 6 fn / 2 field — Teapot(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `WormholeInSight` extends `§--_-__-__--§` — 6 fn / 2 field — WormholeInSight(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `§--_-__-__--§` — 15 fn / 16 field — §--_-__-__--§(4 arg), update(1 arg) : void, §-_-_-_-_-§(2 arg) : void, skip(1 arg) : void, set_shown(1 arg) : Boolean, §-__-____--_§(1 arg) : void, init(0 arg) : void, §-__--------_§(0 arg) : Boolean, displayNextFrame(0 arg) : void, §-__-__------§(1 arg) : void, display(0 arg) : void, createLevel(0 arg) : void, §-____---__-§(1 arg) : void
- `§-_--_-_-_-__§` extends `Sprite` implements `§-_----_-_-§` — 3 fn / 1 field — §-_--_-_-_-__§(1 arg), update(1 arg) : void, reset(0 arg) : void
- `§-_-_--_--_-§` extends `§--_-__-__--§` — 8 fn / 4 field — §-_-_--_--_-§(0 arg), §-_-_-_-_-§(2 arg) : void, init(0 arg) : void, frame4(0 arg) : void, frame3(0 arg) : void, frame2(0 arg) : void, frame1(0 arg) : void, frame0(0 arg) : void
- `§-___-_--_--§` extends `§-_______-_--§` — 11 fn / 11 field — §-___-_--_--§(3 arg), §-_-_--___---§(1 arg) : Boolean, §--_____-__§(1 arg) : Boolean, set_currentFrame(1 arg) : int, §-__---_-___-§(4 arg) : void, onTranslated(3 arg) : void, onTransformed(3 arg) : void, §-_-----_-_-§(0 arg) : Boolean, §-__-____-_-_§(0 arg) : Boolean, §-§(0 arg) : Rectangle, §-_-_--_____§(0 arg) : int

#### `com.player03.run3.menu` — 18 classes  (15 obfuscated)

- `AdvancedOptionsMenu` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 12 fn / 12 field — AdvancedOptionsMenu(0 arg), update(1 arg) : void, toCredits(1 arg) : void, §-_--__--_-_§(1 arg) : void, setControlScheme(3 arg) : void, §-_-_---_____§(1 arg) : void, reset(0 arg) : void, dispose(0 arg) : void, create(0 arg) : void, addControlScheme(3 arg) : void
- `CurrencyShop` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 14 fn / 15 field — CurrencyShop(0 arg), update(1 arg) : void, reset(0 arg) : void, purchase(2 arg) : void, onPurchaseFinished(0 arg) : void, create(0 arg) : void, checkInventory(0 arg) : void
- `RotatingLinks` extends `Sprite` implements `§-_----_-_-§` — 8 fn / 2 field — RotatingLinks(0 arg), update(1 arg) : void, toGooglePlay(1 arg) : void, §-_---__---_-§(1 arg) : void, reset(0 arg) : void, §-_-_-__-_--_§(0 arg) : void, logIn(1 arg) : void
- `§-----_----_§` extends `Sprite` implements `§-_----_-_-§` — 5 fn / 2 field — §-----_----_§(0 arg), update(1 arg) : void, §-_--_-__-§(1 arg) : Sprite, reset(0 arg) : void
- `§----__--___§` extends `§---___§` — 3 fn / 3 field — §----__--___§(0 arg), toAchievements(1 arg) : void, reset(0 arg) : void
- `§---_-_--_§` extends `Sprite` — 8 fn / 8 field — §---_-_--_§(7 arg), §-__-___-__§(1 arg) : Function, §--__--___--§(1 arg) : void, reset(0 arg) : void, §-_-__-_____-§(0 arg) : Boolean, purchase(1 arg) : void, §-__--__-____§(0 arg) : int, §-___-----_-§(0 arg) : Boolean
- `§---____-_§` extends `§-__-_-__-__-§` — 18 fn / 17 field — §---____-_§(0 arg), showOrHide(1 arg) : void, showIfHidden(1 arg) : void, show(1 arg) : void, reset(0 arg) : void, §--_-_------§(0 arg) : Boolean, §-____---_--_§(0 arg) : void, §---_--_----§(2 arg) : void, §---_____--§(0 arg) : Boolean, keepSearching(1 arg) : void, hide(1 arg) : void, §-_---------_§(0 arg) : int, getRecruitee(1 arg) : §--_------_-§, create(0 arg) : void
- `§---___§` extends `Sprite` implements `§-_----_-_-§` — 3 fn / 3 field — §---___§(4 arg), update(1 arg) : void, reset(0 arg) : void
- `§--___--_--§` extends `Sprite` — 9 fn / 7 field — §--___--_--§(1 arg), §---___--_-_§(1 arg) : void, §---_-______§(1 arg) : void, openKongregateWindow(1 arg) : void, onUserChanged(0 arg) : void, goToKongregate(1 arg) : void
- `§-_---__--_-_§` extends `§---_-_--_§` — 2 fn / 1 field — §-_---__--_-_§(7 arg), §-_-__-_____-§(0 arg) : Boolean
- `§-_--_-__----§` extends `§---___§` — 3 fn / 1 field — §-_--_-__----§(0 arg), reset(0 arg) : void, onClicked(1 arg) : void
- `§-_-__-____§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 10 fn / 7 field — §-_-__-____§(0 arg), update(1 arg) : void, reset(0 arg) : void, create(0 arg) : void, §--____--_-§(1 arg) : int, close(1 arg) : void, addUpgrade(6 arg) : §---_-_--_§, addCostumeUpgrade(6 arg) : §-_---__--_-_§, addCharacterUpgrade(2 arg) : §-__-___§
- `§-__--____--_§` extends `Sprite` — 2 fn / 1 field — §-__--____--_§(0 arg), reset(0 arg) : void
- `§-__-_--__-_-§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 21 fn / 28 field — §-__-_--__-_-§(0 arg), update(1 arg) : void, toStats(1 arg) : void, toShop(1 arg) : void, toOptions(1 arg) : void, toMap(1 arg) : void, toAchievements(1 arg) : void, startInfiniteMode(1 arg) : void, startExploreMode(1 arg) : void, §--____---_§(1 arg) : void, startEditor(1 arg) : void, §--__---_§(2 arg) : void, reset(0 arg) : void, §--_-__---__§(0 arg) : Boolean, …
- `§-__-_-_--§` extends `§-__-_-__-__-§` — 6 fn / 4 field — §-__-_-_--§(0 arg), show(5 arg) : void, §--__--_-_§(1 arg) : void, hide(0 arg) : void, §-_____-_---_§(0 arg) : String, create(0 arg) : void
- `§-__-___§` extends `§---_-_--_§` — 4 fn / 1 field — §-__-___§(3 arg), reset(0 arg) : void, §-_-__-_____-§(0 arg) : Boolean, purchase(1 arg) : void
- `§-___---_-_§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 9 fn / 3 field — §-___---_-_§(0 arg), updateDisplayedView(0 arg) : void, update(1 arg) : void, §-__-_-___-§(2 arg) : void, §-__--_-__--§(1 arg) : void, set_currentScoreView(1 arg) : §-__-_--_--_§, reset(0 arg) : void, create(0 arg) : void
- `§-_____---_--§` extends `§-__-_-__-__-§` — 6 fn / 6 field — §-_____---_--§(0 arg), onAdded(1 arg) : void, create(0 arg) : void, addTextField(2 arg) : void

#### `com.player03.run3.level` — 17 classes  (14 obfuscated)

- `InfiniteLevel` extends `Level` — 13 fn / 18 field — InfiniteLevel(1 arg), update(1 arg) : void, spawnNextCharacter(2 arg) : Boolean, reset(0 arg) : void, §----__-___§(1 arg) : void, §-___-_-_--_§(2 arg) : int, §-_---_---_-§(3 arg) : int, §-_--_--_--_§(1 arg) : void, §-_-____--§(1 arg) : void
- `Level` extends `World3D` — 47 fn / 59 field — Level(4 arg), §-_-_____-___§(0 arg) : void, update(1 arg) : void, §-__-_-_--_-_§(0 arg) : void, §--_____---_§(1 arg) : Number, setWon2(1 arg) : void, §-_-__-___---§(0 arg) : void, §-_--__-_----§(2 arg) : void, §--_____--§(1 arg) : §-_--__--__-§, reset(0 arg) : void, §-_--_-_----_§(1 arg) : void, §---_-__--_§(0 arg) : void, §-___---_--_-§(0 arg) : void, onCharacterDeath(1 arg) : void, …
- `LevelSection` implements `§------__§` — 23 fn / 29 field — LevelSection(9 arg), §--_________§(1 arg) : Boolean, §--_--____--§(1 arg) : Boolean, §---_-_-----§(0 arg) : void, §-_---_--____§(3 arg) : void, §-_--§(3 arg) : void, §-__--__--_-_§(0 arg) : void, §-__-___-__-§(0 arg) : Boolean, §---__-___--§(1 arg) : Boolean, init(0 arg) : void, §-__-_--_§(1 arg) : int, §-___-_----__§(0 arg) : Boolean, §-_--___--§(0 arg) : int, §-_---____-§(1 arg) : §--_-_---_§, …
- `§-------_-§` — 4 fn / 4 field — §-------_-§(2 arg), §-_------__-_§(1 arg) : Point3DInst, §--_-_---_--§(0 arg) : int, §-_-_--_--___§(1 arg) : Number
- `§------__§` *(interface)* — 0 fn / 0 field
- `§----__-__§` — 2 fn / 13 field — §----__-__§(3 arg)
- `§---_-___--_§` — 3 fn / 1 field — §---_-___--_§(0 arg)
- `§-_-------_--§` extends `§-__--____§` — 2 fn / 0 field — §-_-------_--§(0 arg), decorate(3 arg) : §-_-__--__-§
- `§-_----_---§` — 3 fn / 5 field — §-_----_---§(1 arg), toString(0 arg) : String, §---_---__--§(1 arg) : void
- `§-_-_-__-__-§` — 4 fn / 14 field — §-_-_-__-__-§(6 arg), next(0 arg) : §-_-__--___--§, §--_§(0 arg) : Boolean, hasNext(0 arg) : Boolean
- `§-_-_-_______§` implements `§-_-__---__-_§` — 6 fn / 4 field — §-_-_-_______§(1 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean, cancel(0 arg) : void, §-_____-__--_§(3 arg) : void
- `§-_-___-_---§` extends `§-----_--§` — 5 fn / 8 field — §-_-___-_---§(1 arg), update(2 arg) : void, §-_-___-§(1 arg) : Number, §--__-----_-§(0 arg) : void, §-____--___--§(1 arg) : void
- `§-__--_--__-§` implements `§-_-__---__-_§` — 6 fn / 14 field — §-__--_--__-§(2 arg), update(1 arg) : void, reset(0 arg) : void, §-__-______--§(0 arg) : Boolean
- `§-___--__--_-§` — 1 fn / 6 field — §-___--__--_-§(0 arg)
- `§-___--§` extends `§-__-_-_-__-_§` — 7 fn / 5 field — §-___--§(2 arg), update(2 arg) : void, render(1 arg) : void, §-_____-__---§(1 arg) : §-_-___-_---§, §-__--______-§(1 arg) : void, §---__-_-_§(2 arg) : void, §-____--___--§(1 arg) : void
- `§-____----_-_§` implements `§------__§` — 11 fn / 7 field — §-____----_-_§(7 arg), §--__-_-----§(1 arg) : int, §-__-__----__§(0 arg) : Boolean, dispose(0 arg) : void
- `§-____-____--§` extends `§-_-_----_---§` — 2 fn / 2 field — §-____-____--§(2 arg), update(1 arg) : void

#### `com.player03.run3.editor` — 15 classes  (13 obfuscated)

- `EditorPopup` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 22 fn / 19 field — EditorPopup(1 arg), updateTitle(1 arg) : void, updateTileSize(1 arg) : int, updateSpawnPoints(1 arg) : int, updatePower(1 arg) : int, updateNumSides(1 arg) : int, updateMusic(1 arg) : void, update(1 arg) : void, titleFocusIn(1 arg) : void, submitWithData(3 arg) : void, submitLevelSet(1 arg) : void, submit(1 arg) : void, set_dataToLoad(1 arg) : String, setColorCallback(1 arg) : void, …
- `SavedLevels` — 9 fn / 3 field — SavedLevels(0 arg), §-_---_--_-_-§(1 arg) : Vector.<String>
- `§-----____§` extends `Sprite` — 4 fn / 13 field — §-----____§(9 arg), §--_---_---_§(7 arg) : void, onMouseOver(1 arg) : void, §-__-___-___§(0 arg) : void
- `§----_____-_§` extends `§-__-_-__-__-§` — 10 fn / 7 field — §----_____-_§(1 arg), update(1 arg) : void, §--__-__---_§(1 arg) : void, setTileType(1 arg) : void, playtest(1 arg) : void, §-__-_-_-_--§(0 arg) : void, §-_-_-___-_-§(1 arg) : void, §--_-_-_--__§(1 arg) : void, create(0 arg) : void, §-__--_--__--§(1 arg) : void
- `§--__--_-___§` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 10 fn / 5 field — §--__--_-___§(0 arg), zoomOut(1 arg) : void, zoomIn(1 arg) : void, update(1 arg) : void, §-_-____--_-_§(1 arg) : void, reset(0 arg) : void, §-_-_-___-_-§(1 arg) : void, onArrowClicked(3 arg) : void, §-__--__§(0 arg) : String, create(0 arg) : void
- `§--__-_-_-_§` — 2 fn / 8 field — §--__-_-_-_§(3 arg)
- `§-_---_-_--§` — 3 fn / 3 field — §-_---_-_--§(2 arg), next(0 arg) : Boolean, hasNext(0 arg) : Boolean
- `§-_--_-_--_-_§` extends `Sprite` — 4 fn / 9 field — §-_--_-_--_-_§(1 arg), onClick(1 arg) : void, §-_-_-_-___-§(1 arg) : void, dispose(0 arg) : void
- `§-_-_-__---§` — 2 fn / 2 field — §-_-_-__---§(2 arg), iterator(0 arg) : Object
- `§-_-__-_-_-§` extends `§--__--_---§` — 3 fn / 5 field — §-_-__-_-_-§(2 arg), increment(1 arg) : void, §--___-__-__§(0 arg) : void
- `§-__---_---§` extends `§-____-__-_-_§` — 3 fn / 1 field — §-__---_---§(2 arg), onOpen(1 arg) : void, onClose(1 arg) : void
- `§-__---§` extends `Sprite` — 4 fn / 5 field — §-__---§(5 arg), §-_---_-___-_§(1 arg) : int, increment(1 arg) : void, decrement(1 arg) : void
- `§-___--__--__§` extends `Sprite` — 5 fn / 5 field — §-___--__--__§(3 arg), §---___-_-__§(1 arg) : String, onClick(1 arg) : void, deleteLevel(1 arg) : void
- `§-___-___§` extends `Level` — 43 fn / 69 field — §-___-___§(2 arg), §-_--_---__§(1 arg) : void, updateSpawn(1 arg) : void, update(1 arg) : void, trimStart(0 arg) : void, §---_-_-----§(0 arg) : void, toString(0 arg) : String, §-_---_--____§(1 arg) : void, setupRay(0 arg) : void, §-___--_--_-_§(0 arg) : void, §--_____---_§(1 arg) : Number, setTile(2 arg) : void, §--__--__-__§(0 arg) : void, §-_-_________§(1 arg) : void, …
- `§-____----_--§` — 5 fn / 10 field — §-____----_--§(2 arg), transformUpdateCallback(3 arg) : void, remove(1 arg) : void, §-_-_--_-__-_§(3 arg) : Object, add(1 arg) : void

#### `com.player03.run3.level.terrain.collision` — 15 classes  (14 obfuscated)

- `CrumblingCollision` extends `§-_-_-------_§` — 6 fn / 3 field — CrumblingCollision(0 arg), §---__-___-§(1 arg) : void, §-__-__-_§(3 arg) : void
- `§-----_-_-_-§` extends `§-_-_-------_§` — 2 fn / 6 field — §-----_-_-_-§(1 arg), §-__-__-_§(3 arg) : void
- `§---_-_-__-§` implements `§--__---__-_§` — 7 fn / 20 field — §---_-_-__-§(0 arg), update(3 arg) : void, §-_-_--_-___-§(0 arg) : void, reset(1 arg) : void, §-_-----_-_--§(4 arg) : void, propagate(1 arg) : void, §-__-_-__-_§(1 arg) : Number
- `§---_-_§` extends `§---_--_-_§` — 9 fn / 7 field — §---_-_§(1 arg), §---___---_§(3 arg) : void, contains(1 arg) : Boolean, collideLineWithFace(7 arg) : Boolean, §--___-_-_§(6 arg) : Point3DInst, §--_-___--__§(2 arg) : void, axis3Contains(1 arg) : Boolean, axis2Contains(1 arg) : Boolean, axis1Contains(1 arg) : Boolean
- `§--_--__-_§` implements `§-----__--__§` — 2 fn / 1 field — §--_--__-_§(0 arg), update(2 arg) : Boolean
- `§-_------§` extends `§-__--___---§` — 4 fn / 4 field — §-_------§(1 arg), §---___---_§(3 arg) : void, §--___-_-_§(6 arg) : Point3DInst, §--_-___--__§(2 arg) : void
- `§-_--____-_-§` extends `§-_-_-------_§` — 3 fn / 6 field — §-_--____-_-§(1 arg), §---__-___-§(1 arg) : void, §-__-__-_§(3 arg) : void
- `§-_-_-------_§` — 3 fn / 9 field — §-_-_-------_§(0 arg), §---__-___-§(1 arg) : void, §-__-__-_§(3 arg) : void
- `§-_-__-_--_-§` extends `§-_-_-------_§` — 2 fn / 2 field — §-_-__-_--_-§(0 arg), §-__-__-_§(3 arg) : void
- `§-__---___--_§` extends `§-_-_-------_§` — 2 fn / 6 field — §-__---___--_§(2 arg), §-__-__-_§(3 arg) : void
- `§-__--___----§` extends `§-__--___---§` — 4 fn / 4 field — §-__--___----§(1 arg), §---___---_§(3 arg) : void, §--___-_-_§(6 arg) : Point3DInst, §--_-___--__§(2 arg) : void
- `§-__-_-----__§` extends `§-__---___--_§` — 2 fn / 4 field — §-__-_-----__§(3 arg), §-__-__-_§(3 arg) : void
- `§-___---__---§` implements `§--__---__-_§` — 3 fn / 6 field — §-___---__---§(0 arg), update(3 arg) : void, reset(1 arg) : void
- `§-____-----_§` extends `§-_-_-------_§` — 2 fn / 5 field — §-____-----_§(4 arg), §-__-__-_§(3 arg) : void
- `§-____-_-__-§` extends `§-_-_-------_§` — 2 fn / 3 field — §-____-_-__-§(0 arg), §-__-__-_§(3 arg) : void

#### `com.player03.run3.level.terrain` — 9 classes  (6 obfuscated)

- `Box` extends `§-_______---§` — 4 fn / 3 field — Box(6 arg), buildTexturedBox(0 arg) : void, buildColoredBox(2 arg) : void, buildBox(5 arg) : void
- `ExtraTerrainSpawner` implements `§-_-__---__-_§` — 9 fn / 10 field — ExtraTerrainSpawner(7 arg), update(1 arg) : void, §-_--_--__-__§(0 arg) : void, reset(0 arg) : void, §----__--_-§(0 arg) : void, §-__-______--§(0 arg) : Boolean, decorate(1 arg) : void, §--__----_-_§(1 arg) : Boolean, §---_-___§(1 arg) : void
- `TerrainDecorator` extends `§-__--____§` — 8 fn / 24 field — TerrainDecorator(0 arg), getDecorationData(2 arg) : §-________§, decorate(3 arg) : §-_-__--__-§, §-_-__---__-§(2 arg) : void
- `§------§` — 2 fn / 9 field — §------§(3 arg)
- `§----___-___§` extends `§-_-__--__-§` — 1 fn / 6 field — §----___-___§(5 arg)
- `§--_-_---_§` extends `§-_______-_--§` — 9 fn / 20 field — §--_-_---_§(0 arg), update(1 arg) : void, setTo(3 arg) : void, reset(0 arg) : void, §--_-_-_-__§(0 arg) : void, §-__--_----§(2 arg) : void, §---_-__-§(3 arg) : void
- `§--__---__-_§` *(interface)* — 2 fn / 0 field
- `§-_-__--___--§` extends `§-_______-_--§` — 6 fn / 11 field — §-_-__--___--§(8 arg), translate2(1 arg) : void, translate(1 arg) : void, rotate(3 arg) : void, §----------§(0 arg) : §-__-_-_--_--§
- `§-________§` — 4 fn / 26 field — §-________§(16 arg), §-_-________-§(1 arg) : int, §-_-__--__-__§(0 arg) : void, §-_____-_----§(0 arg) : void

#### `com.player03.run3.api` — 7 classes  (4 obfuscated)

- `GlobalEventManager` — 6 fn / 6 field — GlobalEventManager(0 arg), removeEventListener(2 arg) : void, dispatchEvent(1 arg) : void, addEventListener(2 arg) : void
- `KongregateAPI` — 24 fn / 16 field — KongregateAPI(0 arg), §---___--_-_§(0 arg) : void, §-_----___-__§(3 arg) : void, submit(2 arg) : void, §-_--_-__---_§(0 arg) : void, §-__--___-_--§(0 arg) : void, §-__--__--_-§(0 arg) : void, purchaseItem(1 arg) : void, openKongregateWindow(0 arg) : void, onLogin(0 arg) : void, onGotLeaderboard(2 arg) : void, §---____-§(1 arg) : void, §-_____--_-_§(0 arg) : Boolean, isGuest(0 arg) : Boolean, …
- `KongregateFlashAPI` extends `§-__-_-__§.KongregateFlashAPI` — 15 fn / 3 field — KongregateFlashAPI(0 arg), §-_--_-__---_§(0 arg) : void, §-__--__--_-§(0 arg) : void, purchaseItem(1 arg) : void, §-__--____--§(0 arg) : Boolean, §-____----_-§(1 arg) : void, onReceiveUserItemList(1 arg) : void, onLogin(1 arg) : void, §-_---__-__--§(1 arg) : void, onItemPurchased(1 arg) : void, §-__----§(0 arg) : Boolean, §-___--____--§(0 arg) : Boolean, §-___-__-____§(1 arg) : int
- `§-_----__-_--§` — 2 fn / 0 field — §-_----__-_--§(0 arg)
- `§-_--__-__---§` — 11 fn / 10 field — §-_--__-__---§(0 arg)
- `§-___---_-§` — 8 fn / 8 field — §-___---_-§(0 arg), updateKongProperties(0 arg) : void, submitSessionStarts(1 arg) : void, setCommonProperty(2 arg) : void, §-_------__-§(3 arg) : void, queueEvent(1 arg) : void, §-_-_-----_-§(0 arg) : void
- `§-____--_§` — 13 fn / 11 field — §-____--_§(0 arg)

#### `com.player03.run3.menu.map` — 7 classes  (6 obfuscated)

- `MapMenu` extends `§-__-_-__-__-§` implements `§-_----_-_-§` — 11 fn / 29 field — MapMenu(0 arg), updateFromMouse(0 arg) : void, update(1 arg) : void, showInfoBox(4 arg) : void, reset(0 arg) : void, onClick(1 arg) : void, §-_---___--__§(1 arg) : §-_-___-_-_§, getPath(1 arg) : §-_-___-_-_§, dispose(0 arg) : void, create(0 arg) : void
- `§--_--__-__-§` — 5 fn / 3 field — §--_--__-__-§(0 arg)
- `§-_-----__--_§` extends `Sprite` implements `§-_----_-_-§` — 6 fn / 12 field — §-_-----__--_§(2 arg), update(1 arg) : void, reset(0 arg) : void, onClick(1 arg) : void, §-_-_§(0 arg) : Boolean, §----_____-§(0 arg) : Boolean
- `§-_--_-__-_-§` extends `Bitmap` — 2 fn / 3 field — §-_--_-__-_-§(2 arg), dispose(0 arg) : void
- `§-_-___-_-_§` — 10 fn / 9 field — §-_-___-_-_§(3 arg), §--_______-_-§(1 arg) : int, §-__-----___§(2 arg) : Point, levelToDistance(1 arg) : Number, §-__-____---§(1 arg) : Number, §-_-_----____§(0 arg) : String, draw(1 arg) : Number, §-__----___-_§(2 arg) : Point, §-__-_-_-_---§(3 arg) : Point, §-_----_-_---§(2 arg) : void
- `§-__-_-----_-§` extends `Shape` implements `§-_----_-_-§` — 4 fn / 10 field — §-__-_-----_-§(1 arg), update(1 arg) : void, reset(0 arg) : void, fillTo(1 arg) : void
- `§-___-__--_§` extends `Point` — 1 fn / 2 field — §-___-__--_§(3 arg)

#### `com.player03.run3` — 6 classes  (3 obfuscated)

- `Currency` — 14 fn / 16 field — Currency(0 arg), submitCommonProperties(0 arg) : void, save(0 arg) : void, §--____--§(1 arg) : Boolean, recordSoftSpent(2 arg) : void, recordSoftEarned(2 arg) : void, recordSoftBought(2 arg) : void, queueSoftEarned(1 arg) : void, §--_-___--_§(0 arg) : void
- `Main` extends `Game` — 27 fn / 24 field — Main(0 arg), update(1 arg) : void, §-__-_--____§(1 arg) : Boolean, §-_-__---§(1 arg) : void, setMedQuality(1 arg) : void, setLowQuality(1 arg) : void, §-_-__-_-_-_§(2 arg) : void, setHighQuality(1 arg) : void, previousLevel(1 arg) : void, §-____--_-_-§(0 arg) : void, onMouseMove(1 arg) : void, §-___-_-§(0 arg) : void, §-_____-__-_-§(1 arg) : void, nextLevel(1 arg) : void, …
- `Preloader` extends `NMEPreloader` — 2 fn / 11 field — Preloader(0 arg), onUpdate(2 arg) : void
- `§---__----_§` — 3 fn / 2 field — §---__----_§(0 arg)
- `§--_--_-__-_§` — 13 fn / 25 field — §--_--_-__-_§(0 arg), §-__-__-_--_§(1 arg) : Boolean, §-__-----__-§(2 arg) : void, set(2 arg) : void, §--_-_--_---§(1 arg) : void, §---_-____--§(2 arg) : void, get(2 arg) : Object, flush(1 arg) : void, exists(1 arg) : Boolean, §-_---__-_--§(0 arg) : Array, §-___---__-_§(1 arg) : void, §-_-_----__-_§(1 arg) : void
- `§-_--___-_---§` — 3 fn / 9 field — §-_--___-_---§(0 arg)

#### `com.player03.run3.level.trigger.specific` — 6 classes  (5 obfuscated)

- `JumpInstructionsTrigger` extends `§-_-_---_-___§` — 3 fn / 0 field — JumpInstructionsTrigger(1 arg), §-__---_--___§(0 arg) : Boolean
- `§--_---_-§` extends `§-_-_---_-___§` — 2 fn / 0 field — §--_---_-§(1 arg), §-__---_--___§(0 arg) : Boolean
- `§--_---__--§` extends `§-_-_---_-___§` — 3 fn / 0 field — §--_---__--§(1 arg), displayInsanity(0 arg) : void, §-__---_--___§(0 arg) : Boolean
- `§-_--__----__§` extends `§-_-_---_-___§` — 3 fn / 2 field — §-_--__----__§(1 arg), reset(0 arg) : void, §-__---_--___§(0 arg) : Boolean
- `§-_--____---§` extends `§-_-_---_-___§` — 3 fn / 2 field — §-_--____---§(1 arg), reset(0 arg) : void, §-__---_--___§(0 arg) : Boolean
- `§-______--§` extends `§-_-_---_-___§` — 3 fn / 1 field — §-______--§(1 arg), reset(0 arg) : void, §-__---_--___§(0 arg) : Boolean

#### `com.player03.run3.controls` — 4 classes  (2 obfuscated)

- `PointerControlScheme` extends `§---_--_-_-§` — 7 fn / 1 field — PointerControlScheme(0 arg), update(1 arg) : void, reset(0 arg) : void, onMouseEvent(1 arg) : void, onDeactivate(0 arg) : void, onActivate(0 arg) : void
- `PointerData` — 8 fn / 7 field — PointerData(0 arg), update(1 arg) : void, reset(0 arg) : void, §-___--_---_§(3 arg) : void
- `§-_-__--_-__-§` — 3 fn / 6 field — §-_-__--_-__-§(0 arg)
- `§-_-__-__---§` extends `Sprite` — 2 fn / 7 field — §-_-__-__---§(1 arg), §-___--___--§(0 arg) : void

#### `com.player03.run3.purchase` — 1 classes

- `PurchaseManager` — 7 fn / 4 field — PurchaseManager(0 arg)

### Vendor runtimes

Third-party: only listed so the map is complete. Nothing here is Run 3 code.

#### `(default package)` — 167 classes  (1 obfuscated)

- `ApplicationMain` — 5 fn / 2 field — ApplicationMain(0 arg)
- `DateTools` — 4 fn / 0 field — DateTools(0 arg)
- `DefaultAssetLibrary` extends `AssetLibrary` — 14 fn / 5 field — DefaultAssetLibrary(0 arg), loadText(2 arg) : void, loadImage(2 arg) : void, loadBytes(2 arg) : void, loadAudioBuffer(2 arg) : void, list(1 arg) : Array, isLocal(2 arg) : Boolean, getText(1 arg) : String, getPath(1 arg) : String, getImage(1 arg) : Image, getFont(1 arg) : *, getBytes(1 arg) : ByteArray, getAudioBuffer(1 arg) : AudioBuffer, exists(2 arg) : Boolean
- `DocumentClass` extends `Main` — 1 fn / 0 field — DocumentClass(0 arg)
- `Dynamic` — 1 fn / 0 field — Dynamic(0 arg)
- `EReg` — 9 fn / 2 field — EReg(2 arg), split(1 arg) : Array, replace(2 arg) : String, matchedRight(0 arg) : String, matchedPos(0 arg) : Object, matched(1 arg) : String, matchSub(3 arg) : Boolean, match(1 arg) : Boolean, map(2 arg) : String
- `IMap` *(interface)* — 1 fn / 0 field
- `Lambda` — 3 fn / 0 field — Lambda(0 arg)
- `NMEPreloader` extends `Sprite` — 7 fn / 2 field — NMEPreloader(0 arg), onUpdate(2 arg) : void, onLoaded(0 arg) : void
- `Reflect` — 8 fn / 0 field — Reflect(0 arg)
- `Std` — 5 fn / 0 field — Std(0 arg)
- `StringBuf` — 1 fn / 1 field — StringBuf(0 arg)
- `StringTools` — 5 fn / 0 field — StringTools(0 arg)
- `Type` — 9 fn / 0 field — Type(0 arg)
- `Xml` — 9 fn / 9 field — Xml(0 arg), §-__--_--_-__§(2 arg) : XMLList, get(1 arg) : String, §--___---_-_§(1 arg) : Object
- `__ASSET__font_comfortaa_bold_ttf` extends `Font` — 1 fn / 0 field — __ASSET__font_comfortaa_bold_ttf(0 arg)
- `__ASSET__font_comfortaa_regular_ttf` extends `Font` — 1 fn / 0 field — __ASSET__font_comfortaa_regular_ttf(0 arg)
- `__ASSET__font_permanentmarker_ttf` extends `Font` — 1 fn / 0 field — __ASSET__font_permanentmarker_ttf(0 arg)
- `__ASSET__img_achievement_abreathoffreshnothing_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_abreathoffreshnothing_png(0 arg)
- `__ASSET__img_achievement_aglimpseofnewplaces_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_aglimpseofnewplaces_png(0 arg)
- `__ASSET__img_achievement_ajourneyof1000lightyears_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_ajourneyof1000lightyears_png(0 arg)
- `__ASSET__img_achievement_atruesailor_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_atruesailor_png(0 arg)
- `__ASSET__img_achievement_boldlygone_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_boldlygone_png(0 arg)
- `__ASSET__img_achievement_comingfullcircle_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_comingfullcircle_png(0 arg)
- `__ASSET__img_achievement_galacticvandalism_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_galacticvandalism_png(0 arg)
- `__ASSET__img_achievement_justbeingthorough_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_justbeingthorough_png(0 arg)
- `__ASSET__img_achievement_livingsuperball_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_livingsuperball_png(0 arg)
- `__ASSET__img_achievement_slippingandslidingtovictory_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_slippingandslidingtovictory_png(0 arg)
- `__ASSET__img_achievement_tetrahedronenthusiast_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_tetrahedronenthusiast_png(0 arg)
- `__ASSET__img_achievement_theconscientiouslizard_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_theconscientiouslizard_png(0 arg)
- `__ASSET__img_achievement_thoroughlylost_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_thoroughlylost_png(0 arg)
- `__ASSET__img_achievement_unlimitedendurance_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_unlimitedendurance_png(0 arg)
- `__ASSET__img_achievement_wherethepowercellsare_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_achievement_wherethepowercellsare_png(0 arg)
- `__ASSET__img_ads_spinner_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_ads_spinner_png(0 arg)
- `__ASSET__img_character_angel_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_angel_json(0 arg)
- `__ASSET__img_character_angel_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_angel_png(0 arg)
- `__ASSET__img_character_bunny_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_bunny_json(0 arg)
- `__ASSET__img_character_bunny_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_bunny_png(0 arg)
- `__ASSET__img_character_caveman_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_caveman_json(0 arg)
- `__ASSET__img_character_caveman_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_caveman_png(0 arg)
- `__ASSET__img_character_child_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_child_json(0 arg)
- `__ASSET__img_character_child_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_child_png(0 arg)
- `__ASSET__img_character_climber_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_climber_json(0 arg)
- `__ASSET__img_character_climber_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_climber_png(0 arg)
- `__ASSET__img_character_duplicator_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_duplicator_json(0 arg)
- `__ASSET__img_character_duplicator_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_duplicator_png(0 arg)
- `__ASSET__img_character_gentleman_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_gentleman_json(0 arg)
- `__ASSET__img_character_gentleman_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_gentleman_png(0 arg)
- `__ASSET__img_character_ghost_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_ghost_json(0 arg)
- `__ASSET__img_character_ghost_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_ghost_png(0 arg)
- `__ASSET__img_character_iceskater_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_iceskater_json(0 arg)
- `__ASSET__img_character_iceskater_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_iceskater_png(0 arg)
- `__ASSET__img_character_jackolantern_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_jackolantern_json(0 arg)
- `__ASSET__img_character_jackolantern_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_jackolantern_png(0 arg)
- `__ASSET__img_character_lizard_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_lizard_json(0 arg)
- `__ASSET__img_character_lizard_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_lizard_png(0 arg)
- `__ASSET__img_character_pastafarian_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_pastafarian_json(0 arg)
- `__ASSET__img_character_pastafarian_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_pastafarian_png(0 arg)
- `__ASSET__img_character_runner_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_runner_json(0 arg)
- `__ASSET__img_character_runner_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_runner_png(0 arg)
- `__ASSET__img_character_shadow_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_shadow_png(0 arg)
- `__ASSET__img_character_skater_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_skater_json(0 arg)
- `__ASSET__img_character_skater_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_skater_png(0 arg)
- `__ASSET__img_character_skier_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_skier_json(0 arg)
- `__ASSET__img_character_skier_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_skier_png(0 arg)
- `__ASSET__img_character_student_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_student_json(0 arg)
- `__ASSET__img_character_student_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_student_png(0 arg)
- `__ASSET__img_character_zombie_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__img_character_zombie_json(0 arg)
- `__ASSET__img_character_zombie_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_character_zombie_png(0 arg)
- `__ASSET__img_controls_arrowcirclebutton_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_controls_arrowcirclebutton_png(0 arg)
- `__ASSET__img_currency_hugepile_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_currency_hugepile_png(0 arg)
- `__ASSET__img_currency_largepile_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_currency_largepile_png(0 arg)
- `__ASSET__img_currency_mediumpile_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_currency_mediumpile_png(0 arg)
- `__ASSET__img_currency_smallpile_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_currency_smallpile_png(0 arg)
- `__ASSET__img_cutscene_candyballoon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_cutscene_candyballoon_png(0 arg)
- `__ASSET__img_editor_deletelevelicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_deletelevelicon_png(0 arg)
- `__ASSET__img_editor_eraseicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_eraseicon_png(0 arg)
- `__ASSET__img_editor_import_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_import_png(0 arg)
- `__ASSET__img_editor_minus_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_minus_png(0 arg)
- `__ASSET__img_editor_plus_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_plus_png(0 arg)
- `__ASSET__img_editor_scrollarrow_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_scrollarrow_png(0 arg)
- `__ASSET__img_editor_zoominbutton_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_zoominbutton_png(0 arg)
- `__ASSET__img_editor_zoomoutbutton_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_editor_zoomoutbutton_png(0 arg)
- `__ASSET__img_instructions_swipereminder_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_instructions_swipereminder_png(0 arg)
- `__ASSET__img_instructions_swipevisualinstructions_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_instructions_swipevisualinstructions_png(0 arg)
- `__ASSET__img_map_derprunner_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_derprunner_png(0 arg)
- `__ASSET__img_map_infinity_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_infinity_png(0 arg)
- `__ASSET__img_map_mapicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_mapicon_png(0 arg)
- `__ASSET__img_map_mapmask_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_mapmask_png(0 arg)
- `__ASSET__img_map_planet_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_planet_png(0 arg)
- `__ASSET__img_map_snowflakes_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_snowflakes_png(0 arg)
- `__ASSET__img_map_speechbubbles_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_speechbubbles_png(0 arg)
- `__ASSET__img_map_teapot_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_map_teapot_png(0 arg)
- `__ASSET__img_menu_achievements_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_achievements_png(0 arg)
- `__ASSET__img_menu_characterselection_angel_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_angel_png(0 arg)
- `__ASSET__img_menu_characterselection_bunny_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_bunny_png(0 arg)
- `__ASSET__img_menu_characterselection_caveman_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_caveman_png(0 arg)
- `__ASSET__img_menu_characterselection_child_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_child_png(0 arg)
- `__ASSET__img_menu_characterselection_climber_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_climber_png(0 arg)
- `__ASSET__img_menu_characterselection_duplicator_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_duplicator_png(0 arg)
- `__ASSET__img_menu_characterselection_gentleman_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_gentleman_png(0 arg)
- `__ASSET__img_menu_characterselection_ghost_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_ghost_png(0 arg)
- `__ASSET__img_menu_characterselection_iceskater_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_iceskater_png(0 arg)
- `__ASSET__img_menu_characterselection_jackolantern_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_jackolantern_png(0 arg)
- `__ASSET__img_menu_characterselection_lizard_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_lizard_png(0 arg)
- `__ASSET__img_menu_characterselection_lockedcharacteroverlay_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_lockedcharacteroverlay_png(0 arg)
- `__ASSET__img_menu_characterselection_pastafarian_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_pastafarian_png(0 arg)
- `__ASSET__img_menu_characterselection_runner_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_runner_png(0 arg)
- `__ASSET__img_menu_characterselection_skater_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_skater_png(0 arg)
- `__ASSET__img_menu_characterselection_skier_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_skier_png(0 arg)
- `__ASSET__img_menu_characterselection_student_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_student_png(0 arg)
- `__ASSET__img_menu_characterselection_zombie_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_characterselection_zombie_png(0 arg)
- `__ASSET__img_menu_checkmark_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_checkmark_png(0 arg)
- `__ASSET__img_menu_closewindowicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_closewindowicon_png(0 arg)
- `__ASSET__img_menu_creditsicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_creditsicon_png(0 arg)
- `__ASSET__img_menu_editicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_editicon_png(0 arg)
- `__ASSET__img_menu_exploremode_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_exploremode_png(0 arg)
- `__ASSET__img_menu_gearicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_gearicon_png(0 arg)
- `__ASSET__img_menu_googleplay_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_googleplay_png(0 arg)
- `__ASSET__img_menu_googleplaygames_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_googleplaygames_png(0 arg)
- `__ASSET__img_menu_googleplayleaderboards_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_googleplayleaderboards_png(0 arg)
- `__ASSET__img_menu_infinitemode_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_infinitemode_png(0 arg)
- `__ASSET__img_menu_kongplus_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_kongplus_png(0 arg)
- `__ASSET__img_menu_kongregatebutton_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_kongregatebutton_png(0 arg)
- `__ASSET__img_menu_leaderboards_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_leaderboards_png(0 arg)
- `__ASSET__img_menu_lionheartpromobutton_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_lionheartpromobutton_png(0 arg)
- `__ASSET__img_menu_lionheartpromocomplete_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_lionheartpromocomplete_png(0 arg)
- `__ASSET__img_menu_lionheartsplash_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_lionheartsplash_png(0 arg)
- `__ASSET__img_menu_playgame_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_playgame_png(0 arg)
- `__ASSET__img_menu_run3_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_run3_png(0 arg)
- `__ASSET__img_menu_run_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_run_png(0 arg)
- `__ASSET__img_menu_scrollindicator_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_scrollindicator_png(0 arg)
- `__ASSET__img_menu_shop_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_shop_png(0 arg)
- `__ASSET__img_menu_tyranticon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_tyranticon_png(0 arg)
- `__ASSET__img_menu_tyrantpromobutton_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_tyrantpromobutton_png(0 arg)
- `__ASSET__img_menu_tyrantpromocomplete_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_tyrantpromocomplete_png(0 arg)
- `__ASSET__img_menu_wintermode_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_menu_wintermode_png(0 arg)
- `__ASSET__img_options_backlevelicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_backlevelicon_png(0 arg)
- `__ASSET__img_options_fadedpauseicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_fadedpauseicon_png(0 arg)
- `__ASSET__img_options_homeicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_homeicon_png(0 arg)
- `__ASSET__img_options_musicicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_musicicon_png(0 arg)
- `__ASSET__img_options_musicofficon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_musicofficon_png(0 arg)
- `__ASSET__img_options_pauseicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_pauseicon_png(0 arg)
- `__ASSET__img_options_skiplevelicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_skiplevelicon_png(0 arg)
- `__ASSET__img_options_unpauseicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_options_unpauseicon_png(0 arg)
- `__ASSET__img_singledpi_boxicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_boxicon_png(0 arg)
- `__ASSET__img_singledpi_rolledboxicon_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_rolledboxicon_png(0 arg)
- `__ASSET__img_singledpi_texture_acceleration_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_acceleration_png(0 arg)
- `__ASSET__img_singledpi_texture_arrow_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_arrow_png(0 arg)
- `__ASSET__img_singledpi_texture_background0_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_background0_png(0 arg)
- `__ASSET__img_singledpi_texture_background1_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_background1_png(0 arg)
- `__ASSET__img_singledpi_texture_candy_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_candy_png(0 arg)
- `__ASSET__img_singledpi_texture_crumblingtile_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_crumblingtile_png(0 arg)
- `__ASSET__img_singledpi_texture_dragonbones_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_dragonbones_png(0 arg)
- `__ASSET__img_singledpi_texture_icetile_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_icetile_png(0 arg)
- `__ASSET__img_singledpi_texture_mapwithteapot_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_mapwithteapot_png(0 arg)
- `__ASSET__img_singledpi_texture_warningstripes_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_warningstripes_png(0 arg)
- `__ASSET__img_singledpi_texture_wormhole_png` extends `BitmapData` — 1 fn / 0 field — __ASSET__img_singledpi_texture_wormhole_png(0 arg)
- `__ASSET__music_thevoid_mp3` extends `Sound` — 1 fn / 0 field — __ASSET__music_thevoid_mp3(2 arg)
- `__ASSET__music_travelthegalaxy_mp3` extends `Sound` — 1 fn / 0 field — __ASSET__music_travelthegalaxy_mp3(2 arg)
- `__ASSET__music_wormholetosomewhere_mp3` extends `Sound` — 1 fn / 0 field — __ASSET__music_wormholetosomewhere_mp3(2 arg)
- `__ASSET__text_buildnumber_xml` extends `ByteArray` — 1 fn / 0 field — __ASSET__text_buildnumber_xml(0 arg)
- `__ASSET__text_explorelevels_txt` extends `ByteArray` — 1 fn / 0 field — __ASSET__text_explorelevels_txt(0 arg)
- `__ASSET__text_infinitelevels_txt` extends `ByteArray` — 1 fn / 0 field — __ASSET__text_infinitelevels_txt(0 arg)
- `__ASSET__text_mapcontents_json` extends `ByteArray` — 1 fn / 0 field — __ASSET__text_mapcontents_json(0 arg)
- `boot_f43d` extends `Boot` — 2 fn / 0 field — boot_f43d(0 arg), init(0 arg) : void
- `§-____-_---§` — 3 fn / 2 field — §-____-_---§(2 arg), next(0 arg) : int, hasNext(0 arg) : Boolean

#### `motion.easing` — 15 classes  (4 obfuscated)

- `Expo` — 4 fn / 0 field — Expo(0 arg)
- `ExpoEaseIn` implements `IEasing` — 3 fn / 0 field — ExpoEaseIn(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `ExpoEaseInOut` implements `IEasing` — 3 fn / 0 field — ExpoEaseInOut(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `ExpoEaseOut` implements `IEasing` — 3 fn / 0 field — ExpoEaseOut(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `IEasing` *(interface)* — 2 fn / 0 field
- `Linear` — 2 fn / 0 field — Linear(0 arg)
- `LinearEaseNone` implements `IEasing` — 3 fn / 0 field — LinearEaseNone(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `Quad` — 4 fn / 0 field — Quad(0 arg)
- `QuadEaseIn` implements `IEasing` — 3 fn / 0 field — QuadEaseIn(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `QuadEaseInOut` implements `IEasing` — 3 fn / 0 field — QuadEaseInOut(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `QuadEaseOut` implements `IEasing` — 3 fn / 0 field — QuadEaseOut(0 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `§--_--______§` implements `IEasing` — 3 fn / 1 field — §--_--______§(1 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `§-_----§` implements `IEasing` — 3 fn / 1 field — §-_----§(1 arg), ease(4 arg) : Number, calculate(1 arg) : Number
- `§-_--_--_-_§` — 4 fn / 0 field — §-_--_--_-_§(0 arg)
- `§-__-__-___-§` implements `IEasing` — 3 fn / 1 field — §-__-__-___-§(1 arg), ease(4 arg) : Number, calculate(1 arg) : Number

#### `lime.graphics` — 12 classes  (1 obfuscated)

- `CanvasRenderContext` — 49 fn / 20 field — CanvasRenderContext(0 arg)
- `DOMRenderContext` — 55 fn / 105 field — DOMRenderContext(0 arg)
- `Font` — 8 fn / 5 field — Font(1 arg), createImage(0 arg) : ImageBuffer, __fromFile(1 arg) : void
- `GLRenderContext` — 138 fn / 298 field — GLRenderContext(0 arg)
- `GlyphRect` — 1 fn / 6 field — GlyphRect(6 arg)
- `Image` — 42 fn / 10 field — Image(7 arg), set_transparent(1 arg) : Boolean, set_src(1 arg) : *, set_premultiplied(1 arg) : Boolean, set_powerOfTwo(1 arg) : Boolean, set_data(1 arg) : UInt8Array, setPixels(2 arg) : void, setPixel32(3 arg) : void, setPixel(3 arg) : void, resize(2 arg) : void, merge(7 arg) : void, get_transparent(0 arg) : Boolean, get_src(0 arg) : *, get_rect(0 arg) : lime.math.Rectangle, …
- `ImageBuffer` — 4 fn / 12 field — ImageBuffer(4 arg), set_src(1 arg) : *, get_src(0 arg) : *, clone(0 arg) : ImageBuffer
- `ImageChannel` — 2 fn / 10 field — ImageChannel(3 arg)
- `ImageType` — 2 fn / 10 field — ImageType(3 arg)
- `RenderContext` — 8 fn / 6 field — RenderContext(3 arg)
- `Renderer` — 4 fn / 6 field — Renderer(1 arg), render(0 arg) : void, flip(0 arg) : void, create(0 arg) : void
- `§-_______-_§` — 5 fn / 0 field — §-_______-_§(0 arg)

#### `openfl._internal.aglsl` — 11 classes  (7 obfuscated)

- `AGALTokenizer` — 3 fn / 0 field — AGALTokenizer(0 arg), §-_-__-___-§(1 arg) : §-_________--§
- `AGLSLParser` — 4 fn / 0 field — AGLSLParser(0 arg), sourcetostring(6 arg) : String, parse(1 arg) : String
- `Context3D` — 1 fn / 10 field — Context3D(0 arg)
- `Sampler` — 1 fn / 7 field — Sampler(0 arg)
- `§-----_-_§` — 2 fn / 1 field — §-----_-_§(0 arg)
- `§----_-__-_§` — 1 fn / 11 field — §----_-__-_§(11 arg)
- `§---___-__-_§` — 2 fn / 1 field — §---___-__-_§(0 arg), §-_--_---__-§(2 arg) : String
- `§---___-___§` — 1 fn / 3 field — §---___-___§(0 arg)
- `§-_--___-_-_-§` — 1 fn / 4 field — §-_--___-_-_-§(0 arg)
- `§-_-___-_--__§` — 1 fn / 15 field — §-_-___-_--__§(0 arg)
- `§-_________--§` — 1 fn / 8 field — §-_________--§(0 arg)

#### `motion.actuators` — 9 classes

- `FilterActuator` extends `SimpleActuator` — 5 fn / 3 field — FilterActuator(3 arg), update(1 arg) : void, initialize(0 arg) : void, apply(0 arg) : void
- `GenericActuator` implements `IGenericActuator` — 22 fn / 23 field — GenericActuator(3 arg), stop(3 arg) : void, snapping(1 arg) : IGenericActuator, smartRotation(1 arg) : IGenericActuator, reverse(1 arg) : IGenericActuator, resume(0 arg) : void, repeat(1 arg) : IGenericActuator, reflect(1 arg) : IGenericActuator, pause(0 arg) : void, onUpdate(2 arg) : IGenericActuator, §-____--_-_-§(2 arg) : IGenericActuator, onRepeat(2 arg) : IGenericActuator, §--_-_____-§(2 arg) : IGenericActuator, onComplete(2 arg) : IGenericActuator, …
- `IGenericActuator` *(interface)* — 18 fn / 0 field
- `MethodActuator` extends `SimpleActuator` — 4 fn / 2 field — MethodActuator(3 arg), update(1 arg) : void, initialize(0 arg) : void, apply(0 arg) : void
- `MotionPathActuator` extends `SimpleActuator` — 5 fn / 0 field — MotionPathActuator(3 arg), update(1 arg) : void, initialize(0 arg) : void, apply(0 arg) : void
- `PropertyDetails` — 1 fn / 5 field — PropertyDetails(5 arg)
- `PropertyPathDetails` extends `PropertyDetails` — 1 fn / 1 field — PropertyPathDetails(4 arg)
- `SimpleActuator` extends `GenericActuator` — 14 fn / 16 field — SimpleActuator(3 arg), update(1 arg) : void, stop(3 arg) : void, resume(0 arg) : void, pause(0 arg) : void, onUpdate(2 arg) : IGenericActuator, move(0 arg) : void, initialize(0 arg) : void, delay(1 arg) : IGenericActuator, autoVisible(1 arg) : IGenericActuator
- `TransformActuator` extends `SimpleActuator` — 8 fn / 4 field — TransformActuator(3 arg), update(1 arg) : void, initializeSound(0 arg) : void, initializeColor(0 arg) : void, initialize(0 arg) : void, apply(0 arg) : void

#### `lime.audio` — 8 classes

- `ALAudioContext` — 81 fn / 62 field — ALAudioContext(0 arg)
- `ALCAudioContext` — 14 fn / 21 field — ALCAudioContext(0 arg)
- `AudioBuffer` — 5 fn / 6 field — AudioBuffer(0 arg)
- `AudioContext` — 7 fn / 6 field — AudioContext(3 arg)
- `AudioManager` — 5 fn / 1 field — AudioManager(0 arg)
- `FlashAudioContext` — 15 fn / 0 field — FlashAudioContext(0 arg)
- `HTML5AudioContext` — 42 fn / 9 field — HTML5AudioContext(0 arg)
- `WebAudioContext` — 20 fn / 6 field — WebAudioContext(0 arg)

#### `lime.graphics.opengl` — 8 classes

- `GL` — 138 fn / 298 field — GL(0 arg)
- `GLBuffer` extends `GLObject` — 2 fn / 0 field — GLBuffer(2 arg), getType(0 arg) : String
- `GLFramebuffer` extends `GLObject` — 2 fn / 0 field — GLFramebuffer(2 arg), getType(0 arg) : String
- `GLObject` — 8 fn / 4 field — GLObject(2 arg), toString(0 arg) : String, isValid(0 arg) : Boolean, isInvalid(0 arg) : Boolean, invalidate(0 arg) : void, get_valid(0 arg) : Boolean, get_invalidated(0 arg) : Boolean, getType(0 arg) : String
- `GLProgram` extends `GLObject` — 4 fn / 1 field — GLProgram(2 arg), getType(0 arg) : String, getShaders(0 arg) : Array, attach(1 arg) : void
- `GLRenderbuffer` extends `GLObject` — 2 fn / 0 field — GLRenderbuffer(2 arg), getType(0 arg) : String
- `GLShader` extends `GLObject` — 3 fn / 0 field — GLShader(2 arg), isValid(0 arg) : Boolean, getType(0 arg) : String
- `GLTexture` extends `GLObject` — 2 fn / 0 field — GLTexture(2 arg), getType(0 arg) : String

#### `motion` — 7 classes

- `Actuate` — 17 fn / 4 field — Actuate(0 arg)
- `BezierPath` — 2 fn / 3 field — BezierPath(3 arg), calculate(2 arg) : Number
- `ComponentPath` implements `IComponentPath` — 4 fn / 4 field — ComponentPath(0 arg), get_end(0 arg) : Number, calculate(1 arg) : Number, addPath(1 arg) : void
- `IComponentPath` *(interface)* — 1 fn / 0 field
- `LinearPath` extends `BezierPath` — 2 fn / 0 field — LinearPath(2 arg), calculate(2 arg) : Number
- `MotionPath` — 6 fn / 6 field — MotionPath(0 arg), line(3 arg) : MotionPath, get_y(0 arg) : IComponentPath, get_x(0 arg) : IComponentPath, get_rotation(0 arg) : RotationPath, bezier(5 arg) : MotionPath
- `RotationPath` implements `IComponentPath` — 3 fn / 6 field — RotationPath(2 arg), get_end(0 arg) : Number, calculate(1 arg) : Number

#### `lime.utils` — 6 classes

- `ArrayBufferView` implements `IMemoryRange` — 18 fn / 3 field — ArrayBufferView(3 arg), setUInt8(2 arg) : void, setUInt32(2 arg) : void, setUInt16(2 arg) : void, setInt8(2 arg) : void, setInt32(2 arg) : void, setInt16(2 arg) : void, setFloat32(2 arg) : void, getUInt8(1 arg) : int, getUInt32(1 arg) : int, getUInt16(1 arg) : int, getStart(0 arg) : int, getLength(0 arg) : int, getInt8(1 arg) : int, …
- `Float32Array` extends `ArrayBufferView` — 5 fn / 2 field — Float32Array(3 arg), subarray(2 arg) : Float32Array, set(2 arg) : void, __set(2 arg) : void, __get(1 arg) : Number
- `IMemoryRange` *(interface)* — 3 fn / 0 field
- `Int16Array` extends `ArrayBufferView` — 5 fn / 2 field — Int16Array(3 arg), subarray(2 arg) : Int16Array, set(2 arg) : void, __set(2 arg) : void, __get(1 arg) : int
- `Int32Array` extends `ArrayBufferView` — 5 fn / 2 field — Int32Array(3 arg), subarray(2 arg) : Int32Array, set(2 arg) : void, __set(2 arg) : void, __get(1 arg) : int
- `UInt8Array` extends `ArrayBufferView` — 5 fn / 2 field — UInt8Array(3 arg), subarray(2 arg) : UInt8Array, set(2 arg) : void, __set(2 arg) : void, __get(1 arg) : int

#### `openfl.display` — 6 classes  (1 obfuscated)

- `Application` extends `lime.app.Application` — 1 fn / 3 field — Application(0 arg)
- `DirectRenderer` extends `Sprite` — 3 fn / 1 field — DirectRenderer(1 arg), set_render(1 arg) : *, get_render(0 arg) : *
- `FPS` extends `TextField` — 2 fn / 3 field — FPS(3 arg), this_onEnterFrame(1 arg) : void
- `OpenGLView` extends `DirectRenderer` — 2 fn / 5 field — OpenGLView(0 arg)
- `Preloader` extends `lime.app.Preloader` — 5 fn / 2 field — Preloader(1 arg), update(2 arg) : void, start(0 arg) : void, load(2 arg) : void, display_onComplete(1 arg) : void
- `§--___-_-__-§` — 9 fn / 27 field — §--___-_-__-§(1 arg), §--_-__-___-§(1 arg) : Rectangle, §-_-----__§(1 arg) : Rectangle, §---___-____§(1 arg) : Point, §-_____---_-_§(5 arg) : void, §-_-_____--§(2 arg) : int

#### `com.adobe.utils` — 5 classes

- `AGALMiniAssembler` — 3 fn / 97 field — AGALMiniAssembler(1 arg), assemble(3 arg) : ByteArray
- `OpCode` — 6 fn / 4 field — OpCode(4 arg), toString(0 arg) : String, numRegister(0 arg) : uint, name(0 arg) : String, flags(0 arg) : uint, emitCode(0 arg) : uint
- `PerspectiveMatrix3D` extends `Matrix3D` — 15 fn / 4 field — PerspectiveMatrix3D(1 arg), perspectiveRH(4 arg) : void, perspectiveOffCenterRH(6 arg) : void, perspectiveOffCenterLH(6 arg) : void, perspectiveLH(4 arg) : void, perspectiveFieldOfViewRH(4 arg) : void, perspectiveFieldOfViewLH(4 arg) : void, orthoRH(4 arg) : void, orthoOffCenterRH(6 arg) : void, orthoOffCenterLH(6 arg) : void, orthoLH(4 arg) : void, lookAtRH(3 arg) : void, lookAtLH(3 arg) : void, copyRawData(1 arg) : void, …
- `Register` — 7 fn / 5 field — Register(5 arg), toString(0 arg) : String, range(0 arg) : uint, name(0 arg) : String, longName(0 arg) : String, flags(0 arg) : uint, emitCode(0 arg) : uint
- `Sampler` — 5 fn / 3 field — Sampler(3 arg), toString(0 arg) : String, name(0 arg) : String, mask(0 arg) : uint, flag(0 arg) : uint

#### `openfl` — 5 classes  (1 obfuscated)

- `AssetCache` implements `§-__-____--_-§` — 16 fn / 4 field — AssetCache(0 arg), §-_-----_---_§(1 arg) : Boolean, §-___--__--_§(2 arg) : void, §-__---_----§(2 arg) : void, §-_-_-___-__-§(2 arg) : void, §---_-__-__-§(1 arg) : Boolean, §-___--__-_§(1 arg) : Boolean, §-------__--§(1 arg) : Boolean, §------___--§(1 arg) : Boolean, §-_-----____§(1 arg) : Boolean, §-___--______§(1 arg) : Boolean, get_enabled(0 arg) : Boolean, getSound(1 arg) : Sound, getFont(1 arg) : Font, …
- `AssetLibrary` extends `lime.AssetLibrary` — 7 fn / 0 field — AssetLibrary(0 arg), loadSound(2 arg) : void, loadMusic(2 arg) : void, loadMovieClip(2 arg) : void, getMusic(1 arg) : Sound
- `Assets` — 32 fn / 3 field — Assets(0 arg)
- `Lib` — 13 fn / 3 field — Lib(0 arg)
- `§-__-____--_-§` *(interface)* — 13 fn / 0 field

#### `co.janicek.core.math` — 4 classes

- `HashCore` — 4 fn / 0 field — HashCore(0 arg)
- `MathCore` — 10 fn / 3 field — MathCore(0 arg)
- `RandomCore` — 10 fn / 2 field — RandomCore(0 arg)
- `UUID` — 6 fn / 2 field — UUID(0 arg)

#### `haxe` — 4 classes

- `CallStack` — 6 fn / 0 field — CallStack(0 arg)
- `Log` — 3 fn / 0 field — Log(0 arg)
- `StackItem` — 6 fn / 7 field — StackItem(3 arg)
- `Timer` — 5 fn / 2 field — Timer(1 arg), stop(0 arg) : void

#### `lime._backend.flash` — 4 classes  (1 obfuscated)

- `FlashApplication` — 9 fn / 3 field — FlashApplication(1 arg), handleWindowEvent(1 arg) : void, handleUpdateEvent(1 arg) : void, handleTouchEvent(1 arg) : void, handleMouseEvent(1 arg) : void, handleKeyEvent(1 arg) : void, exec(0 arg) : int, create(1 arg) : void
- `FlashRenderer` — 4 fn / 1 field — FlashRenderer(1 arg), create(0 arg) : void
- `FlashWindow` — 6 fn / 1 field — FlashWindow(1 arg)
- `§-______----_§` — 5 fn / 2 field — §-______----_§(0 arg)

#### `lime.app` — 4 classes

- `Application` extends `Module` — 30 fn / 8 field — Application(0 arg), §-_-_-_-_§(1 arg) : void, §-____--_-_--§(1 arg) : void, get_window(0 arg) : Window, §-__--_-_-§(0 arg) : Renderer, exec(0 arg) : int, create(1 arg) : void, addWindow(1 arg) : void, §-_---_-__--_§(1 arg) : void
- `Event` — 3 fn / 3 field — Event(0 arg), remove(1 arg) : void, add(3 arg) : void
- `Module` — 1 fn / 0 field — Module(0 arg)
- `Preloader` extends `Sprite` — 9 fn / 2 field — Preloader(0 arg), update(2 arg) : void, start(0 arg) : void, loaderInfo_onProgress(1 arg) : void, loaderInfo_onInit(1 arg) : void, loaderInfo_onComplete(1 arg) : void, load(2 arg) : void, current_onEnter(1 arg) : void, create(1 arg) : void

#### `lime.math` — 4 classes

- `Matrix3` — 28 fn / 8 field — Matrix3(6 arg), translate(2 arg) : void, transformVector2(1 arg) : Vector2, toString(0 arg) : String, toMozString(0 arg) : String, to3DString(1 arg) : String, setTo(6 arg) : void, setRotation(2 arg) : void, scale(2 arg) : void, rotate(1 arg) : void, mult(1 arg) : Matrix3, invert(0 arg) : Matrix3, identity(0 arg) : void, equals(1 arg) : Boolean, …
- `Rectangle` — 35 fn / 4 field — Rectangle(4 arg), union(1 arg) : lime.math.Rectangle, transform(1 arg) : lime.math.Rectangle, set_topLeft(1 arg) : Vector2, set_top(1 arg) : Number, set_size(1 arg) : Vector2, set_right(1 arg) : Number, set_left(1 arg) : Number, set_bottomRight(1 arg) : Vector2, set_bottom(1 arg) : Number, setTo(4 arg) : void, setEmpty(0 arg) : void, offsetPoint(1 arg) : void, offset(2 arg) : void, …
- `Vector2` — 13 fn / 3 field — Vector2(2 arg), subtract(1 arg) : Vector2, setTo(2 arg) : void, offset(2 arg) : void, normalize(1 arg) : void, get_length(0 arg) : Number, equals(1 arg) : Boolean, clone(0 arg) : Vector2, add(1 arg) : Vector2, __toFlashPoint(0 arg) : Point
- `Vector4` — 24 fn / 9 field — Vector4(4 arg), toString(0 arg) : String, subtract(1 arg) : Vector4, setTo(3 arg) : void, scaleBy(1 arg) : void, project(0 arg) : void, normalize(0 arg) : Number, negate(0 arg) : void, nearEquals(3 arg) : Boolean, incrementBy(1 arg) : void, get_lengthSquared(0 arg) : Number, get_length(0 arg) : Number, equals(2 arg) : Boolean, dotProduct(1 arg) : Number, …

#### `haxe.ds` — 3 classes

- `IntMap` implements `IMap` — 2 fn / 1 field — IntMap(0 arg), get(1 arg) : Object
- `ObjectMap` extends `Dictionary` implements `IMap` — 4 fn / 0 field — ObjectMap(0 arg), remove(1 arg) : Boolean, iterator(0 arg) : Object, get(1 arg) : Object
- `StringMap` implements `IMap` — 6 fn / 1 field — StringMap(0 arg), set(2 arg) : void, remove(1 arg) : Boolean, keys(0 arg) : Object, iterator(0 arg) : Object, get(1 arg) : Object

#### `lime` — 3 classes

- `AssetCache` — 2 fn / 4 field — AssetCache(0 arg), clear(1 arg) : void
- `AssetLibrary` — 16 fn / 1 field — AssetLibrary(0 arg), loadText(2 arg) : void, loadImage(2 arg) : void, loadFont(2 arg) : void, loadBytes(2 arg) : void, loadAudioBuffer(2 arg) : void, list(1 arg) : Array, isLocal(2 arg) : Boolean, getText(1 arg) : String, getPath(1 arg) : String, getImage(1 arg) : Image, getFont(1 arg) : *, getBytes(1 arg) : ByteArray, getAudioBuffer(1 arg) : AudioBuffer, …
- `Assets` — 22 fn / 4 field — Assets(0 arg)

#### `lime.ui` — 3 classes

- `Mouse` — 5 fn / 0 field — Mouse(0 arg)
- `MouseCursor` — 2 fn / 19 field — MouseCursor(3 arg)
- `Window` — 6 fn / 24 field — Window(1 arg), §-_---_--§(1 arg) : void, resize(2 arg) : void, move(2 arg) : void, create(1 arg) : void, close(0 arg) : void

#### `motion._Actuate` — 3 classes

- `EffectsOptions` — 2 fn / 3 field — EffectsOptions(3 arg), filter(2 arg) : IGenericActuator
- `TransformOptions` — 3 fn / 3 field — TransformOptions(3 arg), sound(2 arg) : IGenericActuator, color(3 arg) : IGenericActuator
- `TweenTimer` — 1 fn / 1 field — TweenTimer(1 arg)

#### `co.janicek.core` — 2 classes

- `LambdaCore` — 2 fn / 0 field — LambdaCore(0 arg)
- `NullCore` — 5 fn / 0 field — NullCore(0 arg)

#### `flash` — 2 classes

- `Boot` extends `MovieClip` — 12 fn / 4 field — Boot(0 arg), start(0 arg) : void, init(0 arg) : void, doInitDelay(1 arg) : void
- `Lib` — 8 fn / 1 field — Lib(0 arg)

#### `haxe.crypto` — 2 classes

- `BaseCode` — 1 fn / 0 field — BaseCode(0 arg)
- `Md5` — 15 fn / 0 field — Md5(0 arg), ii(7 arg) : int, hh(7 arg) : int, gg(7 arg) : int, ff(7 arg) : int, doEncode(1 arg) : Array, cmn(6 arg) : int

#### `lime.audio.openal` — 2 classes

- `AL` — 81 fn / 62 field — AL(0 arg)
- `ALC` — 14 fn / 21 field — ALC(0 arg)

#### `lime.graphics.utils` — 2 classes

- `ImageCanvasUtil` — 19 fn / 0 field — ImageCanvasUtil(0 arg)
- `ImageDataUtil` — 17 fn / 2 field — ImageDataUtil(0 arg)

#### `openfl._Vector` — 2 classes

- `VectorDataIterator` — 3 fn / 2 field — VectorDataIterator(1 arg), next(0 arg) : Object, hasNext(0 arg) : Boolean
- `Vector_Impl_` — 31 fn / 0 field — Vector_Impl_(0 arg)

#### `haxe.ds._ObjectMap` — 1 classes

- `NativeValueIterator` — 3 fn / 2 field — NativeValueIterator(0 arg), next(0 arg) : *, hasNext(0 arg) : Boolean

#### `haxe.io` — 1 classes

- `Eof` — 2 fn / 0 field — Eof(0 arg)

#### `lime._Assets` — 1 classes

- `AssetType_Impl_` — 1 fn / 8 field — AssetType_Impl_(0 arg)

#### `lime.audio.openal._ALContext` — 1 classes

- `ALContext_Impl_` — 2 fn / 0 field — ALContext_Impl_(0 arg)

#### `lime.audio.openal._ALDevice` — 1 classes

- `ALDevice_Impl_` — 2 fn / 0 field — ALDevice_Impl_(0 arg)

#### `lime.math._ColorMatrix` — 1 classes

- `ColorMatrix_Impl_` — 27 fn / 1 field — ColorMatrix_Impl_(0 arg)

#### `lime.system` — 1 classes

- `System` — 7 fn / 2 field — System(0 arg)

#### `lime.ui._KeyCode` — 1 classes

- `KeyCode_Impl_` — 1 fn / 236 field — KeyCode_Impl_(0 arg)

#### `openfl._Assets` — 1 classes

- `AssetType_Impl_` — 1 fn / 9 field — AssetType_Impl_(0 arg)

#### `openfl.utils` — 1 classes

- `AGALMiniAssembler` — 15 fn / 2 field — AGALMiniAssembler(0 arg), processLine(2 arg) : void, emitSource(3 arg) : Boolean, emitSampler(4 arg) : Boolean, emitDest(3 arg) : Boolean, assemble(3 arg) : *, addHeader(2 arg) : void

#### `unitsystem` — 1 classes

- `Game` extends `Sprite` — 20 fn / 22 field — Game(3 arg), update(1 arg) : void, §-__-_--____§(1 arg) : Boolean, §-_-__-_-_-_§(2 arg) : void, onTouchEnd(1 arg) : void, §-_-_---____§(1 arg) : void, onMouseEvent(1 arg) : void, onEnterFrame(1 arg) : void, onDeactivate(1 arg) : void, onActivate(1 arg) : void, §--___-__-_-§(1 arg) : void, createOverlay(1 arg) : void
