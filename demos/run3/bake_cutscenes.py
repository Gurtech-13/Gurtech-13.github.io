#!/usr/bin/env python3
"""Bake original Run 3 cutscene dialogue into cutscenes.js.

Reads the decompiled SWF (Run3.swf_Decompiler.com.zip in the repo root) and
extracts every dialog line from each story cutscene class. Two calling
conventions exist in the decompiled code:
  - dialog.METHOD("text", x, y, ...)         (direct calls)
  - push(dialog); push("text"); push(x); push(y)  (stack-machine style)
Lines are ordered by cutscene frame (frame0, frame1, ...) since the
decompiler emits frame methods out of order. Each line keeps its original
on-screen bubble position (x, y) — positions only, no speaker tracking.
scale(<1) marks the tiny overlay text (e.g. "Did you really just..." at
0.4x in ChangeTheSubject, the lost wooden spoon cutscene).

Output: cutscenes.js (window.STORY_CUT + window.STORY_PATH_CUT).
Re-run any time; output is committed so the game has no zip dependency.
"""
import json
import math
import math
import os
import re
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ZIP = os.path.normpath(os.path.join(HERE, "..", "..", "Run3.swf_Decompiler.com.zip"))
OUT = os.path.join(HERE, "cutscenes.js")

DATA = open(os.path.join(HERE, "levels", "orig_levels.bin"), "rb").read().decode("latin-1")

# Extra original cutscenes NOT referenced by any path's start/endCutscene but
# triggered mid-tunnel at level end (found via the scene's staged level +
# IF_FOLLOWING_LEVEL_REACHED in the decompiled source):
#   ComingThrough - staged on primary level 9, plays at end of Primary 10,
#   unlocks the Skater ("Choose your character!").
EXTRA_CUTSCENES = ["ComingThrough"]

# obfuscated actor vars -> character ids, resolved per scene from dialogue
# roles + staging behavior (readable vars resolve via their constructors).
# \u00a7 escapes keep this file plain ASCII.
# obfuscated actor vars -> character ids, resolved per scene from dialogue
# roles + staging behavior (readable vars resolve via their constructors).
# Keys built from chr(0xA7) so this file stays plain ASCII.
_obf = chr(0xA7)
OBF_CHAR = {
    ("AngelVsBunny", _obf + "#!P" + _obf): 3,
    ("AngelVsBunny", _obf + "7W" + _obf): 10,
    ("ComingThrough", _obf + "-P" + _obf): 0,
    ("BoatRide", _obf + "#!P" + _obf): 13,
    ("BoatRide", _obf + "7W" + _obf): 10,
    ("BoatRide", "!V" + _obf): 12,
    ("Sneaking", _obf + "#!P" + _obf): 3,
    ("Obvious", _obf + "#!P" + _obf): 7,
    ("MyTurn", _obf + "#!P" + _obf): 1,
    ("MyTurn", _obf + "-P" + _obf): 0,
    ("DontKnockIt", _obf + "#!P" + _obf): 0,
    ("Naming", _obf + "-P" + _obf): 0,
    ("Fame", _obf + "-P" + _obf): 7,
    ("WormholeInSight", _obf + "-P" + _obf): 0,
    ("SocraticMethod", _obf + "-P" + _obf): 0,
    ("NiceToMeetYou", _obf + "#!P" + _obf): 3,
    ("NiceToMeetYou", _obf + "-P" + _obf): 0,
    ("Orbits", _obf + "-P" + _obf): 0,
    ("Insanity", _obf + "-P" + _obf): 0,
    ("PlanetStolen", _obf + "-P" + _obf): 7,
    ("Candy", _obf + "52" + _obf): 1,
    ("Candy", _obf + "#!P" + _obf): 2,
    ("ABCD", _obf + "#!P" + _obf): 3,
    ("StopSolvingProblems", _obf + "#!P" + _obf): 3,
    ("Superpowers", _obf + "#!P" + _obf): 3,
}
# (OBF_SKIP retired: non-actor placement lookalikes are filtered by the
# resolved-vars rule in build_timeline; vehicle/prop kinds live there too.)

CHARIDS = {"runner": 0, "skater": 1, "child": 2, "angel": 3, "ghost": 4,
           "lizard": 5, "ninja": 6, "student": 7, "gentleman": 8,
           "pastafarian": 9, "bunny": 10, "climber": 11, "duplicator": 12,
           "pirate": 13, "skier": 14, "iceskater": 15, "jackolantern": 16}


def extract_staging(z, cname):
    """Per-frame actor placements {frame: {var: [ring, row]}} + var->char."""
    cands = [n for n in z.namelist() if n.endswith("/" + cname + ".as")]
    if not cands:
        return None
    cands.sort(key=lambda x: (x.startswith("scripts"), len(x)))
    d = z.read(cands[0]).decode("utf-8", errors="replace")
    var2char = {}
    for m in re.finditer(r"(?<![\w.])([A-Za-z_][A-Za-z0-9_]*|\S{1,12})\s*=\s*new\s+\S+?\(\s*\S+?\s*,\s*\S+?\.([A-Za-z]+)\s*,", d):
        var, ch = m.group(1), m.group(2)
        if ch in CHARIDS and var not in var2char:
            var2char[var] = CHARIDS[ch]
    for (sc, var), cid in OBF_CHAR.items():
        if sc == cname:
            var2char[var] = cid
    segs = []
    mi = re.search(r"function init\(\)", d)
    if mi:
        segs.append((-1, mi.start()))
    for m in re.finditer(r"function (frame\d+)", d):
        segs.append((int(m.group(1)[5:]), m.start()))
    segs.sort(key=lambda x: x[1])
    frames = {}
    unresolved = set()
    for si, (fnum, fstart) in enumerate(segs):
        fend = segs[si + 1][1] if si + 1 < len(segs) else len(d)
        seg = d[fstart:fend]
        for m in re.finditer(r"(\S+?)\.(\S+?)\(\s*(-?[\d.]+)\s*,\s*(-?[\d.]+)\s*(?:,\s*(?:null|true|false|-?[\d.]+)\s*(?:,\s*(?:null|true|false|-?[\d.]+)\s*)?)?\)", seg):
            var = m.group(1).split(";")[-1].split()[-1]
            if var in ("Math", "Number") or "." in var:
                continue
            if var not in var2char:
                unresolved.add(var)
                continue
            a, b = float(m.group(3)), float(m.group(4))
            frames.setdefault(fnum, {})[var] = [a, b]
    return {"vars": {v: var2char[v] for v in var2char}, "frames": frames,
            "unresolved": sorted(unresolved)}


# Textured panel props: the decompiled scenes build a small §8f§ quad and
# park it on a character.  Offsets are the scene's own translate() values,
# scaled to stage tiles like the map panel (see MAP_FALL below).
#
# `size` is a panel's WIDTH IN CHARACTER HEIGHTS, from its own pixel size in
# the original against the character sprite (~25px in the original's stage):
# the engine draws a cast member 24px tall at 360p at the staging depth and
# shrinks it with depth, so props measured the same way read against the cast
# exactly as they do in the original.  (Sizing them in tunnel tiles made every
# panel ~6 characters wide.)
PANEL_PROPS = {
    # Candy.as: a 25x25 "Candy.png" panel copied onto §52§ (ch1, the Child)
    # with translate(4,0,4), then translate(-3,-13,8) one frame later and
    # §9!?§() (dropped) at frame2.  25px panel / 25px character = 1.0.
    "Candy": {"kind": "candy", "ch": 1, "at": 0, "gone": 2,
              "dr": 0.8, "dz": 0.6, "size": 1.0, "inset": 0.15},
}
# ComingThrough.as frame1 builds the map beside the Skater — a flat 40x25
# panel (a 1x1 BitmapData of 0xBCAB7C through the colour shader §<!9§.§7!P§,
# never a texture read) — and tweens it: a 0.6s fling to (x-70, y-40,
# z+150), then steps of dy = -80/(1+k*0.25) with a lateral bounce of
# +/-(50-2k) every 0.6s until y passes the floor (-182; frame11 re-snaps it
# there and it rocks in place).  frame20 nudges it (+10,+15,-20) as it is
# handed back; frame21 sets visible=false.  The port keeps that shape: off
# the Skater, down through the tube's interior (inset) to the floor at the
# runner's wall (ring offset -> 0), parked, then hidden.
# (dialogue frame -> (ring offset, row offset, inset))
MAP_FALL = {
    0: None,
    1: (1.8, 2.0, 0.95),
    2: (2.2, 4.0, 0.85),
    3: (2.4, 6.5, 0.60),
    4: (2.2, 8.0, 0.30),
    6: (1.2, 9.0, 0.05),
    8: (0.0, 9.6, 0.0),
    20: (0.0, 9.0, 0.0),
    21: None,
    22: None,
}


def panel_prop(pp, sf, actors):
    """The scene's panel for dialogue frame sf: it rides its character, or
    reports kind "none" once the scene has dropped it.  A slot that always
    exists keeps the host's carry-forward from resurrecting a dropped prop."""
    if pp["at"] <= sf < pp["gone"]:
        for a in actors:
            if a["ch"] == pp["ch"]:
                return {"kind": pp["kind"],
                        "ring": round(a["ring"] + pp["dr"], 2),
                        "z": round(a["z"] + pp["dz"], 2),
                        "size": pp["size"], "inset": pp["inset"]}
    return {"kind": "none", "ring": 4.0, "z": 6.0,
            "size": pp["size"], "inset": 0.0}


# panel widths in character heights (see PANEL_PROPS): the map is a flat
# 40x25 original-stage panel, the TrainRide balloon 18.27 wide
MAP_SIZE = 40.0 / 25.0
BALLOON_SIZE = 18.27 / 25.0


def map_prop(sf, base):
    """The ComingThrough map at dialogue frame sf; the last keyframe holds,
    so it sits where it landed until it is handed back and hidden.  base is
    the spot it falls to — captured once, because the map is parked on the
    floor while the runner keeps moving and must not follow her."""
    key = None
    for f in sorted(MAP_FALL):
        if f <= sf:
            key = MAP_FALL[f]
    if key is None or base is None:
        return {"kind": "none", "ring": 4.0, "z": 6.0,
                "size": MAP_SIZE, "inset": 0.0}
    return {"kind": "map", "ring": round(base[0] + key[0], 2),
            "z": round(base[1] + key[1], 2), "size": MAP_SIZE, "inset": key[2]}


# How far ahead of the staged camera the cast is anchored, in rows. The
# original camera sits IN the scene (a free Point3D on the tunnel axis, level
# with the characters), so the cast must be just in front of it. A larger
# anchor drew the cast rows down the tube, where perspective shrank them to a
# fraction of the runner's sprite size — a camera that read as "too far".
STAGE_NEAR_ROWS = 1.0


def build_timeline(cut, shots, z):
    """STORY_TIMELINE: per scene, dialogue segments with cam/actors/props.
    Segments = distinct dialogue frames, ascending. Actor table carries
    forward across frames (init = frame -1 base); only vars resolved to a
    character (constructors + OBF_CHAR) become actors. Rows map to stage
    depth z = STAGE_NEAR_ROWS + (row - sceneMin) so every scene plays just
    ahead of the
    camera. Props: PANEL_PROPS panels ride their character and drop when
    the scene drops them (candy, Candy.as); the ComingThrough map runs its
    decoded fall (MAP_FALL); boat/hover ride under their party (cluster
    mean z)."""
    # Visible scene prop, keyed by scene.  The obfuscated transform the riders
    # are parented to (§7!!§, see `vehicles` note in DEOBFUSCATION.md) is NOT
    # a prop: it has no model in either scene, so it draws nothing.  The only
    # visible thing BoatRide builds is the TrainRide balloon panel
    # (`new §8f§("cutscene/TrainRide/Balloon.png", 18.27, 36.54, false)`);
    # StopSolvingProblems builds none at all.
    VEHICLE_PROP = {"BoatRide": "balloon"}
    ob = chr(0xA7)
    # placement-shaped non-actors to stay quiet about
    quiet = {"tunnel", "map", ob + "7!!" + ob, ob + "?I" + ob,
             ob + "4!R" + ob, ob + "<!T" + ob}
    tl = {}
    for c, lines in cut.items():
        if not lines:
            continue
        st = extract_staging(z, c)
        if st is None:
            continue
        for v in st["unresolved"]:
            if v in quiet or len(v) <= 1:
                continue
            if (c == "CantWait" and v == ob + "7W" + ob):
                continue
            print("  UNRESOLVED placement var %s in %s" % (ascii(v), c))
        segframes = sorted(set(L["f"] for L in lines if isinstance(L.get("f"), int)))
        if not segframes:
            continue
        # the scene's own panel prop (see PANEL_PROPS)
        pp = PANEL_PROPS.get(c)
        # row spread for depth mapping (resolved actors + candy). The 5th
        # percentile anchors the cluster so single far exits/entries
        # (which cull naturally off-camera) don't shove the scene away.
        allrows = []
        for fnum, per in st["frames"].items():
            for var, pos in per.items():
                if var in st["vars"]:
                    allrows.append(pos[1])
        allrows.sort()
        minr = allrows[max(0, int(len(allrows) * 0.05))] if allrows else 0.0
        live = {}
        mapbase = None
        segs = []
        for sf in segframes:
            for fnum in sorted(f for f in st["frames"] if f <= sf):
                for var, pos in st["frames"][fnum].items():
                    if var in st["vars"]:
                        live[var] = pos
            actors = []
            for var in sorted(live):
                cid = st["vars"].get(var)
                if cid is None:
                    continue
                actors.append({"ch": cid, "ring": live[var][0],
                               "z": round(STAGE_NEAR_ROWS + (live[var][1] - minr), 2)})
            props = []
            if pp is not None:
                props.append(panel_prop(pp, sf, actors))
            if c == "ComingThrough":
                if mapbase is None:
                    for a in actors:
                        if a["ch"] == 0:
                            mapbase = (a["ring"], a["z"])
                            break
                props.append(map_prop(sf, mapbase))
            for vc, kind in VEHICLE_PROP.items():
                if vc == c and actors:
                    near = [a["z"] for a in actors if 2.0 <= a["z"] <= 30.0] or \
                        [a["z"] for a in actors]
                    mz = sum(near) / len(near)
                    props.append({"kind": kind, "ring": 2.0, "z": round(mz, 2),
                                  "size": BALLOON_SIZE})
            # cam run covering this dialogue frame
            cam = [0, 0, 0, 0]
            for r in shots.get(c, []):
                if r[0] <= sf:
                    # authored scenes: raw px x/y/z plus the z's base; legacy
                    # (side/lift) scenes keep the zeros
                    cam = [r[1], r[2], r[3], r[5]]
                else:
                    break
            segs.append({"f": sf, "cam": cam, "actors": actors, "props": props})
        # The camera's authored z is an ABSOLUTE coordinate on the tunnel's own
        # section chain, while the cast rows are LEVEL-local — so the absolute
        # value cannot give the camera's distance to the cast (it lands anywhere
        # from -90 to +130 tunnel radii across the baked scenes). The camera's
        # MOTION between frames IS meaningful: within one scene the z is one
        # continuous coordinate, so each segment's cam z (below) is a real
        # dolly and z0 — the z at the scene's opening frame — is the base it
        # runs from. `ca` says whether z0 and the per-segment z are authored at
        # all; the engine converts z0 to its own units.
        z0 = 0.0
        for r in shots.get(c, []):
            if r[0] <= segframes[0]:
                z0 = r[3]
            else:
                break
        tl[c] = {"ca": c in shots, "z0": round(z0, 1), "fr": round(minr, 3),
                 "segs": segs}
    return tl
# ids 30+ are custom extended tunnels with hand-written dialogue in
# custom_cutscenes.js (NOT baked here — the zip has no .as for them).
TUN_PATH = [
    "primary", "home0", "home1", "home2", "home3", "sidePathA", "sidePathB",
    "sidePathD", "sidePathG", "sidePathL", "sidePathM", "sidePathT", "winter",
    "dark", "boxes", "memory", "river", "wormholeC", "wormholeH", "wormholeI",
    "wormholeJ", "wormholeK", "wormholeN", "wormholeSpace", "newlyFormed",
    "runway0", "runway1", "coordination", "sidePathU", "sidePathW",
]

def unesc(raw):
    return raw.replace("\\'", "'").replace('\\"', '"').replace("\\n", "\n")


def parse_z(expr):
    """A cutscene camera's authored z as (base, px).

    base 0 = a bare literal (the absolute coordinate the scene was authored
    in), 1 = `<section>.endZ` (+/- px), 2 = `<section>.startZ` (+/- px). The
    endZ form is the common one (`endZ - 800` = 800 px before the level's end,
    which is where a cutscene fires), and it is the form the port can resolve
    exactly against its own level. Returns (None, 0) for an expression we do
    not understand, so the caller can skip the frame rather than invent one.
    """
    e = expr.strip()
    if re.match(r"^-?[\d.]+$", e):
        return (0, float(e))
    for base, name in ((1, "endZ"), (2, "startZ")):
        m = re.match(r"^\S+\." + name + r"\s*(?:([-+])\s*([\d.]+))?$", e)
        if m:
            k = float(m.group(2) or 0.0)
            return (base, -k if m.group(1) == "-" else k)
    return (None, 0.0)


def euler_quat(x, y, z):
    """QuaternionUtils.setFromEuler(x, y, z) — the XYZ-order half-angle form
    the original's helper builds (`s1*c2*c3 + c1*s2*s3` etc.)."""
    c1, c2, c3 = math.cos(x / 2.0), math.cos(y / 2.0), math.cos(z / 2.0)
    s1, s2, s3 = math.sin(x / 2.0), math.sin(y / 2.0), math.sin(z / 2.0)
    return [round(s1 * c2 * c3 + c1 * s2 * s3, 5),
            round(c1 * s2 * c3 - s1 * c2 * s3, 5),
            round(c1 * c2 * s3 + s1 * s2 * c3, 5),
            round(c1 * c2 * c3 - s1 * s2 * s3, 5)]


# ---------------------------------------------------------------------------
# THE DIALOGUE ENGINE'S OWN ARGUMENTS
#
# The cutscene speech engine is one class (`Speech`), reachable from every
# scene as `dialog`, and it carries three kinds of element:
#
#   dialog.<bubble>(text, x, y, size, width, connection, tail, ...)
#   dialog.<label>(text, x, y, size, width, colour)
#
# and the decompiler writes the calls two ways: directly, and through the
# compiled push/pop stack machine (`push(dialog); push(text); ...;
# pop().<m>(pop(), ...)`).  Measured against the original's own build:
#
#   * x/y, width and the absolute size form are in the 2014 build's design
#     space (ScaledAssets built with 3000x2000, origin at the stage centre),
#     which is the space render.c lays out in. The v1.13 build halves that
#     space to 1200x800 and its bubble call sites carry the /2.5; its label
#     method divides internally instead, so a label's call site is already in
#     the 2014 space. See _CUT_DESIGN_RATIO.
#   * size is a MULTIPLIER of the engine's default when negative
#     (`scale(0.65)` in the SWC, `-0.65` here => 0.65 x the default) and an
#     absolute size when positive (the 2014 space again).  The 2014 build's
#     cutscene base sets the default to 100, its v1.13 counterpart to 40.
#   * width is the text field's wrap width in the same design units.
#   * connection is the index of ANOTHER bubble in the same frame to draw a
#     band to, counted from the end when negative (`-1` = the previous one).
#   * tail is a transform: the engine asks it for the speaker's projected
#     screen rectangle and draws a tapered tail from the bubble to it.
#
# So the bake keeps the arguments in the engine's own terms: `s` is the size
# as a fraction of the default, `w` the wrap width in design px, `c` the
# connection index, `t` the speaker's character id, `k` the element kind
# (1 bubble, 2 label).  x/y are passed through untouched.
_OB = chr(0xA7)
# The scene base class' dialog default. runIII's base (cutscene/§--_-__-__--§)
# sets `dialog.<field> = 100`; the v1.13 build's base (scenes/§+Z§) sets 40 =
# 100 / 2.5, so `s` (a fraction of the default) is the same number in both and
# render.c's CUT_DESIGN_SIZE is the 2014's 100. See _CUT_DESIGN_RATIO below.
_CUT_DEFAULT_SIZE = 40.0
# The v1.13 build expresses the whole UI in the 2014 build's design space
# divided by 2.5: ScaledAssets is built with (1200, 800) where runIII builds it
# with (3000, 2000), the cutscene base's default dialog size is 40 where
# runIII's is 100, and the speech band's constants are 60 / 4.8 / 0.435 where
# runIII's are 150 / 12 / 0.435. Bubble call sites carry that /2.5 as well, so
# the bake multiplies them back to the 2014's own numbers.
_CUT_DESIGN_RATIO = 2.5
_CUT_KIND_BUBBLE = 1
_CUT_KIND_LABEL = 2


def _balanced(d, start):
    """Index just past the ')' matching d[start] == '(' (string aware)."""
    i, depth, q = start + 1, 1, False
    while i < len(d) and depth:
        c = d[i]
        if q:
            if c == "\\":
                i += 2
                continue
            if c == '"':
                q = False
        else:
            if c == '"':
                q = True
            elif c == "(":
                depth += 1
            elif c == ")":
                depth -= 1
        i += 1
    return i - 1


def _split_args(s):
    """Top-level comma split, ignoring commas inside strings/brackets."""
    out, depth, cur, q = [], 0, "", False
    i = 0
    while i < len(s):
        ch = s[i]
        i += 1
        if q:
            cur += ch
            if ch == "\\" and i < len(s):
                cur += s[i]
                i += 1
                continue
            if ch == '"':
                q = False
            continue
        if ch == '"':
            q = True
            cur += ch
            continue
        if ch in "([":
            depth += 1
        elif ch in ")]":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur.strip())
            cur = ""
            continue
        cur += ch
    out.append(cur.strip())
    return out


def _num(e):
    """A numeric literal, or None."""
    e = e.strip()
    m = re.fullmatch(r"[-+]?\d+(?:\.\d+)?", e)
    if not m:
        return None
    v = float(e)
    return int(v) if v == int(v) else v


def cut_eval(e, loc, var2char):
    """Evaluate one speech-engine argument.

    Returns (kind, value, extra) where kind is "num", "ratio", "tail",
    "conn" or None.
    """
    e = (e or "").strip()
    if not e or e in ("null", "undefined"):
        return (None, None, None)
    if e in loc:
        return loc[e]
    m = _num(e)
    if m is not None:
        return ("num", m, None)
    # `<Speech>.scale(k)` -> k x the default
    m = re.fullmatch(r"\S+\.scale\(\s*([-\d.]+)\s*\)", e)
    if m:
        return ("ratio", -float(m.group(1)) if float(m.group(1)) < 0
                else float(m.group(1)), None)
    # `<Speech>.width(k)` -> the wrap width, design px
    m = re.fullmatch(r"\S+\.width\(\s*([-\d.]+)\s*\)", e)
    if m:
        return ("num", float(m.group(1)), None)
    # the label entry point's own dialog->px conversion, folded at the call:
    #   int(Math.round(<dialog units> / 2.5))
    m = re.fullmatch(r"int\(Math\.round\(\s*([-\d.]+)\s*/\s*2\.5\s*\)\)", e)
    if m:
        return ("num", float(m.group(1)) / 2.5, None)
    m = re.fullmatch(r"([-\d.]+)\s*/\s*2\.5", e)
    if m:
        return ("num", float(m.group(1)) / 2.5, None)
    # the tail: `new <Rect>(<actorVar>.<screenRect>())`
    m = re.fullmatch(r"new\s+[^\(]+\((\S+?)\.\S+\(\)\)", e)
    if m:
        v = m.group(1)
        cid = var2char.get(v)
        if cid is None:
            cid = CHARIDS.get(v.lower())
        return ("tail", v, cid)
    # a bare `actorVar.rect()` (the readable 2014-era direct call)
    m = re.fullmatch(r"(\S+?)\.\S+\(\)", e)
    if m and m.group(1) not in ("Math", "Number") and "(" not in m.group(1):
        v = m.group(1)
        cid = var2char.get(v)
        if cid is None:
            cid = CHARIDS.get(v.lower())
        if cid is not None:
            return ("tail", v, cid)
    # the 2014-era readable size form: `<field> * 0.65`
    m = re.fullmatch(r"\S+\s*\*\s*([\d.]+)", e)
    if m:
        return ("ratio", float(m.group(1)), None)
    return (None, None, None)


def _locals(seg, var2char):
    """Per-function `_locN_ = <expr>` table for the speech-engine arguments."""
    loc = {}
    for m in re.finditer(
            r"(?:var\s+)?(" + re.escape(_OB) + r"[^\s:;=]*|\w+)\s*(?::[^=;]*)?="
            r"\s*([^;\r\n]+);", seg):
        k, v, ex = cut_eval(m.group(2), loc, var2char)
        if k is not None:
            loc[m.group(1)] = (k, v, ex)
    return loc


def extract_dialogue(d, var2char):
    """Every dialogue call in the scene, per frame, in the engine's terms.

    Both decompiler forms are handled: the direct call, and the push/pop
    sequence the compiler emits for the same call (whose arguments may be
    literals, per-function locals, or values pushed onto the stack).
    """
    headers = [(m.start(), int(m.group(1)))
               for m in re.finditer(r"function\s+frame(\d+)", d)]
    regions = []
    # everything before the first frame function (the constructor, which is
    # where a scene with no named frame methods keeps them) belongs to frame 0
    regions.append((0, 0, headers[0][0] if headers else len(d)))
    for i, (hpos, hnum) in enumerate(headers):
        end = headers[i + 1][0] if i + 1 < len(headers) else len(d)
        regions.append((hnum, hpos, end))

    def region_of(pos):
        best = regions[0]
        for r in regions:
            if r[1] <= pos:
                best = r
            else:
                break
        return best

    # bubble / label method names, learned from the call sites themselves:
    # a call whose first argument is a string and which passes a colour as
    # its 6th argument is the label entry point.
    sites = []  # (pos, frame, text, out_args, method name); the text is
    # inline in the direct form and joined from the pushes before the call in
    # the push/pop form
    locs = {}
    for (fnum, fstart, fend) in regions:
        locs[fstart] = _locals(d[fstart:fend], var2char)
    for (fnum, fstart, fend) in regions:
        seg = d[fstart:fend]
        loc = locs[fstart]
        found = []
        # `dialog.<method>(...)`; the method name is obfuscated and may
        # contain spaces (`§ q§` is the label entry point)
        for m in re.finditer(r"dialog\.([^\(]{1,12})\(", seg):
            end = _balanced(seg, m.end() - 1)
            args = _split_args(seg[m.end():end])
            if not args or not args[0].startswith('"'):
                continue
            found.append((m.start(), m.end() - 1, args, None, False, m.group(1)))
        for m in re.finditer(re.escape(_OB) + _OB +
                             r"pop\(\)\.([^\(]{1,12})\(" + re.escape(_OB) + _OB +
                             r"pop\(\),\s*", seg):
            end = _balanced(seg, m.end() - 1)
            args = _split_args(seg[m.end():end])
            found.append((m.start(), m.end() - 1, args, m.start(), True, m.group(1)))
        found.sort()
        prev_end = 0
        for (pos, open_pos, args, push_at, is_push, name) in found:
            if is_push:
                # the pushed sequence starts at the last `push(dialog)`
                anchor = seg.rfind("push(dialog", prev_end, push_at)
                if anchor < 0:
                    anchor = prev_end
                seq = seg[anchor:pos]
                strings, values = [], []
                for pm in re.finditer(re.escape(_OB) + _OB + r"push\(([^;]*)\)\s*;", seq):
                    ex = pm.group(1).strip()
                    # `push(dialog)` names the receiver, it is not an argument
                    if ex == "dialog":
                        continue
                    if ex.startswith('"'):
                        strings.append(unesc(ex[1:-1]))
                        continue
                    # `push(pop())` re-pushes the head: not a value
                    if re.fullmatch(re.escape(_OB) + _OB + r"pop\(\)", ex):
                        continue
                    # `push(pop() + "...")`: another piece of the text
                    ms = re.match(r"^" + re.escape(_OB) + _OB +
                                  r"pop\(\)\s*\+\s*\"((?:[^\"\\]|\\.)*)\"$", ex)
                    if ms:
                        strings.append(unesc(ms.group(1)))
                        continue
                    for piece in re.findall(r'\"((?:[^\"\\]|\\.)*)\"', ex):
                        strings.append(unesc(piece))
                    values.append(cut_eval(ex, loc, var2char))
                # the call's own arguments: `pop()` slots take the pushed
                # values in order, the rest are literals/locals
                out_args = []
                vi = 0
                for a in args:
                    if re.fullmatch(re.escape(_OB) + _OB + r"pop\(\)", a.strip()):
                        out_args.append(values[vi] if vi < len(values)
                                        else (None, None, None))
                        vi += 1
                    else:
                        out_args.append(cut_eval(a, loc, var2char))
                text = "".join(strings)
            else:
                text = unesc(args[0][1:-1])
                out_args = [cut_eval(a, loc, var2char) for a in args[1:]]
            prev_end = open_pos
            sites.append((fstart + pos, fnum, text, out_args, name))
    # a call site is reported by whichever region it sits in (a constructor
    # holding a scene's frames keeps its own locals table)
    sites = [(pos, region_of(pos)[0], text, out_args, name)
             for (pos, fnum, text, out_args, name) in sites]
    sites.sort()

    # WHICH ENTRY POINT IS WHICH.  The two methods are obfuscated but stable
    # for the whole build, and they are told apart by their longest call: the
    # bubble takes the connection and the tail (7-8 arguments after the text)
    # and the label takes the colour instead (3-5).
    width = {}
    for (pos, fnum, text, out_args, name) in sites:
        width[name] = max(width.get(name, 0), len(out_args))
    kind_of = {n: (_CUT_KIND_BUBBLE if w >= 7 else _CUT_KIND_LABEL)
               for n, w in width.items()}

    msgs = []
    for (pos, fnum, text, args, name) in sites:
        if not text.strip():
            continue
        vals = list(args) + [(None, None, None)] * 7
        def take(i):
            return vals[i] if i < len(vals) else (None, None, None)
        x = take(0)[1]
        y = take(1)[1]
        sk, sv, _ = take(2)
        wk, wv, _ = take(3)
        # the 5th argument is the connection on a bubble and the text colour
        # on a label: reading the colour as a connection index is what put
        # `410`/`900` bands across the frame.
        kind = kind_of.get(name, _CUT_KIND_BUBBLE)
        ck, cv, _ = take(4) if kind == _CUT_KIND_BUBBLE else (None, None, None)
        tk, tv, tcid = take(5)
        m = {"frame": fnum, "pos": pos,
             "text": " ".join(text.split()),
             "x": x, "y": y, "kind": kind}
        def isnum(v):
            return isinstance(v, (int, float))
        ratio = 1.0
        if sk == "ratio" and isnum(sv) and sv > 0:
            ratio = sv
        elif sk == "num" and isnum(sv):
            # a negative literal at the size position is the engine's
            # "multiplier of the default" form (`-1` = the default,
            # `-0.65` = 65% of it); a positive one is an absolute pixel size.
            ratio = (-sv if sv < 0 else sv / _CUT_DEFAULT_SIZE)
        if abs(ratio - 1.0) > 0.001:
            m["s"] = round(ratio, 4)
        if wk == "num" and isnum(wv) and wv > 0:
            m["w"] = int(round(wv))
        if ck == "num" and isnum(cv):
            m["c"] = int(cv)
        if tk == "tail" and tcid is not None:
            m["t"] = int(tcid)
        # a real line always carries the place it is spoken from; anything
        # else is another method that happens to be called on `dialog`
        if (not isinstance(x, (int, float))) or (not isinstance(y, (int, float))):
            continue
        msgs.append(m)
    msgs.sort(key=lambda m: (m["frame"], m["pos"]))
    return msgs, headers


def extract(z, cname):
    cands = [n for n in z.namelist() if n.endswith("/" + cname + ".as")]
    if not cands:
        return None
    cands.sort(key=lambda x: (x.startswith("scripts"), len(x)))
    d = z.read(cands[0]).decode("utf-8", errors="replace")
    stage = extract_staging(z, cname) or {}
    var2char = dict(stage.get("vars") or {})
    # the readable 2014-era actors keep their own names (gentleman, child, ...)
    # and are what the tails are asked for, so seed them first
    for v, cid in CHARIDS.items():
        var2char.setdefault(v, cid)
    msgs0, headers = extract_dialogue(d, var2char)
    msgs = []
    for m in msgs0:
        # Bubbles and labels reach this decompiler at DIFFERENT scales, and the
        # difference is in the v1.13 build itself:
        #   label  the method divides its own arguments (`x / 2.5` in
        #          §'§.§ q§), so its call sites are still written in the 2014
        #          build's 3000x2000 design space — read them as they are.
        #   bubble the call sites carry the /2.5 themselves (runIII's Teapot
        #          says (-900,-900) where v1.13 says (-360,-360)), so they are
        #          in the 1200x800 space and have to be brought back up.
        # Every number this bake emits is therefore in the 2014 space, which is
        # the space render.c lays out in.
        x, y = m["x"], m["y"]
        w = m.get("w")
        if m["kind"] == _CUT_KIND_BUBBLE:
            if isinstance(x, (int, float)):
                x = x * _CUT_DESIGN_RATIO
            if isinstance(y, (int, float)):
                y = y * _CUT_DESIGN_RATIO
            if isinstance(w, (int, float)):
                w = w * _CUT_DESIGN_RATIO
        msgs.append({"text": m["text"], "x": x, "y": y,
                     "frame": m["frame"], "pos": m["pos"],
                     "kind": m["kind"],
                     "s": m.get("s", 1.0),
                     "w": w, "c": m.get("c"), "t": m.get("t")})
    # stage cameras: tunnel-camera Point3D setups per frame function.
    # Each frame sets BOTH the camera's position and its rotation:
    #   Point3D = tunnel.<cam>.<position>; _loc1_.x/.y/.z = <x>, <y>, <z>;
    #   var _loc2_ = tunnel.<cam>.<rotation>;   (a quaternion)
    #   var _loc3_ = Math.sin(A);
    #   _loc2_.x = a * _loc3_;  _loc2_.y = b * _loc3_;  _loc2_.z = c * _loc3_;
    #   _loc2_.w = Number(Math.cos(A));
    # so the rotation is the axis (a, b, c) [unit] with sin/cos of the SAME
    # authored angle A, i.e. the half-angle pair (axis*sin, cos) of a rotation
    # of 2A about that axis. x/y are the pan/height the port stages with; z is
    # the camera's position ALONG the tunnel (it dollies through a scene) and
    # the quaternion is its whole orientation — both of which the port used to
    # drop (it staged at a fixed distance with the held frame's own roll).
    cams = {}
    for m in re.finditer(r"Point3D\s*=\s*tunnel\.[^;]{0,60};", d):
        seg = d[m.start():m.start() + 2500]
        xyz = re.findall(r"\.([xyz])\s*=\s*(-?[\d.]+)", seg)
        got = {}
        for ax, v in xyz[:9]:
            if ax not in got:
                try:
                    got[ax] = float(v)
                except ValueError:
                    pass
        if "x" not in got:
            continue
        frame = 0
        for hpos, hnum in headers:
            if hpos <= m.start():
                frame = hnum
            else:
                break
        # rotation: the axis components are assigned through the decompiler's
        # push/pop form — `push(<c>); push(pop() * sin); pop().x = pop();` — so
        # each axis value is the last plain number pushed before its
        # `pop().<axis> = ` assignment (the position assignments above use the
        # direct `_locN_.x = <n>;` form and never match this).
        msin = re.search(r"Math\.sin\(\s*(-?[\d.]+)\s*\)", seg)
        mcos = re.search(r"Math\.cos\(\s*(-?[\d.]+)\s*\)", seg)
        axis = {}
        for am in re.finditer(r"§§pop\(\)\.([xyz])\s*=\s*§§pop\(\);", seg):
            before = seg[max(0, am.start() - 300):am.start()]
            nums = re.findall(r"§§push\(\s*(-?[\d.]+)\s*\)", before)
            if nums:
                axis.setdefault(am.group(1), float(nums[-1]))
        # …and some frames the decompiler leaves in the direct form instead
        for am in re.finditer(r"\.([xyz])\s*=\s*(-?[\d.]+)\s*\*\s*_loc\d+_", seg):
            axis.setdefault(am.group(1), float(am.group(2)))
        rot = None
        if msin and mcos and len(axis) == 3:
            s, c = math.sin(float(msin.group(1))), math.cos(float(mcos.group(1)))
            rot = [round(axis["x"] * s, 5), round(axis["y"] * s, 5),
                   round(axis["z"] * s, 5), round(c, 5)]
        # a frame that only moves the pan/height keeps the previous z/rotation
        # (the scenes set only what changes, exactly like the positions)
        prev = cams.get(max([f for f in cams if f < frame], default=None)) \
            if any(f < frame for f in cams) else None
        if prev is not None:
            if "z" not in got:
                got["z"] = prev["z"]
            if rot is None:
                rot = prev["rot"]
        cams.setdefault(frame, {"x": got.get("x", 0.0), "y": got.get("y", 0.0),
                                "z": got.get("z", 0.0), "zb": 0, "rot": rot})
    # ---- form B: the decompiler's push/pop form (Candy and friends) --------
    #
    #     §§push(tunnel.<cam>);
    #     §§push(<x>); §§push(<y>); §§push(<zexpr>);
    #     [§§push(§§pop() - <k>);]                    (zexpr - k)
    #     §§pop().<setPosition>(§§pop(),§§pop(),§§pop());
    #     QuaternionUtils.setFromEuler(<ex>, <ey>, <ez>, tunnel.<cam>.<rotation>);
    #
    # The pushes are the CALL ORDER (receiver first), so `<x>, <y>, <zexpr>`
    # is `setPosition(x, y, zexpr)`. Candy is the canonical case:
    #     setPosition(0, 150, endZ - 800);
    #     QuaternionUtils.setFromEuler(0, -0.0785, -0.2827, camera.rotation);
    # i.e. the camera sits 800 px BEFORE the level's end — where the cutscene
    # fires — and looks with a small pitch/roll, no level roll at all. The
    # bake missed this form entirely, which left Candy (and Conspiracy) on the
    # fallback path, where the port rolls the whole LEVEL by the held frame's
    # facet and comes out with the wrong angle.
    ob = chr(0xA7)
    pushv = re.compile(ob + ob + r"push\(([^;]{1,140})\);", re.S)
    call3 = re.compile(ob + ob + r"pop\(\)\.\S+?\(\s*" + ob + ob + r"pop\(\)\s*,\s*"
                       + ob + ob + r"pop\(\)\s*,\s*" + ob + ob + r"pop\(\)\s*\)\s*;", re.S)
    # the call's three arguments are a `pop() - <k>` adjustment (optional,
    # applied to the value pushed before it) then the z expression
    def num(e):
        try:
            return float(e.strip())
        except ValueError:
            return None
    for anchor in re.finditer(ob + ob + r"push\(tunnel\.[^;]{1,60}\);", d):
        mc = call3.search(d, anchor.end(), anchor.end() + 1600)
        if not mc:
            continue
        vals = [v.strip() for v in pushv.findall(d, anchor.end(), mc.start())]
        if len(vals) < 3:
            continue
        x, y = num(vals[0]), num(vals[1])
        if x is None or y is None:
            continue
        zexpr, adj = vals[2], 0.0
        # `push(pop() - 800);` re-pushes the previous value minus a constant
        for j in (3, 4):
            if j < len(vals):
                mb = re.match(r"^" + ob + ob + r"pop\(\)\s*([-+])\s*([\d.]+)$", vals[j])
                if mb:
                    adj = float(mb.group(2)) * (-1.0 if mb.group(1) == "-" else 1.0)
        zb, zv = parse_z(zexpr)
        if zb is None:
            continue
        zv += adj
        frame = 0
        for hpos, hnum in headers:
            if hpos <= anchor.start():
                frame = hnum
            else:
                break
        rot = None
        me = re.search(ob + r"4!R" + ob + r"\.\S+?\(\s*(-?[\d.]+)\s*,\s*"
                       r"(-?[\d.]+)\s*,\s*(-?[\d.]+)\s*,",
                       d[mc.end():mc.end() + 600])
        if me:
            rot = euler_quat(float(me.group(1)), float(me.group(2)), float(me.group(3)))
        if rot is None:
            prev = cams.get(max([f for f in cams if f < frame], default=None)) \
                if any(f < frame for f in cams) else None
            if prev is not None:
                rot = prev.get("rot")
        cams[frame] = {"x": x, "y": y, "z": zv, "zb": zb, "rot": rot}
    # missing positions continue at the previous bubble's spot
    lx, ly = None, None
    out = []
    for m in msgs:
        if m["x"] is None:
            m["x"] = lx
        else:
            lx = m["x"]
        if m["y"] is None:
            m["y"] = ly
        else:
            ly = m["y"]
        line = {"m": m["text"], "x": m["x"], "y": m["y"], "f": m["frame"]}
        if m.get("kind") == _CUT_KIND_LABEL:
            line["k"] = _CUT_KIND_LABEL
        if abs(m.get("s", 1.0) - 1.0) > 0.001:
            line["s"] = m["s"]
            # kept for older readers: this line is drawn smaller than the rest
            line["small"] = m["s"] < 0.999
        if m.get("w") is not None:
            line["w"] = m["w"]
        if m.get("c") is not None:
            line["c"] = m["c"]
        if m.get("t") is not None:
            line["t"] = m["t"]
        out.append(line)
    return {"file": cands[0], "messages": out, "cams": cams}


def main():
    names = set()
    path_cut = {}
    for ln in DATA.split("\r\n"):
        s = ln.strip()
        if not s.startswith("[path="):
            continue
        m = re.match(r"\[path=([^\]]+)\](.*)", s)
        p, j = m.group(1), m.group(2)
        sc = re.findall(r'"startCutscene":"([A-Za-z0-9_]+)"', j)
        ec = re.findall(r'"endCutscene":"([A-Za-z0-9_]+)"', j)
        names.update(sc)
        names.update(ec)
        path_cut[p] = {"start": sc[0] if sc else None,
                       "end": ec[0] if ec else None}

    z = zipfile.ZipFile(ZIP)
    cut = {}
    cams = {}
    for c in sorted(names.union(EXTRA_CUTSCENES)):
        r = extract(z, c)
        if r is None:
            print("  MISSING as for %s" % c)
            cut[c] = []
        else:
            print("  %-22s %3d lines (%s)" % (c, len(r["messages"]), r["file"]))
            cut[c] = r["messages"]
            cams[c] = r["cams"]

    with open(OUT, "w", encoding="utf-8") as f:
        f.write("/* cutscenes.js - original Run 3 cutscene dialogue.\n")
        f.write(" * Generated by bake_cutscenes.py from the decompiled SWF. Do not edit.\n")
        f.write(" * x/y: original on-screen bubble position, in the 2014 build's\n")
        f.write(" * 3000x2000 design space, origin at the stage centre.\n")
        f.write(" * small: tiny overlay text.\n")
        f.write(" */\n\"use strict\";\n(function (global) {\n")
        f.write("  var CUT = %s;\n\n" % json.dumps(cut, ensure_ascii=False))
        tun_cut = [path_cut.get(p, {"start": None, "end": None}) for p in TUN_PATH]
        f.write("  /* start/end cutscene per demo tunnel (index 0-29) */\n")
        f.write("  var PATH_CUT = %s;\n\n" % json.dumps(tun_cut))
        # stage framing per scene: [[startFrame, x, y, z, rot], ...] runs in
        # ORIGINAL PIXELS (the authored camera position as the scene set it —
        # no normalisation: clamping x/250, y/150 to +-1 loses e.g. Obvious's
        # y=200). rot is the authored quaternion or null. Consecutive frames
        # that round to the same camera state merge into one run.
        def frame_shot(cam):
            x, y = cam.get("x", 0.0), cam.get("y", 0.0)
            return (round(x, 1), round(y, 1), round(cam.get("z", 0.0), 1),
                    cam.get("rot"), int(cam.get("zb", 0)))
        shots = {}
        for c, fc in cams.items():
            runs = []
            for fr in sorted(fc):
                b = frame_shot(fc[fr])
                if runs and runs[-1][1:] == list(b):
                    continue
                runs.append([fr] + list(b))
            if runs and not (len(runs) == 1 and runs[0][1] == 0 and runs[0][2] == 0):
                shots[c] = runs
        f.write("  /* stage camera runs per cutscene, exactly as the scene sets")
        f.write(" the camera each frame: [startFrame, x, y, z, rot, zb] in")
        f.write(" ORIGINAL PIXELS. x/y is the authored pan/height about the rest")
        f.write(" pose (2, 0); z is the camera's place along the bore, whose base")
        f.write(" zb says what it is measured from — 0 a bare literal (the")
        f.write(" absolute coordinate the scene was authored in), 1 the level's")
        f.write(" own endZ (`endZ - 800` = 800 px before the end, where a")
        f.write(" cutscene fires), 2 its startZ. rot is the authored rotation")
        f.write(" quaternion [x, y, z, w] (axis*sin(A), cos(A) about the unit")
        f.write(" axis, a turn of 2A), or null when the frame sets none. */\n")
        f.write("  var CAMSHOT = %s;\n\n" % json.dumps(shots))
        tl = build_timeline(cut, shots, z)
        f.write("  /* staged timeline per cutscene: dialogue segments with camera,\n")
        f.write("   * actors [{ch, ring, z}] and props [{kind, ring, z, size}].\n")
        f.write("   * z = rows ahead of the staging camera. */\n")
        f.write("  var TIMELINE = %s;\n\n" % json.dumps(tl, ensure_ascii=False))
        f.write("  global.STORY_CUT = CUT;\n")
        f.write("  global.STORY_PATH_CUT = PATH_CUT;\n")
        f.write("  global.STORY_CAMSHOT = CAMSHOT;\n")
        f.write("  global.STORY_TIMELINE = TIMELINE;\n")
        f.write("})(typeof window !== \"undefined\" ? window : globalThis);\n")
    total = sum(len(v) for v in cut.values())
    print("wrote %s (%d cutscenes, %d lines)" % (OUT, len(cut), total))


if __name__ == "__main__":
    main()
