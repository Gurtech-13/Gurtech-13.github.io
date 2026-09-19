"use strict";
// Host-side test of the baked Run 3 levels in run3.wasm.
const fs = require("fs");
const path = require("path");

const wasmPath = path.join(__dirname, "run3.wasm");
const bytes = fs.readFileSync(wasmPath);

const EXPECT = [
  // tun: [count, firstLevel[n,k,rows], lastLevel[n,k,rows]]
  [0, 65, null],
  [1, 7, null],
  [2, 1, null],
  [12, 20, null],
  [13, 25, null],
  [23, 12, null], // authored bitmaps (the original has no data here)
  [29, 3, null],
  // custom extended tunnels (authored flat bitmaps, ext_levels.txt)
  [30, 8, null],
  [31, 10, null],
  [32, 7, null],
  // Wormhole X / Far Shore / Far Drift: 200 levels each, split across a
  // main run (140) and two branches (30 + 30)
  [33, 140, null], [36, 30, null], [37, 30, null],
  [34, 140, null], [38, 30, null], [39, 30, null],
  [35, 140, null], [40, 30, null], [41, 30, null],
  // recovered original paths (real levels the explore map never linked in):
  // homePlanA + homePlanAPart2, homePlanC + homePlanCPart2, wormholeP, and
  // the single crossing level.
  [42, 16, null], [43, 22, null], [44, 10, null], [45, 1, null],
];
const EXTENDED = [23, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41,
                  42, 43, 44, 45];

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  const need = ["run3_init","run3_seek","run3_state","run3_tun","run3_lvl",
    "run3_tunnel_count","run3_tunnel_levels","run3_levels_in","run3_sides",
    "run3_lanes","run3_level_rows","run3_step","run3_set_input","run3_flap",
    "run3_tile","run3_solid","run3_enter_map","run3_map_checkpoint_count",
    "run3_hint_on","run3_hint_toggle","run3_hint_count","run3_hint_row","run3_hint_ring"];
  for (const n of need) {
    if (typeof e[n] !== "function") throw new Error("missing export " + n);
  }
  e.run3_init(12345);
  console.log("tunnel_count =", e.run3_tunnel_count());
  if (e.run3_tunnel_count() !== 46) throw new Error("bad tunnel count");
  let total = 0;
  for (let t = 0; t < 46; t++) {
    const c = e.run3_levels_in(t);
    total += c;
    if (c <= 0) throw new Error(`tun ${t} has no levels - every tunnel must ship bitmaps`);
  }
  console.log(`total levels across all tunnels: ${total}`);
  if (total !== 1005) throw new Error("total level count drifted: " + total);

  for (const [tun, count, first] of EXPECT) {
    const got = e.run3_levels_in(tun);
    console.log(`tun ${tun}: levels=${got} mapdots=${e.run3_map_checkpoint_count(tun)}`);
    if (got !== count) throw new Error(`tun ${tun}: want ${count} got ${got}`);
    e.run3_seek(tun, 0);
    if (e.run3_tun() !== tun || e.run3_lvl() !== 0) throw new Error("seek failed");
    if (first) {
      const n = e.run3_sides(), k = e.run3_lanes(), rows = e.run3_level_rows();
      console.log(`  lvl0: sides=${n} lanes=${k} rows=${rows}`);
      if (n !== first[0] || k !== first[1] || Math.round(rows) !== first[2])
        throw new Error(`tun ${tun} lvl0 mismatch: got ${n},${k},${rows}`);
    }
  }

  // The extended tunnels must not be solid slabs: at least 30% of their tiles
  // are void, so they read like the baked originals. Sample the first, middle
  // and last level of every extended tunnel (rows are absolute, so offset by
  // the level's start row).
  //
  // The rows either side of a level boundary are engine-forced solid (the
  // transition band the cross-sections morph over), so they are excluded here
  // — otherwise this measures the transition, not the authored level. The band
  // is TRANSITION_LEN (1050, the 2014's own) world units, half of it either
  // side of the boundary and each half measured in the tile width of the level
  // it lies in, so this reads the same per-level tile width the engine does.
  const TRANSITION_LEN = 1050;
  const transRows = (lvl) =>
    Math.max(1, Math.round(TRANSITION_LEN / e.run3_level_tilew(lvl)));
  const halfRows = (lvl) => Math.floor(transRows(lvl) / 2);
  const voidOf = (tun, lvl) => {
    e.run3_seek(tun, lvl);
    const n = e.run3_sides(), k = e.run3_lanes();
    const rows = Math.min(200, e.run3_level_rows() | 0);
    const base = e.run3_row();
    const SEAM = Math.min(halfRows(lvl), rows >> 1);
    let voidN = 0, tot = 0;
    for (let r = SEAM; r < rows - SEAM; r++)
      for (let s = 0; s < n; s++) for (let l = 0; l < k; l++) {
        tot++;
        if (!e.run3_tile(s, base + r, l)) voidN++;
      }
    return { pct: 100 * voidN / tot, n, k, rows };
  };
  for (const tun of EXTENDED) {
    const count = e.run3_levels_in(tun);
    const picks = [0, count >> 1, count - 1];
    const stats = picks.map((l) => voidOf(tun, l));
    console.log(`tun ${tun}: void ` + stats.map((s) => s.pct.toFixed(1) + "%").join("/") +
      ` (${stats[0].n}x${stats[0].k}, ${stats[0].rows} rows)`);
    for (const s of stats)
      if (s.pct < 30) throw new Error(`tun ${tun}: only ${s.pct.toFixed(1)}% void (want >= 30%)`);
  }

  // primary lvl0 must match original id-0: 54 rows of 4x4.
  // id-0 main layer has 172 holes, 8 of them in rows 0-3 which the engine
  // always keeps solid (spawn area) -> 164 visible holes. Row 10 is a
  // full-ring gap in the original (a jump), row 9 fully solid.
  // The level's last rows are the transition band to the next level, which the
  // engine forces solid: half of 1050 world units at this level's own tile
  // width (both levels here are 75, so 7 rows). That band carried 6 of the
  // original's holes, so the exact-match count runs over the authored rows
  // before it and the band is checked separately below and in the seam pass.
  e.run3_seek(0, 0);
  const r0 = Math.round(e.run3_level_rows());
  if (r0 !== 54) throw new Error("primary rows " + r0);
  const band = halfRows(1); // this level's tail: the NEXT level's own half
  const authored = 54 - band;
  let holes = 0, seamSolid = 0;
  for (let r = 0; r < 54; r++)
    for (let s = 0; s < 4; s++) for (let l = 0; l < 4; l++) {
      const solid = e.run3_tile(s, r, l);
      if (r < authored) holes += solid ? 0 : 1;
      else seamSolid += solid ? 1 : 0;
    }
  console.log(`primary lvl0 holes=${holes} over rows 0..${authored - 1}` +
    ` (want 118), transition band ${band} rows`);
  if (holes !== 118) throw new Error("hole mismatch: " + holes);
  if (seamSolid !== band * 16)
    throw new Error(`transition band not solid: ${seamSolid}/${band * 16}`);
  let row9 = 0;
  for (let s = 0; s < 4; s++) for (let l = 0; l < 4; l++) row9 += e.run3_tile(s, 9, l);
  if (row9 !== 16) throw new Error("row9 should be solid");

  // auto-jump: with no input the runner must auto-jump the row-10
  // full-ring gap and run on past row 12 without dying
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  let autoOk = false, autoDied = false;
  for (let i = 0; i < 60 * 30; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 2) { autoDied = true; break; }
    if (e.run3_rowf() > 12) { autoOk = true; break; }
  }
  console.log(`auto-jump over gap: ok=${autoOk} died=${autoDied}`);
  if (!autoOk || autoDied) throw new Error("auto-jump broken");

  // void landing still kills: flap so touchdown lands inside the row-10
  // gap (S_DEAD), then auto-respawn at the same checkpoint (S_RUN)
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  let flapped = false, sawDead = false, respawned = false;
  for (let i = 0; i < 60 * 60 && !respawned; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 2) sawDead = true;
    if (!flapped && e.run3_rowf() >= 2.5) { e.run3_flap(); flapped = true; }
    if (sawDead && e.run3_state() === 1 && e.run3_lvl() === 0) respawned = true;
  }
  console.log(`void landing: flapped=${flapped} sawDead=${sawDead} respawned=${respawned}`);
  if (!flapped || !sawDead || !respawned) throw new Error("death/respawn broken");

  // gate advance on a crumble- and hole-free baked level: primary idx 0
  // (4x4, 57 rows) — zero input reaches the end and rolls into level 1
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  const s0 = e.run3_sides(), k0 = e.run3_lanes();
  let gated = false;
  for (let i = 0; i < 60 * 60; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 4) break;
    if (e.run3_lvl() === 1) { gated = true; break; }
  }
  console.log(`gated 0->1: ${gated}; shape ${s0}x${k0} -> ${e.run3_sides()}x${e.run3_lanes()}`);
  if (!gated) throw new Error("gate advance broken");

  // every extended level must have a way through: the hint planner (the same
  // route the H overlay draws) must reach the end of a broad sample of levels
  // across every extended tunnel.
  let routed = 0;
  for (const tun of EXTENDED) {
    const count = e.run3_levels_in(tun);
    for (let lvl = 0; lvl < count; lvl += Math.max(1, Math.floor(count / 6))) {
      e.run3_seek(tun, lvl);
      if (e.run3_hint_on()) e.run3_hint_toggle();
      e.run3_hint_toggle();
      const cnt = e.run3_hint_count();
      const r0 = e.run3_rowf();
      const rows = e.run3_level_rows() | 0;
      const last = cnt > 0 ? e.run3_hint_row(cnt - 1) : -1;
      if (cnt <= 0 || last - r0 < rows - 3)
        throw new Error(`tun ${tun} lvl ${lvl}: no route through (${cnt} waypoints, ` +
                        `reaches row ${last - r0} of ${rows})`);
      routed++;
    }
  }
  console.log(`route exists on ${routed} sampled extended levels`);

  // A level boundary changes the tube's cross-section, and the runner has to
  // cross that on a solid run of ordinary tiles: no holes and no crumbling
  // tiles in the transition band the shapes morph over, in every tunnel. That
  // band is half of 1050 world units at each end of EVERY level, measured in
  // that level's own tile width, so the transition can never ask the runner to
  // jump a gap that only exists because two layouts met.
  //
  // The check is per level, because a level can be shorter than its own run
  // (Wormhole H's level 7 is a single row): a level only guarantees its OWN
  // rows, and the run spilling into the next level there is the next level's
  // band, measured in the next level's tile width. Clamping to each level's own
  // rows is what keeps this honest.
  // Note a level's terrain runs past its FINISH row (run3_level_rows is the
  // finish row, not the authored row count - see run3.c's compute_rows), and
  // the tail band sits at the end of the AUTHORED rows, so the authored count
  // comes from where the next level starts.
  let seamTiles = 0, seamHoles = 0, seamCrumb = 0, boundaries = 0;
  const tunCount = e.run3_tunnel_count();
  for (let tun = 0; tun < tunCount; tun++) {
    e.run3_init(7);
    e.run3_seek(tun, 0);
    const lvls = e.run3_tunnel_levels();
    const info = [];
    for (let lvl = 0; lvl < lvls; lvl++) {
      e.run3_init(7);
      e.run3_seek(tun, lvl);
      info.push({
        head: Math.round(e.run3_rowf()),
        rows: Math.round(e.run3_level_rows()),
        n: e.run3_sides(), k: e.run3_lanes(),
      });
    }
    for (let lvl = 0; lvl < lvls; lvl++) {
      const A = info[lvl];
      const authored = lvl + 1 < lvls ? info[lvl + 1].head - A.head : 0;
      const own = Math.min(halfRows(lvl), authored);
      e.run3_init(7);
      e.run3_seek(tun, lvl);
      // a tunnel's first level has no boundary before it (the engine applies no
      // head band there), and its last has none after it
      const bands = [];
      if (lvl > 0) bands.push({ from: A.head, to: A.head + own });
      if (authored > 0) bands.push({ from: A.head + authored - own, to: A.head + authored });
      for (const band of bands)
        for (let r = band.from; r < band.to; r++)
          for (let s = 0; s < A.n; s++)
            for (let l = 0; l < A.k; l++) {
              seamTiles++;
              if (!e.run3_tile(s, r, l)) seamHoles++;
              if (e.run3_tile_tex(s, r, l) !== 0) seamCrumb++;
            }
      if (lvl > 0) boundaries++;
      if (lvl > 0 && info[lvl - 1].head + info[lvl - 1].rows !== A.head)
        throw new Error(`tun${tun} lvl${lvl}: rows do not meet`);
    }
  }
  if (boundaries < 50) throw new Error(`only ${boundaries} boundaries found`);
  if (seamHoles) throw new Error(`${seamHoles} holes in a level-transition band`);
  if (seamCrumb) throw new Error(`${seamCrumb} crumbling tiles in a level-transition band`);
  console.log(`transition bands OK (${boundaries} boundaries, ${seamTiles} tiles solid, no holes or crumbling)`);

  console.log("ALL WASM CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", err && err.message || err); process.exit(1); });
