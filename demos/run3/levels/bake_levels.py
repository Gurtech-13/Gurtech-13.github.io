#!/usr/bin/env python3
"""Bake Run 3 level bitmaps into levels_baked.h.

Two sources, one flat table:
  * orig_levels.bin  - the decompiled original game's explore-mode levels
    (see the format note below).
  * ext_levels.txt   - the authored flat bitmaps for the extended tunnels
    (Wormhole X and beyond) and the infinite-mode segments. That file is the
    hand-editable source: nothing here generates level geometry, it only
    packs the bitmaps.

orig_levels.bin format:
  - chars '0'..'o' = 6 bits each (charCode-48), '1' = solid tile
  - "<tiles><*s><count>" RLE: N stars after N tiles repeats those N tiles
    (countChar-48) times, e.g. "0*8" -> eight "0"s.
  - trailing zeros after the last '1' are padding and are stripped.

Solidity = OR of all terrain layers except battery items, WarningStripes
decorations and cutscene-only layers. Special tiles (crumbling, ice, ramps,
boxes, ...) all count as solid.

Output: levels_baked.h - bit array LSB-first + level index + tunnel table,
plus the infinite-mode segment table.
"""
import os
import re
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "orig_levels.bin")
EXT = os.path.join(HERE, "ext_levels.txt")
OUT = os.path.join(HERE, "levels_baked.h")

# Tunnel id -> (source, key). 'orig' keys index orig_levels.bin paths,
# 'ext' keys index ext_levels.txt paths. A key may be a TUPLE of paths, which
# are concatenated in that order (the SWF splits a run across two paths,
# e.g. homePlanA + homePlanAPart2 - same tunnel, continued). Order is tunnel
# id order, so the baked tables line up with TUNNELS[] in levels.c.
TUNNELS = [
    (0, "orig", "primary"), (1, "orig", "home0"), (2, "orig", "home1"),
    (3, "orig", "home2"), (4, "orig", "home3"), (5, "orig", "sidePathA"),
    (6, "orig", "sidePathB"), (7, "orig", "sidePathD"), (8, "orig", "sidePathG"),
    (9, "orig", "sidePathL"), (10, "orig", "sidePathM"), (11, "orig", "sidePathT"),
    (12, "orig", "winter"), (13, "orig", "dark"), (14, "orig", "boxes"),
    (15, "orig", "memory"), (16, "orig", "river"), (17, "orig", "wormholeC"),
    (18, "orig", "wormholeH"), (19, "orig", "wormholeI"), (20, "orig", "wormholeJ"),
    (21, "orig", "wormholeK"), (22, "orig", "wormholeN"),
    (23, "ext", "wormholeSpace"),  # no valid data in the original
    (24, "orig", "newlyFormed"), (25, "orig", "runway0"), (26, "orig", "runway1"),
    (27, "orig", "coordination"), (28, "orig", "sidePathU"), (29, "orig", "sidePathW"),
    # custom extended tunnels (authored flat bitmaps)
    (30, "ext", "sidePathF"), (31, "ext", "sidePathS"), (32, "ext", "sidePathV"),
    # Wormhole X: 200 levels split across a main run and two sub-branches
    (33, "ext", "whx"), (36, "ext", "xrift"), (37, "ext", "xecho"),
    # Far Shore
    (34, "ext", "shore"), (38, "ext", "shoal"), (39, "ext", "reef"),
    # Far Drift
    (35, "ext", "drift"), (40, "ext", "wake"), (41, "ext", "ember"),
    # Recovered original paths that are not on the explore map: the home
    # planet's two plan tunnels (each split across a "Part2" path in the SWF,
    # which is the same tunnel continued) and the P wormhole with its
    # crossing. All four are real, full-content levels (60-95% void, varied
    # cross-sections, per-level tileWidths), just never reachable from the
    # decompiled map data.
    (42, "orig", ("homePlanA", "homePlanAPart2")),
    (43, "orig", ("homePlanC", "homePlanCPart2")),
    (44, "orig", "wormholeP"),
    (45, "orig", "wormholeCrossing"),
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


def crumble_layer(suffix):
    """Tiles that shake and fall after the runner steps on them."""
    return "~crumbling" in suffix.lower()


def glow_layer(suffix):
    """Tiles that GLOW. They are ordinary solid tiles you run on, but they are
    the light source: the Low-Power Tunnel finishes on a strip of them, and they
    must stay lit when the tunnel's power is out."""
    return "~glow" in suffix.lower()


def pad_to(lst, n):
    if len(lst) < n:
        lst += [0] * (n - len(lst))


# levelData music -> small enum (0 = tunnel default). The host maps these to
# asset files (app.js LEVEL_TRACKS); MapOfTheStars.mp3 is in assets/music.
MUSIC_IDS = {
    "LeaveTheSolarSystem": 1, "TheVoid": 2, "WormholeToSomewhere": 3,
    "CrumblingWalls": 4, "TravelTheGalaxy": 5, "UnsafeSpeeds": 6,
    "MapOfTheStars": 7, "none": 8,
}

# power-trigger fade modes -> enum (glimpse = brief flash, see engine)
TRIG_MODES = {"instant": 0, "smooth": 1, "fast": 2, "slow": 3,
              "slowSmooth": 4, "glimpse": 5}

BASE_EX = {"color0": 0, "color1": 0, "tilew": 0, "music": 0,
           "pbase": 255, "rot": 0, "win": 0, "trigs": []}


def parse_level_extra(parts):
    """color/music/power/rotation/tileWidth/triggers/winRow per level."""
    ex = dict(BASE_EX)
    ex["trigs"] = []
    for p in parts:
        if p.startswith("color0-0x") or p.startswith("color-0x"):
            try:
                ex["color0"] = int(p.split("-", 1)[1], 16) & 0xFFFFFF
            except ValueError:
                pass
        elif p.startswith("color1-0x"):
            try:
                ex["color1"] = int(p.split("-", 1)[1], 16) & 0xFFFFFF
            except ValueError:
                pass
        elif p.startswith("tileWidth-"):
            try:
                ex["tilew"] = max(0, min(600, int(float(p[10:]))))
            except ValueError:
                pass
        elif p.startswith("music-"):
            ex["music"] = MUSIC_IDS.get(p[6:], 0)
        elif p.startswith("power-"):
            try:
                ex["pbase"] = max(0, min(254, int(round(float(p[6:]) * 254))))
            except ValueError:
                pass
        elif p.startswith("rotation-"):
            try:
                ex["rot"] = max(-3600, min(3600, int(round(float(p[9:]) * 10))))
            except ValueError:
                pass
        elif p.startswith("trigger-"):
            # trigger-condition-z,Z,>~result-power-P[,MODE]  (skip ~if-... ones)
            # trigger-condition-z,Z,>~result-win
            if "~if-" in p:
                continue
            m = re.match(r"trigger-condition-z,(\d+),>~result-power-([0-9.]+)(?:,([A-Za-z]+))?", p)
            if m:
                z = min(65535, int(m.group(1)))
                try:
                    pv = max(0, min(254, int(round(float(m.group(2)) * 254))))
                except ValueError:
                    continue
                mode = TRIG_MODES.get(m.group(3) or "smooth", 1)
                ex["trigs"].append((z, pv, mode))
                continue
            m = re.match(r"trigger-condition-z,(\d+),>~result-win$", p)
            if m:
                ex["win"] = min(65535, int(m.group(1)))
    ex["trigs"].sort()
    return ex


def parse_orig():
    """orig_levels.bin -> {path: [level entry, ...]} in file order."""
    data = open(SRC, "rb").read().decode("latin-1")
    lines = data.split("\r\n")

    levels = {}   # id -> dict
    groups = {}   # path -> [ids in file order]
    cur = None
    for ln in lines:
        s = ln.strip()
        if s.startswith("[path="):
            cur = re.match(r"\[path=([^\]]+)\]", s).group(1)
            groups.setdefault(cur, [])
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
            levels[lid] = {"n": n, "k": k, "spawn": spawn, "terr": terr,
                           "ex": parse_level_extra(parts)}
            groups[cur].append(lid)

    out = {}
    for pname, ids in groups.items():
        entries = []
        for lid in ids:
            if lid not in levels:
                continue
            L = levels[lid]
            n, k = L["n"], L["k"]
            chunk = n * k
            solids, crumbs, glows = [], [], []
            for pos, suf in L["terr"]:
                if not solid_layer(suf):
                    continue
                b = bits_of(pos)
                if len(b) > len(solids):
                    solids += [0] * (len(b) - len(solids))
                for i, ch in enumerate(b):
                    if ch == "1":
                        solids[i] = 1
                if crumble_layer(suf):
                    if len(b) > len(crumbs):
                        crumbs += [0] * (len(b) - len(crumbs))
                    for i, ch in enumerate(b):
                        if ch == "1":
                            crumbs[i] = 1
                if glow_layer(suf):
                    pad_to(glows, len(b))
                    for i, ch in enumerate(b):
                        if ch == "1":
                            glows[i] = 1
            if 1 in solids:
                last = len(solids) - 1 - solids[::-1].index(1)
                solids = solids[: last + 1]
            else:
                solids = []
            while len(solids) % chunk:
                solids.append(0)
            rows = len(solids) // chunk
            assert rows <= 400, (pname, lid, rows)
            while len(crumbs) < len(solids):
                crumbs.append(0)
            crumbs = crumbs[: len(solids)]
            pad_to(glows, len(solids))
            glows = [1 if glows[i] and solids[i] else 0 for i in range(len(solids))]
            entries.append((n, k, rows, L["spawn"] % chunk, solids, crumbs,
                            glows, L["ex"]))
        out[pname] = entries
    return out


def parse_ext():
    """ext_levels.txt -> {path: [level entry, ...]}, plus the infinite segs.

    Level entry = (n, k, rows, spawn, solids, crumbs, ex) with solids/crumbs
    flat row-major bit lists, exactly like the orig path decodes."""
    paths = {}
    inf = []
    cur = None
    cur_name = None
    cur_rows = []
    cur_spawn = 0
    cur_nk = None

    def flush():
        if cur_name is None or not cur_rows:
            return
        n, k = cur_nk
        solids, crumbs = [], []
        for line in cur_rows:
            assert len(line) == n * k, (cur_name, len(line), n * k)
            for ch in line:
                if ch == "#":
                    solids.append(0)
                    crumbs.append(0)
                elif ch == "c":
                    solids.append(1)
                    crumbs.append(1)
                elif ch == ".":
                    solids.append(1)
                    crumbs.append(0)
                else:
                    raise ValueError("bad tile char %r in %s" % (ch, cur_name))
        entry = (n, k, len(cur_rows), cur_spawn % (n * k), solids, crumbs, [],
                 dict(BASE_EX))
        if cur_name == "infinite":
            inf.append(entry)
        else:
            paths.setdefault(cur_name, []).append(entry)

    for raw in open(EXT, "r", encoding="utf-8"):
        s = raw.strip()
        if not s:
            continue
        # a bitmap row is made only of tile chars - test that before the
        # comment marker, since a void-only row legitimately starts with '#'
        if set(s) <= set(".#c"):
            cur_rows.append(s)
            continue
        if s.startswith("#"):
            continue
        if s.startswith("[path="):
            flush()
            m = re.match(r"\[path=([A-Za-z0-9_]+) n=(\d+) k=(\d+)(?: levels=(\d+))?\]", s)
            assert m, s
            cur_name = m.group(1)
            cur_nk = (int(m.group(2)), int(m.group(3)))
            cur_rows = []
            cur_spawn = 0
        elif s.startswith("[level"):
            flush()
            cur_rows = []
            m = re.search(r"spawn=(\d+)", s)
            cur_spawn = int(m.group(1)) if m else 0
        else:
            raise ValueError("unparsed line in ext_levels.txt: %r" % s[:60])
    flush()
    return paths, inf


def main():
    orig = parse_orig()
    ext, inf = parse_ext()

    bitstream = []   # 1 = solid, row-major per level
    crumblist = []   # parallel, 1 = crumbles when stepped on
    glowlist = []    # parallel, 1 = a glowing (self-lit) surface
    baked = []       # (tun, n, k, rows, spawn, bitoff, ex)
    print("tunnel counts/layouts for levels.c sync:")
    for tun, src, key in TUNNELS:
        table = orig if src == "orig" else ext
        keys = key if isinstance(key, (tuple, list)) else (key,)
        entries = []
        for kk in keys:
            entries += table.get(kk, [])
        for (n, k, rows, spawn, solids, crumbs, glows, ex) in entries:
            bitoff = len(bitstream)
            assert len(solids) == rows * n * k, (tun, key, rows, n, k, len(solids))
            bitstream += solids
            crumblist += crumbs
            glowlist += glows + [0] * (len(solids) - len(glows))
            baked.append((tun, n, k, rows, spawn, bitoff, ex))
        label = "+".join(keys)
        if entries:
            lay = Counter(e[0] * 100 + e[1] for e in entries)
            (nk, _), = lay.most_common(1)
            print("  tun %2d %-14s count=%3d n=%d k=%d" % (tun, label, len(entries), nk // 100, nk % 100))
        else:
            print("  tun %2d %-14s count=  0  (!! no data)" % (tun, label))
    assert len(bitstream) == len(crumblist), "crumb/solid layout drift"
    assert len(bitstream) == len(glowlist), "glow/solid layout drift"

    def pack(bits):
        out = bytearray((len(bits) + 7) // 8)
        for i, v in enumerate(bits):
            if v:
                out[i >> 3] |= 1 << (i & 7)
        return out

    packed = pack(bitstream)
    nbytes = len(packed)
    cpacked = pack(crumblist)
    gpacked = pack(glowlist)
    print("levels: %d, tiles: %d, crumbling tiles: %d, glowing tiles: %d"
          % (len(baked), len(bitstream), sum(crumblist), sum(glowlist)))

    # ---- infinite-mode segments (flat bitmaps, played in authored order) ----
    inf_bits, inf_crumbs, inf_rows, inf_bit = [], [], [], []
    for (n, k, rows, spawn, solids, crumbs, _glows, ex) in inf:
        inf_bit.append(len(inf_bits))
        inf_rows.append(rows)
        inf_bits += solids
        inf_crumbs += crumbs
    inf_packed = pack(inf_bits)
    inf_cpacked = pack(inf_crumbs)
    inf_nbytes = len(inf_packed)
    assert len(inf_bits) == len(inf_crumbs)
    print("infinite segments: %d, rows: %d" % (len(inf), sum(inf_rows)))

    with open(OUT, "w") as f:
        f.write("/* levels_baked.h - Run 3 level bitmaps.\n")
        f.write(" * Generated by bake_levels.py from orig_levels.bin (the decompiled\n")
        f.write(" * original game) and ext_levels.txt (the authored extended-tunnel\n")
        f.write(" * bitmaps). Do not edit. 1 bit per tile (1 = solid), row-major,\n")
        f.write(" * LSB-first. bit = row*n*k + side*k + lane; rows past the end read\n")
        f.write(" * solid. %d levels, %d bits (%d bytes). */\n"
                % (len(baked), len(bitstream), nbytes))
        f.write("#ifndef LEVELS_BAKED_H\n#define LEVELS_BAKED_H\n\n")
        f.write("#include <stdint.h>\n\n")
        f.write("#define BAKED_TUNNELS %d\n" % len(TUNNELS))
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
        f.write("/* BAKED_CRUMB: same layout as BAKED_BITS, 1 = tile shakes and\n")
        f.write(" * falls after the runner steps on it (crumbling tiles). */\n")
        f.write("static const uint8_t BAKED_CRUMB[%d] = {\n" % nbytes)
        for i in range(0, nbytes, 16):
            f.write("  " + ", ".join("0x%02X" % b for b in cpacked[i:i + 16]) + ",\n")
        f.write("};\n\n")
        f.write("/* BAKED_GLOW: same layout as BAKED_BITS, 1 = the tile glows\n")
        f.write(" * (self-lit: it stays bright when a low-power tunnel's light\n")
        f.write(" * level is 0). */\n")
        f.write("static const uint8_t BAKED_GLOW[%d] = {\n" % nbytes)
        for i in range(0, nbytes, 16):
            f.write("  " + ", ".join("0x%02X" % b for b in gpacked[i:i + 16]) + ",\n")
        f.write("};\n\n")
        f.write("static const baked_level_t BAKED_LEVELS[BAKED_NLEVELS] = {\n")
        for (tun, n, k, rows, spawn, bitoff, _ex) in baked:
            f.write("  { %2d, %d, %3d, %3d, 0x%X }, /* t%d */\n" % (n, k, rows, spawn, bitoff, tun))
        f.write("};\n\n")
        # per-level presentation/automation, parallel to BAKED_LEVELS.
        f.write("/* Per-level look/automation (index = BAKED_LEVELS order). */\n")
        for name, idx, fmt in (("BAKED_COLOR0", "color0", "0x%06X"),
                               ("BAKED_COLOR1", "color1", "0x%06X")):
            f.write("static const uint32_t %s[BAKED_NLEVELS] = {\n  " % name +
                    ", ".join(fmt % b[6][idx] for b in baked) + ",\n};\n")
        f.write("static const uint16_t BAKED_TILEW[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(b[6]["tilew"]) for b in baked) + ",\n};\n")
        f.write("static const uint8_t BAKED_MUSIC[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(b[6]["music"]) for b in baked) + ",\n};\n")
        f.write("static const uint8_t BAKED_PBASE[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(b[6]["pbase"]) for b in baked) + ",\n};\n")
        f.write("static const int16_t BAKED_ROT[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(b[6]["rot"]) for b in baked) + ",\n};\n")
        f.write("static const uint16_t BAKED_WIN[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(b[6]["win"]) for b in baked) + ",\n};\n\n")
        # power triggers, packed (z row << 16) | (power << 8) | mode.
        trig_flat, trig_start, trig_count = [], [], []
        for b in baked:
            trig_start.append(len(trig_flat))
            trig_count.append(len(b[6]["trigs"]))
            for (z, pv, mode) in b[6]["trigs"]:
                trig_flat.append((z << 16) | (pv << 8) | mode)
        f.write("static const uint32_t BAKED_TRIGS[%d] = {\n  " % max(1, len(trig_flat)) +
                (", ".join("0x%08X" % t for t in trig_flat) if trig_flat else "0") + ",\n};\n")
        f.write("static const uint16_t BAKED_TRIG_START[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(s) for s in trig_start) + ",\n};\n")
        f.write("static const uint8_t BAKED_TRIG_COUNT[BAKED_NLEVELS] = {\n  " +
                ", ".join(str(c) for c in trig_count) + ",\n};\n\n")
        # tunnel start/count table in demo tunnel order
        by_tun = {}
        for bi, b in enumerate(baked):
            by_tun.setdefault(b[0], []).append(bi)
        starts, counts = [], []
        for tun in range(len(TUNNELS)):
            lst = by_tun.get(tun, [])
            starts.append(lst[0] if lst else 0)
            counts.append(len(lst))
        f.write("static const uint16_t BAKED_TUN_START[BAKED_TUNNELS] = {\n  " +
                ", ".join(str(s) for s in starts) + ",\n};\n")
        f.write("static const uint16_t BAKED_TUN_COUNT[BAKED_TUNNELS] = {\n  " +
                ", ".join(str(c) for c in counts) + ",\n};\n\n")

        # ---- infinite-mode segments ----
        f.write("/* Infinite-mode segments: flat hand-made bitmaps, played in\n")
        f.write(" * authored order (see build_inf_window in run3.c). 1 = solid. */\n")
        f.write("#define INF_SEG_COUNT %d\n" % len(inf))
        f.write("#define INF_SEG_N 4\n#define INF_SEG_K 4\n\n")
        f.write("static const uint8_t INF_SEG_BITS[%d] = {\n" % max(1, inf_nbytes))
        if inf_bits:
            for i in range(0, inf_nbytes, 16):
                f.write("  " + ", ".join("0x%02X" % b for b in inf_packed[i:i + 16]) + ",\n")
        else:
            f.write("  0,\n")
        f.write("};\n")
        f.write("static const uint8_t INF_SEG_CRUMB[%d] = {\n" % max(1, inf_nbytes))
        if inf_bits:
            for i in range(0, inf_nbytes, 16):
                f.write("  " + ", ".join("0x%02X" % b for b in inf_cpacked[i:i + 16]) + ",\n")
        else:
            f.write("  0,\n")
        f.write("};\n")
        f.write("static const uint16_t INF_SEG_ROWS[INF_SEG_COUNT] = {\n  " +
                ", ".join(str(r) for r in inf_rows) + ",\n};\n")
        f.write("static const uint32_t INF_SEG_BIT[INF_SEG_COUNT] = {\n  " +
                ", ".join(str(b) for b in inf_bit) + ",\n};\n\n")
        f.write("#endif /* LEVELS_BAKED_H */\n")
    print("wrote %s" % OUT)


if __name__ == "__main__":
    main()
