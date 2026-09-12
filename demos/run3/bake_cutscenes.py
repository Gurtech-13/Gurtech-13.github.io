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

# demo tunnel index -> original path (must match bake_levels.py TUN_PATH)
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
                    "x": m["x"], "y": m["y"]})
    return {"file": cands[0], "messages": out}


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
    for c in sorted(names):
        r = extract(z, c)
        if r is None:
            print("  MISSING as for %s" % c)
            cut[c] = []
        else:
            print("  %-22s %3d lines (%s)" % (c, len(r["messages"]), r["file"]))
            cut[c] = r["messages"]

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
        f.write("  global.STORY_CUT = CUT;\n")
        f.write("  global.STORY_PATH_CUT = PATH_CUT;\n")
        f.write("})(typeof window !== \"undefined\" ? window : globalThis);\n")
    total = sum(len(v) for v in cut.values())
    print("wrote %s (%d cutscenes, %d lines)" % (OUT, len(cut), total))


if __name__ == "__main__":
    main()
