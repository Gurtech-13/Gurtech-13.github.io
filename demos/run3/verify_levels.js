"use strict";
// Host-side test of the baked Run 3 levels in run3.wasm.
const fs = require("fs");
const path = require("path");

const wasmPath = path.join(__dirname, "run3.wasm");
const bytes = fs.readFileSync(wasmPath);

const EXPECT = [
  // tun: [count, firstLevel[n,k,rows], lastLevel[n,k,rows]]
  [0, 65, [4, 4, 54]],
  [1, 7, null],
  [2, 1, null],
  [12, 20, null],
  [13, 25, null],
  [23, 12, null], // procedural fallback (no baked data)
  [29, 3, null],
  // custom extended tunnels (procedural, no baked data)
  [30, 8, null],
  [31, 10, null],
  [32, 7, null],
  [33, 6, null],
  [34, 8, null],
  [35, 10, null],
];

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  const need = ["run3_init","run3_seek","run3_state","run3_tun","run3_lvl",
    "run3_tunnel_count","run3_tunnel_levels","run3_levels_in","run3_sides",
    "run3_lanes","run3_level_rows","run3_step","run3_set_input","run3_flap",
    "run3_tile","run3_solid","run3_enter_map","run3_map_checkpoint_count"];
  for (const n of need) {
    if (typeof e[n] !== "function") throw new Error("missing export " + n);
  }
  e.run3_init(12345);
  console.log("tunnel_count =", e.run3_tunnel_count());
  if (e.run3_tunnel_count() !== 36) throw new Error("bad tunnel count");

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

  // gate advance on a hole-free baked level: primary idx 9 (id-11, 16x1, 59 rows)
  e.run3_seek(0, 9);
  e.run3_set_input(0);
  const s0 = e.run3_sides(), k0 = e.run3_lanes();
  let gated = false;
  for (let i = 0; i < 60 * 60; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 4) break;
    if (e.run3_lvl() === 10) { gated = true; break; }
  }
  console.log(`gated 9->10: ${gated}; shape ${s0}x${k0} -> ${e.run3_sides()}x${e.run3_lanes()}`);
  if (!gated) throw new Error("gate advance broken");

  // fallback tunnel still procedural: wormhole space lvl rows = 45*rps formula (>0)
  e.run3_seek(23, 0);
  console.log(`space lvl0 rows=${e.run3_level_rows()} sides=${e.run3_sides()}`);
  if (!(e.run3_level_rows() > 0)) throw new Error("space rows");

  console.log("ALL WASM CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", err && err.message || err); process.exit(1); });
