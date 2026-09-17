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


def extract(z, cname):
    cands = [n for n in z.namelist() if n.endswith("/" + cname + ".as")]
    if not cands:
        return None
    cands.sort(key=lambda x: (x.startswith("scripts"), len(x)))
    d = z.read(cands[0]).decode("utf-8", errors="replace")
    hits = []  # (pos, text, [x, y])
    for m in re.finditer(r'dialog\.[^\(]{1,12}\(\s*"((?:[^"\\]|\\.)*)"\s*,([^;]{0,120})', d):
        nums = re.findall(r"(?<![\w.])(-?\d+)(?![\w.])", m.group(2)[:60])
        hits.append((m.start(), unesc(m.group(1)), nums[:2]))
    for m in re.finditer(r'push\(dialog\)\s*;\s*(?:(?!push\(dialog\)).){0,600}?'
                          r'push\("((?:[^"\\]|\\.)*)"\)', d, re.DOTALL):
        fwd = d[m.end():m.end() + 400]
        nums = re.findall(r"push\(\s*(-?\d+)\s*\)", fwd[:200])
        hits.append((m.start(), unesc(m.group(1)), nums[:2]))
    hits.sort()
    ded = []
    for pos, txt, nums in hits:
        if ded and abs(pos - ded[-1][0]) < 50:
            continue
        ded.append((pos, txt, nums))
    headers = [(m.start(), int(m.group(1)))
               for m in re.finditer(r"function\s+frame(\d+)", d)]
    msgs = []
    for pos, txt, nums in ded:
        frame = 0
        fstart = 0
        for hpos, hnum in headers:
            if hpos <= pos:
                frame, fstart = hnum, hpos
            else:
                break
        back = d[fstart:pos]
        sc = None
        msc = list(re.finditer(r"scale\(\s*([0-9.]+)\s*\)", back[-500:]))
        if msc:
            try:
                sc = float(msc[-1].group(1))
            except ValueError:
                sc = None
        x = int(nums[0]) if len(nums) > 0 else None
        y = int(nums[1]) if len(nums) > 1 else None
        msgs.append({"frame": frame, "pos": pos,
                     "scale": sc, "text": " ".join(txt.split()),
                     "x": x, "y": y})
    msgs.sort(key=lambda m: (m["frame"], m["pos"]))
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
        out.append({"m": m["text"],
                    "small": bool(m["scale"] is not None and m["scale"] < 0.999),
                    "x": m["x"], "y": m["y"], "f": m["frame"]})
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
        f.write(" * x/y: original on-screen bubble position (dialog units, /2.5 = px\n")
        f.write(" * on the 800x600 stage, center origin). small: tiny overlay text.\n")
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
