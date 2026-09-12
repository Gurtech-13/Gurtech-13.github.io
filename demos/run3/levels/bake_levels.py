#!/usr/bin/env python3
"""Bake original Run 3 explore-mode levels into levels_baked.h.

Reads orig_levels.bin (decompiled SWF text), decodes the terrain-pos
bitmaps (see Oreoid3/Run3LevelViewer Run3_leveleditor.html for the format):
  - chars '0'..'o' = 6 bits each (charCode-48), '1' = solid tile
  - "<tiles><*s><count>" RLE: N stars after N tiles repeats those N tiles
    (countChar-48) times, e.g. "0*8" -> eight "0"s.
  - trailing zeros after the last '1' are padding and are stripped.

Solidity = OR of all terrain layers except battery items, WarningStripes
decorations and cutscene-only layers. Special tiles (crumbling, ice,
ramps, boxes, ...) all count as solid: most levels are allowed to be
mostly empty space, so hazards stay sparse exactly like the original.

Maps the 30 demo tunnels to original paths in file order (1 level per
checkpoint). wormholeSpace has no valid levels -> count 0 -> the engine
falls back to procedural generation for it.

Output: levels_baked.h (bit array LSB-first + level index + tunnel table).
"""
import os
import re
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "orig_levels.bin")
OUT = os.path.join(HERE, "levels_baked.h")

# demo tunnel id -> original path name
TUN_PATH = [
    "primary",      # 0
    "home0",        # 1
    "home1",        # 2
    "home2",        # 3
    "home3",        # 4
    "sidePathA",    # 5
    "sidePathB",    # 6
    "sidePathD",    # 7
    "sidePathG",    # 8
    "sidePathL",    # 9
    "sidePathM",    # 10
    "sidePathT",    # 11
    "winter",       # 12
    "dark",         # 13
    "boxes",        # 14
    "memory",       # 15
    "river",        # 16
    "wormholeC",    # 17
    "wormholeH",    # 18
    "wormholeI",    # 19
    "wormholeJ",    # 20
    "wormholeK",    # 21
    "wormholeN",    # 22
    "wormholeSpace",  # 23 (broken in the original -> procedural fallback)
    "newlyFormed",  # 24
    "runway0",      # 25
    "runway1",      # 26
    "coordination",  # 27
    "sidePathU",    # 28
    "sidePathW",    # 29
]


def expand(s):
    while not re.fullmatch(r"[0-o]*", s):
        m = re.search(r"[0-o]+([\*]+)[0-o]", s)
        if not m:
            break
        nstars = len(m.group(1))
        pat = re.compile(r"([0-o]{%d})[\*]+([0-o])" % nstars)
        m2 = pat.search(s)
        if not m2:
            raise ValueError("RLE mismatch in %r" % s[:80])
        rep, cnt = m2.group(1), ord(m2.group(2)) - 48
        s = s[: m2.start()] + rep * cnt + s[m2.end():]
        if len(s) > 300000:
            raise ValueError("RLE explosion")
    return s


def bits_of(pos):
    s = expand(pos)
    b = "".join(format(ord(ch) - 48, "06b") for ch in s)
    if "1" in b and re.fullmatch(r"[01]*1[0]*", b):
        b = re.match(r"^([01]*1)[0]*$", b).group(1)
    return b


def solid_layer(suffix):
    s = suffix.lower()
    if "battery" in s:
        return False
    if "warningstripes" in s:
        return False
    if "if-mode_cutscene" in s:
        return False
    return True


def main():
    data = open(SRC, "rb").read().decode("latin-1")
    lines = data.split("\r\n")

    levels = {}  # id -> dict
    groups = {}  # path -> [ids in file order]
    order = []
    cur = None
    for ln in lines:
        s = ln.strip()
        if s.startswith("[path="):
            m = re.match(r"\[path=([^\]]+)\]", s)
            cur = m.group(1)
            groups.setdefault(cur, [])
            order.append(cur)
        elif s.startswith("id-") and cur is not None:
            parts = s.split("|")
            lid = int(parts[0].replace("id-", ""))
            layout = ""
            spawn = 0
            terr = []
            for p in parts:
                if p.startswith("layout-"):
                    layout = p[7:]
                elif p.startswith("spawn-"):
                    m2 = re.match(r"spawn-(\d+)", p)
                    if m2:
                        spawn = int(m2.group(1))
                elif p.startswith("terrain-"):
                    m2 = re.search(r"pos-([0-o\*]+)", p)
                    if m2:
                        suf = p[p.index(m2.group(0)) + len("pos-" + m2.group(1)):]
                        terr.append((m2.group(1), suf))
            n, k = [int(x) for x in layout.replace("tunnel", "").split(",")]
            assert 1 <= n <= 32 and 1 <= k <= 8, (lid, n, k)
            levels[lid] = {"n": n, "k": k, "spawn": spawn, "terr": terr}
            groups[cur].append(lid)

    bitstream = []  # list of 0/1, 1 = solid
    baked = []  # (tun, lid, n, k, rows, spawn, bitoff)
    print("tunnel counts/layouts for levels.c sync:")
    for tun, pname in enumerate(TUN_PATH):
        ids = [i for i in groups.get(pname, []) if i in levels]
        if pname == "wormholeSpace":
            ids = []  # broken levels (id -346); procedural fallback
        start = len(baked)
        for lid in ids:
            L = levels[lid]
            n, k = L["n"], L["k"]
            chunk = n * k
            solids = []
            for pos, suf in L["terr"]:
                if not solid_layer(suf):
                    continue
                b = bits_of(pos)
                if len(b) > len(solids):
                    solids += [0] * (len(b) - len(solids))
                for i, ch in enumerate(b):
                    if ch == "1":
                        solids[i] = 1
            if 1 in solids:
                last = len(solids) - 1 - solids[::-1].index(1)
                solids = solids[: last + 1]
            else:
                solids = []
            while len(solids) % chunk:
                solids.append(0)
            rows = len(solids) // chunk
            assert rows <= 400, (tun, lid, rows)
            bitoff = len(bitstream)
            bitstream += solids
            baked.append((tun, lid, n, k, rows, L["spawn"] % chunk, bitoff))
        count = len(baked) - start
        lay = Counter(levels[i]["n"] * 100 + levels[i]["k"] for i in ids)
        if ids:
            (nk, _), = lay.most_common(1)
            print("  tun %2d %-12s count=%2d n=%d k=%d" % (tun, pname, count, nk // 100, nk % 100))
        else:
            print("  tun %2d %-12s count= 0 (procedural fallback)" % (tun, pname))

    nbytes = (len(bitstream) + 7) // 8
    packed = bytearray(nbytes)
    for i, v in enumerate(bitstream):
        if v:
            packed[i >> 3] |= 1 << (i & 7)

    with open(OUT, "w") as f:
        f.write("/* levels_baked.h - original Run 3 explore-mode level bitmaps.\n")
        f.write(" * Generated by bake_levels.py from orig_levels.bin. Do not edit.\n")
        f.write(" * 1 bit per tile (1 = solid), row-major, LSB-first.\n")
        f.write(" * bit = row*n*k + side*k + lane. Out-of-range rows read as solid.\n")
        f.write(" * %d levels, %d bits (%d bytes). */\n" % (len(baked), len(bitstream), nbytes))
        f.write("#ifndef LEVELS_BAKED_H\n#define LEVELS_BAKED_H\n\n")
        f.write("#include <stdint.h>\n\n")
        f.write("#define BAKED_TUNNELS %d\n" % len(TUN_PATH))
        f.write("#define BAKED_NLEVELS %d\n\n" % len(baked))
        f.write("typedef struct {\n")
        f.write("  uint8_t n, k;      /* cross-section for this level */\n")
        f.write("  uint16_t rows;     /* rows of baked tiles */\n")
        f.write("  uint16_t spawn;    /* start tile index (ring = spawn + 0.5) */\n")
        f.write("  uint32_t bit;      /* bit offset into BAKED_BITS */\n")
        f.write("} baked_level_t;\n\n")
        f.write("static const uint8_t BAKED_BITS[%d] = {\n" % nbytes)
        for i in range(0, nbytes, 16):
            f.write("  " + ", ".join("0x%02X" % b for b in packed[i:i + 16]) + ",\n")
        f.write("};\n\n")
        f.write("static const baked_level_t BAKED_LEVELS[BAKED_NLEVELS] = {\n")
        for (tun, lid, n, k, rows, spawn, bitoff) in baked:
            f.write("  { %2d, %d, %3d, %3d, 0x%X }, /* t%d id-%d */\n" % (n, k, rows, spawn, bitoff, tun, lid))
        f.write("};\n\n")
        # tunnel start/count table in demo tunnel order
        starts, counts = [], []
        idx = 0
        by_tun = {}
        for bi, (tun, lid, n, k, rows, spawn, bitoff) in enumerate(baked):
            by_tun.setdefault(tun, []).append(bi)
        for tun in range(len(TUN_PATH)):
            lst = by_tun.get(tun, [])
            starts.append(lst[0] if lst else 0)
            counts.append(len(lst))
        f.write("static const uint16_t BAKED_TUN_START[BAKED_TUNNELS] = {\n  " +
                ", ".join(str(s) for s in starts) + ",\n};\n")
        f.write("static const uint16_t BAKED_TUN_COUNT[BAKED_TUNNELS] = {\n  " +
                ", ".join(str(c) for c in counts) + ",\n};\n\n")
        f.write("#endif /* LEVELS_BAKED_H */\n")
    print("wrote %s (%d levels, %d bits)" % (OUT, len(baked), len(bitstream)))


if __name__ == "__main__":
    main()
