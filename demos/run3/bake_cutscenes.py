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
PANEL_PROPS = {
    # Candy.as: a 25x25 "Candy.png" panel copied onto §52§ (ch1, the Child)
    # with translate(4,0,4), then translate(-3,-13,8) one frame later and
    # §9!?§() (dropped) at frame2.
    "Candy": {"kind": "candy", "ch": 1, "at": 0, "gone": 2,
              "dr": 0.8, "dz": 0.6, "size": 1.5, "inset": 0.15},
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
                "size": 2.4, "inset": 0.0}
    return {"kind": "map", "ring": round(base[0] + key[0], 2),
            "z": round(base[1] + key[1], 2), "size": 2.4, "inset": key[2]}


def build_timeline(cut, shots, z):
    """STORY_TIMELINE: per scene, dialogue segments with cam/actors/props.
    Segments = distinct dialogue frames, ascending. Actor table carries
    forward across frames (init = frame -1 base); only vars resolved to a
    character (constructors + OBF_CHAR) become actors. Rows map to stage
    depth z = 6 + (row - sceneMin) so every scene plays just ahead of the
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
                               "z": round(6.0 + (live[var][1] - minr), 2)})
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
                                  "size": 2.4})
            # cam run covering this dialogue frame
            cam = [0, 0]
            for r in shots.get(c, []):
                if r[0] <= sf:
                    cam = [r[1], r[2]]
                else:
                    break
            segs.append({"f": sf, "cam": cam, "actors": actors, "props": props})
        tl[c] = {"segs": segs}
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
    # stage cameras: tunnel-camera Point3D setups per frame function
    # (tunnel.<cam>.position = (x, y, z), original pixels, y+ = high).
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
        cams.setdefault(frame, {"x": got.get("x", 0.0), "y": got.get("y", 0.0)})
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
        # stage framing per scene: [[startFrame, side, lift], ...] runs.
        # side/lift are CONTINUOUS (-1..1) so the host can ease the staged
        # camera instead of snapping between buckets:
        #   side = authored pan (left -1 .. right +1, x scaled)
        #   lift = authored height (low -1 .. high +1, y scaled)
        # Consecutive frames that round to the same pair merge into one run.
        def frame_shot(cam):
            x, y = cam.get("x", 0.0), cam.get("y", 0.0)
            side = max(-1.0, min(1.0, x / 250.0))
            lift = max(-1.0, min(1.0, y / 150.0))
            return (round(side, 2), round(lift, 2))
        shots = {}
        for c, fc in cams.items():
            runs = []
            for fr in sorted(fc):
                b = frame_shot(fc[fr])
                if runs and runs[-1][1] == b[0] and runs[-1][2] == b[1]:
                    continue
                runs.append([fr, b[0], b[1]])
            if runs and not (len(runs) == 1 and runs[0][1] == 0 and runs[0][2] == 0):
                shots[c] = runs
        f.write("  /* stage camera runs per cutscene: [startFrame, side, lift],")
        f.write(" side/lift continuous -1..1 */\n")
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
