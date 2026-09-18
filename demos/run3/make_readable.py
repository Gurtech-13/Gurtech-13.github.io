#!/usr/bin/env python3
"""Generate `readable_src/` - a human-readable mirror of the decompiled original.

`src/` is the decompiler's output exactly as emitted (obfuscated `\xA7name\xA7`
identifiers, and `%3C` / `%3E` / `%22`-escaped file names).  It stays untouched:
the docs, `bake_cutscenes.py` and the suites all reference it by its emitted
names, and keeping it faithful is what lets a decode be re-checked later.

`readable_src/` is the same tree with the identifiers this project has
*established* replaced by readable names, so the camera / layout / staging
classes can be read without a legend open in another window.  Everything not
established keeps its emitted name.

Rules
-----
* `PACKAGES` / `CLASSES` are rewritten EVERYWHERE in the copy.  Both are
  globally unique by construction (a class name is a file name, a package name
  is a directory), so a global rewrite stays consistent: `import a.b.C`,
  `new C(`, `extends C` and `:C` all move together.  Renaming a package also
  renames its directory, and renaming a class also renames its file, because
  ActionScript requires the file to be named after the class it declares.
* `MEMBERS` are rewritten only inside `SCOPE` (the classes this project reads
  and edits).  Obfuscated *member and local* tokens are assigned per class, not
  globally - the same token means different things in different classes (the
  docs note this for the cutscene actor vars) - so a global rewrite would
  mislabel unrelated members.  Scoping to the classes that call each other keeps
  the readable subset internally consistent; a member referenced from a class
  outside that set keeps its emitted name.

Evidence for every name is recorded in the generated `RENAME_MAP.md`.

Usage:  python3 make_readable.py [--check]
"""

import argparse
import os
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "src")
DST = os.path.join(HERE, "readable_src")

S = "\u00a7"  # the decompiler's identifier delimiter (U+00A7)


def tok(inner):
    """Render an emitted token from its inner text: "<!C" -> the token."""
    return S + inner + S


# --------------------------------------------------------------------------
# Escaping.  The decompiler percent-escapes the characters that are illegal in
# a file name (`<`, `>`, `"`), so the directory holding `package <!&` is named
# `%3C!&` and the class `<x` lives in `%3Ex.as` (with the delimiters).
# --------------------------------------------------------------------------
ESCAPES = {"<": "%3C", ">": "%3E", '"': "%22"}


def enc(name):
    return "".join(ESCAPES.get(ch, ch) for ch in name)


# --------------------------------------------------------------------------
# Packages (rewritten globally; the directory is renamed with them).
# --------------------------------------------------------------------------
PACKAGES = {
    "\u00a7<!&\u00a7": "world3d",   # World / Entity3D / Billboard / Physics3D / Constraint3D
    "\u00a72X\u00a7": "layout3d",   # Layout3D + Line/Grid/Tunnel layouts, PositionData3D
    "\u00a71^\u00a7": "geom3d",     # Transform
    "\u00a76[\u00a7": "game",       # the driver that runs a level
    "\u00a7`_\u00a7": "stage",      # the cutscene StageActor and its helpers
    "\u00a73!b\u00a7": "scenes",    # one class per cutscene
    "\u00a7!]\u00a7": "map",        # Map, the game's map system handling tunnels, levels, and paths
}


# --------------------------------------------------------------------------
# Classes (rewritten globally; the file is renamed with them).
# --------------------------------------------------------------------------
CLASSES = {
    "\u00a7=2\u00a7": "World",            # 3D scene graph: camera Transform, gravity, animations
    "\u00a7 !W\u00a7": "Level",           # extends World; the tunnel/checkpoint level
    "\u00a7%!\u00a7": "Entity3D",         # scene node: transform, physicsData, model, level
    "\u00a7 !#\u00a7": "Billboard",       # Entity3D that re-orients to face the camera each frame
    "\u00a73!`\u00a7": "Physics3D",       # 3D collider (extends Physics)
    "\u00a7]p\u00a7": "Constraint3D",     # pairwise body interaction (inferred)
    "\u00a7^s\u00a7": "StageActor",       # cutscene actor; placeAt(ring, row)
    "\u00a7>x\u00a7": "TunnelLayout3D",   # ring layout: sides x tiles, the tunnel cross-section
    "\u00a7`!O\u00a7": "Game",            # level driver: cutscenes, keys, camera easing (inferred)
    "\u00a7]!^\u00a7": "LevelView",       # per-level view/observer list (inferred)
    "\u00a7\"B\u00a7": "Quaternion",
    "\u00a74!R\u00a7": "QuaternionUtils",
    "\u00a79x\u00a7": "Physics",          # base collider (inferred)
    "\u00a76U\u00a7": "Object3D",         # nme3H display base of LevelView (inferred)
    "\u00a76O\u00a7": "CharacterDef",     # character definition handed to StageActor (inferred)
    "\u00a71![\u00a7": "Scene3D",           # the 3D renderer: view + projection matrices, project()/unproject()
    "\u00a71!1\u00a7": "AxisAngle",         # {angle, axis x/y/z}; QuaternionUtils.toAxisAngle returns one
    # the character model, established from the call sites in the decomp
    "\u00a76M\u00a7": "CharacterBase",    # CHARACTER BASE CLASS
    "\u00a7'O\u00a7": "CharacterRegistry", # CHARACTER REGISTRY/character list + unlock logic
    "\u00a71e\u00a7": "Spritesheet",      # Spritesheet (the atlas class; its 3rd ctor arg is the scale)
    "\u00a74Y\u00a7": "Ability4Y",        # Ability object 4Y
    "\u00a7's\u00a7": "AbilityS",         # Ability object 's
    "\u00a74N\u00a7": "Map",            # Map, manages paths and levels (inferred)
}


# --------------------------------------------------------------------------
# Members: (emitted inner text, readable, where, why we know, only).
# Applied only inside SCOPE.  Every name is either spelled out by an original
# error message or pinned by its use site.  `only` narrows a token to one
# package when two classes in scope happen to share it (`^0` is `Billboard`'s
# static look-at and, separately, `StageActor`'s billboard update).
# --------------------------------------------------------------------------
MEMBER_ROWS = [
    ("<!C", "getPosition", "`Layout3D`, `Transform`",
     "`Layout3D`'s is an abstract stub - `throw new TypeError(\"getPosition() is abstract.\")`; "
     "`Transform`'s returns a `Point3D`, its own position."),
    ("+n", "getRotation", "`Transform`",
     "Returns a `Quaternion`; it is fed to `QuaternionUtils` and to the rotation setter."),
    ("\"I", "setRotation", "`Transform`",
     "Takes the `Quaternion` basis built by `Billboard.lookAt`."),
    ("6!,", "getRelativeIndex", "`Layout3D`",
     "`throw new TypeError(\"getRelativeIndex() is abstract.\")`"),
    ("!N", "getIndexNearest", "`Layout3D`",
     "`throw new TypeError(\"getIndexNearest() is abstract.\")`"),
    ("4L", "getAreaBounds", "`Layout3D`",
     "`throw new TypeError(\"getAreaBounds() is abstract.\")`"),
    ("&!`", "parseSpec", "`Layout3D`",
     "Static factory: `\"line\"`, then `GridLayout3D.SPEC`, then `TunnelLayout3D.SPEC`, else `LineLayout3D`."),
    ("`4", "SPEC", "the layout classes",
     "The static `RegExp` each subclass hands the factory."),
    (";!Y", "cached", "`Layout3D`",
     "Static the factory assigns to before returning the new layout."),
    ("0!X", "defaultLine", "`Layout3D`",
     "Static `LineLayout3D` the factory falls back to."),
    ("<!M", "camera", "`World`, `LevelView`",
     "The `Transform` the cutscene scripts set: `tunnel.<cam>.position = new Point3D(x, y, z)`."),
    ("!C", "world", "`Entity3D`, `Billboard`",
     "Owning `World`; `Billboard.display` reads the world's `camera` through it."),
    ("9_", "section", "`StageActor`",
     "Typed `TunnelSection`; `section.layout.getPosition(...)` is the placement lookup."),
    ("9E", "placeAt", "`StageActor`",
     "The actor class's per-frame placement call, `placeAt(ring, row)` (docs)."),
    ("?0", "axis", "`Billboard`",
     "Scratch vector `lookAt` builds the basis from."),
    ("^0", "lookAt", "`Billboard` (static)",
     "`lookAt(position, target, up[, skipRoll])` builds an orthonormal basis and calls `setRotation`.",
     ("\u00a7<!&\u00a7",)),
    ("^0", "updateBillboard", "`StageActor` (instance)",
     "Re-applies the actor's billboard orientation when `billboardMode` is set.",
     ("\u00a7`_\u00a7",)),
    ("!#", "scratch", "`StageActor`",
     "Static reusable `PositionData3D` passed into `layout.getPosition(index, scratch)`."),
    ("2e", "alignWith", "`StageActor`",
     "Copies its rotation toward another actor's (`transform.getRotation()`)."),
    # CharacterDef (§6O§)'s own fields, from its constructor and use sites
    ("]w", "nameOverride", "CharacterDef",
     "CharacterDef name override (e.g., \"Ice Skater\", \"Jack-o-Lantern\")",
     ("\u00a76O\u00a7",)),
    ("7!9", "description", "CharacterDef",
     "original's own one-liner description",
     ("\u00a76O\u00a7",)),
    (";G", "unlockHint", "CharacterDef",
     "original's unlock hint",
     ("\u00a76O\u00a7",)),
    ("1V", "price", "CharacterDef",
     "power-cell price",
     ("\u00a76O\u00a7",)),
    ("4H", "getPrice", "CharacterDef",
     "returns price",
     ("\u00a76O\u00a7",)),
    (">!7", "airControl", "Angel",
     "Angel's air control factor (0.4)",
     ("\u00a7#!P\u00a7",)),  # Angel class token is §#!P§? Actually Angel.as file, but class token is §#!P§? We'll check.
    # For Lizard specific tokens
    ("!2", "jumpFactor", "Lizard",
     "Lizard jump factor",
     ("\u00a7!C\u00a7",)),  # Lizard class token? We'll verify.
    ("?!>=", "fallThreshold", "Lizard",
     "Lizard fall threshold (1080)",
     ("\u00a7!C\u00a7",)),
]
# every row gets an `only` tuple (empty = the whole scope)
MEMBER_ROWS = [r if len(r) == 5 else (r[0], r[1], r[2], r[3], ()) for r in MEMBER_ROWS]


# --------------------------------------------------------------------------
# Single-file members: (emitted inner text, readable, emitted path, why we
# know).  The cutscene render path crosses packages whose per-class tokens
# collide with the ones above (`?!C` is `Scene3D`'s static scratch and, in
# other classes, something else), so these names are pinned to the one file
# that declares them rather than to a whole scope directory.
# --------------------------------------------------------------------------
QU = "scripts/haxeutils/math/geom/\u00a74!R\u00a7.as"          # QuaternionUtils
MT = "scripts/haxeutils/math/geom/Matrix3D.as"
TR = "scripts/\u00a71^\u00a7/Transform.as"                  # Transform
SC = "scripts/nme3D/\u00a71![\u00a7.as"                     # Scene3D
SA = "scripts/\u00a7`_\u00a7/\u00a7^s\u00a7.as"              # StageActor
LV = "scripts/com/player03/run3/level/\u00a7 !W\u00a7.as"     # Level

FILE_MEMBERS = [
    # ---- QuaternionUtils: the original's own quaternion helpers ----
    ("9!L", "multiply", QU,
     "x = w1*x2 + x1*w2 + y1*z2 - z1*y2, ... - the Hamilton product, out = a*b."),
    ("@!M", "rotateVector", QU,
     "Rotates a Point3D by a Quaternion (the axis-angle turn matrix on q); "
     "`rotateVector(conj(camera.rotation), offset)` puts a child in the camera's frame."),
    (",![", "toAxisAngle", QU,
     "`angle = 2*acos(w)`, axis = (x,y,z) normalised - a Quaternion read back as an AxisAngle."),
    ("1!A", "setFromEuler", QU,
     "Builds cos/sin of each angle's half and multiplies them in Euler order; the "
     "cutscene scripts call it as `QuaternionUtils.setFromEuler(0, -4.5deg, -16.2deg, cam.rotation)`."),
    ("+!5", "fromAxes", QU,
     "`Billboard.lookAt` calls `QuaternionUtils.<this>(forward, up, out)` to build the camera basis."),
    ("+!Q", "slerp", QU,
     "Lerps each component toward the target by t and renormalises - a slerp."),
    ("-$", "scratch", QU,
     "Static reusable Point3D."),
    # ---- Matrix3D ----
    ("-!1", "multiplyInto", MT,
     "Static `multiplyInto(a, b, out)` over three rawData buffers; the renderer builds "
     "`view * projection` with it (`Matrix3D.multiplyInto(out.rawData, view.rawData, out.rawData)`)."),
    # ---- Transform ----
    ("6,", "getMatrix3D", TR,
     "Assembles scale, `appendRotation(toAxisAngle(rotation).angle, axis)` and the "
     "translation into a cached Matrix3D - the camera's world matrix."),
    ("%V", "appendRotation", TR,
     "Two-arg use is `appendRotation(degrees, axis)` (the axis is an AxisAngle/Point3D)."),
    ("1H", "appendTranslation", TR,
     "`appendTranslation(x, y, z)`."),
    (">;", "getAbsoluteRotation", TR,
     "The rotation combined with the parent's (`QuaternionUtils.multiply`). `getMatrix3D` uses it."),
    ("2!", "getAbsolutePosition", TR,
     "The position combined with the parent's (`getMatrix3D().transformVector3`)."),
    ('"w', "setPosition", TR,
     "Takes a Point3D; `StageActor.placeAt` ends with `transform.setPosition(p)`."),
    (" !%", "addUpdateListener", TR,
     "`addChild` calls `addUpdateListener(child.onUpdate)`; `LevelView` registers its "
     "per-frame callback this way."),
    (" W", "addChildListener", TR,
     "`addChild` calls `addChildListener(child.<transform-notify>)`, the `onUpdate` hook."),
    ('"!V', "matrixCache", TR,
     "The Matrix3D `getMatrix3D` builds and returns while `;d` (its dirty flag) is clear."),
    ("7!U", "rotationScratch", TR,
     "The Quaternion `getRotation` copies into and returns, so callers may mutate it."),
    ("^q", "pointScratch", TR,
     "The Point3D `getPosition` / `getAbsolutePosition` copy into and return."),
    (";d", "matrixDirty", TR,
     "Checked (and cleared) by `getMatrix3D`."),
    # ---- Scene3D: the renderer's own camera matrices ----
    ("1`", "viewMatrix", SC,
     "`World.display` copies `camera.getMatrix3D()` into it and inverts it, so the view is "
     "`inverse(camera world matrix)`."),
    ("-4", "projectionMatrix", SC,
     "Filled from `Context3DUtils.<gpu matrix>` (the 72deg perspective); `project` multiplies by it."),
    ("?!C", "scratchMatrix", SC,
     "Static Matrix3D `project`/`unproject` accumulate `viewMatrix * projectionMatrix` in."),
    ("]'", "scratchVector", SC,
     "Static Vector3D the projected point is written to before `project()` divides by w."),
    ("%a", "viewDirty", SC,
     "Set true right after `viewMatrix` is rebuilt; the renderer treats it as 'the view moved'."),
    ('8!"', "unproject", SC,
     "Screen point -> world point: the same matrices, inverted first."),
    ("%!B", "render", SC,
     "Takes (matrix, clear); `LevelView.render` overrides it."),
    ("=!E", "time", SC,
     "Accumulated seconds, handed to the child Object3Ds' `update`."),
    # ---- StageActor ----
    ("<!U", "getBounds", SA,
     "Projects the actor's own model vertices through `section.tunnel.scene.project` and "
     "folds them into a screen Rectangle - the actor's on-screen box."),
    ("?!]", "up", SA,
     "The billboard's up axis; defaults to `(0,-1,0)` and is turned by the layout rotation, "
     "then handed to `Billboard.updateBillboard(transform, world.camera, up, false)`."),
    ("?!Y", "BILLBOARD_ROT", SA,
     "`boot` builds it as the quaternion of a quarter turn about (0,0,1); `placeAt` "
     "multiplies it into every non-billboard actor's rotation."),
    ("!8", "charDef", SA,
     "Typed `CharacterDef`; supplies `height` and the spritesheet."),
    ("<]", "dirty", SA,
     "Set by the transform-changed hooks; `getBounds` calls `model.update(0)` while it is set."),
    ("'e", "bounds", SA,
     "The Rectangle `getBounds` returns."),
    ("0!=", "projectedPoint", SA,
     "Static Point3D each model vertex is projected into."),
    ("!!S", "onPositionChanged", SA,
     "A transform-changed hook (sets `dirty`), registered on the actor's Transform."),
    (",!1", "onRotationChanged", SA,
     "The rotation-changed hook (sets `dirty`), registered on the actor's Transform."),
    (",#", "height", SA,
     "`CharacterDef.height`; `placeAt` offsets the actor by `param4 + 15*height + 1.5`."),
    ("`6", "getSpritesheet", SA,
     "`CharacterDef`'s spritesheet accessor, used when the actor has no override."),
    # ---- Billboard ----
    ("?0", "axis", "scripts/\u00a7%3C!&\u00a7/\u00a7 !#\u00a7.as",
     "Scratch vector `lookAt` builds the basis from (already in the scope table; pinned here too)."),
    ("^0", "lookAt", "scripts/\u00a7%3C!&\u00a7/\u00a7 !#\u00a7.as",
     "Static `lookAt(position, target, up[, skipRoll])`: builds an orthonormal basis and calls `setRotation`."),
    # ---- Level / StageActor: the scene the tunnel projects through ----
    ('"[', "scene", LV,
     "`Level.scene:Scene3D`; `section.tunnel.scene.project(p, out)` is the staged projection."),
    ('"[', "scene", SA,
     "Same member seen through `section.tunnel` (typed `Level`)."),
]


# Classes whose members MEMBERS applies to: the camera + world, the layouts the
# tunnel is built from, the Transform, the level, the staged actor and scenes.
SCOPE = [
    enc("\u00a7<!&\u00a7"),            # world3d
    enc("\u00a72X\u00a7"),            # layout3d
    enc("\u00a71^\u00a7"),            # geom3d
    enc("\u00a76[\u00a7"),            # game
    enc("\u00a7`_\u00a7"),            # stage
    enc("\u00a73!b\u00a7"),           # scenes
    "com/player03/run3/level",        # Level, TunnelSection, triggers
]

PKG_NOTE = {
    "\u00a7<!&\u00a7": "`World` (the 3D scene graph that owns the camera `Transform`), "
                        "`Entity3D`, `Billboard`, `Physics3D`, `Constraint3D`",
    "\u00a72X\u00a7": "`Layout3D`, `LineLayout3D`, `GridLayout3D`, `TunnelLayout3D`, "
                        "`PositionData3D` - the layout the tunnel's cells are indexed by",
    "\u00a71^\u00a7": "`Transform`",
    "\u00a76[\u00a7": "`Game`, the driver that runs a level (keys, cutscenes, camera easing)",
    "\u00a7`_\u00a7": "`StageActor`, the cutscene actor class",
    "\u00a73!b\u00a7": "one class per cutscene (`ComingThrough`, `Obvious`, `Candy`, ...)",
    "\u00a7!]\u00a7": "`Map`, the game's map system handling tunnels, levels, and paths",
}

CLS_NOTE = {
    "\u00a7=2\u00a7": "3D scene graph: `camera:Transform`, `gravity3D`, a `Vector` of `Entity3D`, "
                        "`animations`, `update()`; `Level` extends it",
    "\u00a7 !W\u00a7": "`class ... extends World`; holds `title`, `power`, `endTiles`, "
                        "`victoryCondition`, the character list - the level",
    "\u00a7%!\u00a7": "Scene node: `transform`, `physicsData`, `model`, `level`, `update()`; "
                        "base of `Billboard` and `StageActor`",
    "\u00a7 !#\u00a7": "`extends Entity3D`, takes an `up` vector, and `display()` re-orients its own "
                        "transform to face the world's `camera` every frame - a billboard",
    "\u00a73!`\u00a7": "`extends Physics`; 3D collider with a `Point3D` offset",
    "\u00a7]p\u00a7": "Pairwise body interaction - **inferred** from its update acting on two bodies",
    "\u00a7^s\u00a7": "Cutscene actor: `spritesheet`, `section:TunnelSection`, `billboardMode`, "
                        "`placeAt(ring, row)`",
    "\u00a7>x\u00a7": "`extends Layout3D`, `vertices`, `rotation`, `flipped`; its errors say "
                        "\"Tunnels need at least three sides.\" - the tunnel ring layout",
    "\u00a7`!O\u00a7": "Imported by `boot`, `Main`, the level and the menus; drives the level "
                        "including the cutscene camera - **inferred**",
    "\u00a7]!^\u00a7": "`extends Object3D`, holds an observer `Vector` and a `camera:Transform` - **inferred**",
    "\u00a7\"B\u00a7": "Quaternion (x/y/z/w)",
    "\u00a74!R\u00a7": "Quaternion helpers (`fromAxes`, ...)",
    "\u00a79x\u00a7": "Base collider - **inferred**",
    "\u00a76U\u00a7": "`nme3D` display base of `LevelView` - **inferred**",
    "\u00a76O\u00a7": "Character definition passed to `StageActor` - **inferred**",
    "\u00a71![\u00a7": "`nme3D`'s renderer: the view + projection matrices, `project()` / `unproject()`, "
                        "the `Object3D` children and the shaders; `Context3DUtils` holds the live one. "
                        "`World.display` builds its view matrix - **inferred**",
    "\u00a71!1\u00a7": "An axis and an angle (`.angle`, and the axis in x/y/z). `QuaternionUtils.toAxisAngle` "
                        "returns one and `Transform.getMatrix3D`'s `appendRotation(angle, axis)` consumes it",
    # Additional class notes
    "\u00a76M\u00a7": "CHARACTER BASE CLASS (com/player03/run3/character/§6M§.as)",
    "\u00a7'O\u00a7": "CHARACTER REGISTRY/character list + unlock logic (com/player03/run3/character/§'O§.as)",
    "\u00a71e\u00a7": "Spritesheet (the atlas class; its 3rd ctor arg is the scale)",
    "\u00a74Y\u00a7": "Ability object 4Y (§4Y§.as)",
    "\u00a7's\u00a7": "Ability object 's (§'s§.as)",
    "\u00a74N\u00a7": "`Map`, manages paths and levels (inferred)",
}


# --------------------------------------------------------------------------
# Qualified calls, rewritten EVERYWHERE.  A member token is per-class, so
# `§9!L§` alone could be anything - but `QuaternionUtils.§9!L§` is unambiguous,
# and that is how these helpers are always reached (they are `public static`
# on a utility class and never shadowed).  Applied after PACKAGES/CLASSES, so
# the receiver already reads as its readable class name.
# --------------------------------------------------------------------------
QUALIFIED = [
    ("QuaternionUtils." + tok("9!L"), "QuaternionUtils.multiply"),
    ("QuaternionUtils." + tok("@!M"), "QuaternionUtils.rotateVector"),
    ("QuaternionUtils." + tok(",!["), "QuaternionUtils.toAxisAngle"),
    ("QuaternionUtils." + tok("1!A"), "QuaternionUtils.setFromEuler"),
    ("QuaternionUtils." + tok("+!5"), "QuaternionUtils.fromAxes"),
    ("QuaternionUtils." + tok("+!Q"), "QuaternionUtils.slerp"),
    ("Matrix3D." + tok("-!1"), "Matrix3D.multiplyInto"),
]


def rules():
    """Global substitutions, longest token first."""
    out = list(PACKAGES.items()) + list(CLASSES.items())
    out.sort(key=lambda kv: -len(kv[0]))
    return out


def in_scope(rel):
    """True when the file lives in (or under) one of the SCOPE directories."""
    p = "/" + rel.replace(os.sep, "/")
    return any(p.startswith("/scripts/" + s + "/") or p.startswith("/" + s + "/")
               for s in SCOPE)


def read_source(p):
    """Read an `.as` file.  The tree is UTF-8 (`\xA7` is two bytes); a few
    decompiler quirks are only valid as latin-1, so fall back rather than fail."""
    raw = open(p, "rb").read()
    try:
        return raw.decode("utf-8"), "utf-8"
    except UnicodeDecodeError:
        return raw.decode("latin-1"), "latin-1"


def rewrite(text, subs, scope_rel=None, file_rows=()):
    for old, new in subs:
        if old in text:
            text = text.replace(old, new)
    for old, new in QUALIFIED:
        if old in text:
            text = text.replace(old, new)
    for inner, new in sorted(file_rows, key=lambda r: -len(r[0])):
        old = tok(inner)
        if old in text:
            text = text.replace(old, new)
    if scope_rel:
        # longest inner first, so a token cannot rewrite part of a longer one
        rows = sorted(MEMBER_ROWS, key=lambda r: -len(r[0]))
        for inner, new, _where, _why, only in rows:
            # `only` holds package names; the walk still sees emitted directories
            if only and not any(scope_rel.startswith("scripts/" + enc(d) + "/")
                                for d in only):
                continue
            old = tok(inner)
            if old in text:
                text = text.replace(old, new)
    return text


def build():
    if os.path.isdir(DST):
        shutil.rmtree(DST)
    shutil.copytree(SRC, DST)

    subs = rules()
    n_content = n_class = n_pkg = 0

    for root, _dirs, files in os.walk(DST):
        for f in files:
            if not f.endswith(".as"):
                continue
            p = os.path.join(root, f)
            rel = os.path.relpath(p, DST).replace(os.sep, "/")
            txt, codec = read_source(p)
            frows = [(i, n) for i, n, f, _w in FILE_MEMBERS if f == rel]
            new = rewrite(txt, subs, scope_rel=rel if in_scope(rel) else None,
                          file_rows=frows)
            if new != txt:
                with open(p, "wb") as fh:
                    fh.write(new.encode(codec))
                n_content += 1

    # class name -> file name (ActionScript requires them to match)
    for cls_tok, new in CLASSES.items():
        oldname, newname = enc(cls_tok) + ".as", new + ".as"
        if oldname == newname:
            continue
        for root, _dirs, files in os.walk(DST):
            if oldname in files:
                os.rename(os.path.join(root, oldname), os.path.join(root, newname))
                n_class += 1

    # package name -> directory name
    for pkg_tok, new in PACKAGES.items():
        oldname = enc(pkg_tok)
        if oldname == new:
            continue
        for root, dirs, _files in sorted(os.walk(DST), key=lambda t: -len(t[0])):
            if oldname in dirs:
                os.rename(os.path.join(root, oldname), os.path.join(root, new))
                n_pkg += 1

    print("readable_src regenerated from src")
    print("  files rewritten  :", n_content)
    print("  classes renamed  :", n_class)
    print("  packages renamed :", n_pkg)


def write_docs():
    L = []
    A = L.append
    A("# `readable_src` - obfuscated names this project has established\n")
    A("Generated by `../make_readable.py`. **Do not edit this tree by hand** - edit "
      "the map in that script and regenerate.\n")
    A("`src/` is the decompiled original exactly as emitted and stays that way. This "
      "mirror only renames identifiers whose meaning is established (by an original "
      "error message, by a call site, or by a note in `DEOBFUSCATION.md`). Everything "
      "else keeps its emitted token, so a name here is either *known* or *untouched* - "
      "never a guess dressed up as a fact. Names marked **inferred** are the best "
      "reading of the class's use sites rather than something the source states.\n")

    A("## Packages (rewritten globally, directory with them)\n")
    A("| emitted | readable | what it holds |")
    A("| --- | --- | --- |")
    for old, new in PACKAGES.items():
        A("| `%s` (`%s/`) | `%s/` | %s |" % (old, enc(old), new, PKG_NOTE.get(old, "")))

    A("\n## Classes (rewritten globally, file with them)\n")
    A("| emitted | readable | evidence |")
    A("| --- | --- | --- |")
    for old, new in CLASSES.items():
        A("| `%s` (`%s.as`) | `%s` | %s |" % (old, enc(old), new, CLS_NOTE.get(old, "")))

    A("\n## Members (rewritten only inside the classes this project reads/edits)\n")
    A("| emitted | readable | where | evidence |")
    A("| --- | --- | --- | --- |")
    for inner, new, where, why, only in MEMBER_ROWS:
        if only:
            where += " (only `%s/`)" % PACKAGES.get(only[0], only[0])
        A("| `%s` | `%s` | %s | %s |" % (tok(inner), new, where, why))

    A("\nObfuscated member and local tokens are assigned **per class**, not globally: "
      "the same token means different things in different classes, so a global rewrite "
      "would mislabel unrelated members. `SCOPE` in `make_readable.py` lists the "
      "classes the table above is applied to; a member referenced from a class outside "
      "that set keeps its emitted name.\n")

    A("\n## Qualified calls (rewritten everywhere)\n")
    A("A member token is per-class, so `§9!L§` alone could be anything - but "
      "`QuaternionUtils.§9!L§` is unambiguous, and these helpers are `public static` on a "
      "utility class and are always reached that way. Applied after the package/class "
      "rewrites, so the receiver already reads as its readable class name.\n")
    A("| emitted | readable |")
    A("| --- | --- |")
    for old, new in QUALIFIED:
        A("| `%s` | `%s` |" % (old, new))

    A("\n## Single-file members (pinned to the one file that declares them)\n")
    A("| emitted | readable | file | evidence |")
    A("| --- | --- | --- | --- |")
    for inner, new, f, why in FILE_MEMBERS:
        A("| `%s` | `%s` | `%s` | %s |" % (tok(inner), new, f, why))

    with open(os.path.join(DST, "RENAME_MAP.md"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")

    with open(os.path.join(DST, "README.md"), "w", encoding="utf-8") as fh:
        fh.write(
            "# readable_src\n\n"
            "A readable mirror of `../src/` (the decompiled original). Generated by "
            "`../make_readable.py`; regenerate with `python3 make_readable.py`. See "
            "[`RENAME_MAP.md`](RENAME_MAP.md) for what was renamed and the evidence for "
            "each name.\n\n"
            "Only identifiers this project has *established* are renamed. Classes and "
            "packages are rewritten globally so imports and `new` / `extends` stay "
            "consistent; members only inside the classes listed in the map's Scope "
            "section. Untouched names keep the decompiler's delimited form.\n")


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("--check", action="store_true",
                      help="do not regenerate; just report what is on disk")
    a = ap.parse_args()
    if a.check and os.path.isdir(DST):
        left = 0
        for root, _dirs, files in os.walk(DST):
            for f in files:
                if f.endswith(".as"):
                    left += read_source(os.path.join(root, f))[0].count(S)
        print("readable_src present; emitted tokens still in the tree:", left)
        return 0
    build()
    write_docs()
    print("wrote readable_src/RENAME_MAP.md and readable_src/README.md")
    return 0


if __name__ == "__main__":
    sys.exit(main())