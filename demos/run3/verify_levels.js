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
];
const EXTENDED = [23, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41];

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
  if (e.run3_tunnel_count() !== 42) throw new Error("bad tunnel count");
  let total = 0;
  for (let t = 0; t < 42; t++) {
    const c = e.run3_levels_in(t);
    total += c;
    if (c <= 0) throw new Error(`tun ${t} has no levels - every tunnel must ship bitmaps`);
  }
  console.log(`total levels across all tunnels: ${total}`);
  if (total !== 956) throw new Error("total level count drifted: " + total);

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
  const voidOf = (tun, lvl) => {
    e.run3_seek(tun, lvl);
    const n = e.run3_sides(), k = e.run3_lanes();
    const rows = Math.min(200, e.run3_level_rows() | 0);
    const base = e.run3_row();
    let voidN = 0, tot = 0;
    for (let r = 0; r < rows; r++)
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
  e.run3_seek(0, 0);
  const r0 = Math.round(e.run3_level_rows());
  if (r0 !== 54) throw new Error("primary rows " + r0);
  let holes = 0;
  for (let r = 0; r < 54; r++)
    for (let s = 0; s < 4; s++) for (let l = 0; l < 4; l++)
      holes += e.run3_tile(s, r, l) ? 0 : 1;
  console.log(`primary lvl0 holes=${holes} (want 164)`);
  if (holes !== 164) throw new Error("hole mismatch: " + holes);
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

  console.log("ALL WASM CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", err && err.message || err); process.exit(1); });
