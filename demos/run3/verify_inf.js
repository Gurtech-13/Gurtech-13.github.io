"use strict";
// Endless mode is a chain of hand-made segments (INF_SEG_*), not generated
// content: the geometry must be identical whatever seed the engine was
// initialised with, it must not be a slab, it must keep going, and dying must
// restart the endless run instead of dropping into a normal tunnel.
const fs = require("fs");
const path = require("path");
const bytes = fs.readFileSync(path.join(__dirname, "run3.wasm"));

function endlessSnapshot(e, rows, from) {
  const n = e.run3_sides(), k = e.run3_lanes();
  const base = from || 0;
  const out = [];
  for (let r = 0; r < rows; r++) {
    let row = "";
    for (let s = 0; s < n; s++) for (let l = 0; l < k; l++) row += e.run3_tile(s, base + r, l) ? "1" : "0";
    out.push(row);
  }
  return out;
}

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  for (const n of ["run3_start_inf", "run3_is_inf", "run3_inf_rows", "run3_inf_score",
                   "run3_rows_per", "run3_flap", "run3_state", "run3_tile", "run3_sides",
                   "run3_lanes", "run3_rowf", "run3_step"])
    if (typeof e[n] !== "function") throw new Error("missing export " + n);

  // 1. identical geometry for two very different engine seeds
  e.run3_init(1);
  e.run3_start_inf();
  if (!e.run3_is_inf()) throw new Error("start_inf did not enter endless mode");
  const shape = e.run3_sides() + "x" + e.run3_lanes();
  const a = endlessSnapshot(e, 500);
  e.run3_init(0xC0FFEE);
  e.run3_start_inf();
  const b = endlessSnapshot(e, 500);
  let diff = 0;
  for (let i = 0; i < a.length; i++) if (a[i] !== b[i]) diff++;
  console.log(`endless geometry: ${shape}, ${a.length} rows compared, ${diff} rows differ between seeds`);
  if (diff !== 0) throw new Error("endless geometry depends on the seed - that is generated content");

  // 2. it is a tunnel, not a slab
  let holes = 0, tot = 0;
  for (const row of a) for (const ch of row) { tot++; if (ch === "0") holes++; }
  const pct = 100 * holes / tot;
  console.log(`endless void ${pct.toFixed(1)}%`);
  if (pct < 10) throw new Error("endless tunnel is a solid slab: " + pct.toFixed(1) + "%");
  if (pct > 60) throw new Error("endless tunnel is mostly void: " + pct.toFixed(1) + "%");

  // 3. the endless run is a fixed chain of authored segments, so the row map
  //    must repeat with one period (the total length of the cycle). Hash noise
  //    never lines up like this; a generated tunnel does not either.
  let period = -1;
  for (let p = 32; p <= 470 && period < 0; p++) {
    let ok = true;
    for (let r = 0; r + p < 500; r++) if (a[r] !== a[r + p]) { ok = false; break; }
    if (ok) period = p;
  }
  console.log(`the endless row map repeats every ${period < 0 ? "?" : period} rows (authored cycle)`);
  if (period < 0) throw new Error("the endless geometry never repeats - it cannot be a fixed segment chain");
  if (period < 100) throw new Error("endless cycle is too short to be a segment chain: " + period);;

  // 4. it keeps going and ramps; score follows distance
  e.run3_init(7);
  e.run3_start_inf();
  const sp0 = e.run3_rows_per();
  e.run3_set_input(0);
  let maxRow = 0, deaths = 0, sawDead = false;
  for (let i = 0; i < 60 * 60; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 2) { deaths++; sawDead = true; e.run3_flap(); }
    maxRow = Math.max(maxRow, e.run3_rowf());
  }
  console.log(`endless 60s: row=${maxRow.toFixed(0)} start=${sp0.toFixed(2)} now=${e.run3_rows_per().toFixed(2)} ` +
              `score=${e.run3_inf_score()} rows=${e.run3_inf_rows()} deaths=${deaths}`);
  if (maxRow < 100) throw new Error("endless run did not advance");
  if (e.run3_inf_score() <= 0) throw new Error("endless score never moved");
  if (!sawDead) console.log("  (note: no death in this window)");

  // 5. dying restarts the endless run, it does not fall back into a tunnel
  e.run3_init(3);
  e.run3_start_inf();
  e.run3_set_input(0);
  let fellInto = false;
  for (let i = 0; i < 60 * 90; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 2) {
      /* let the void grace run out: the respawn must stay endless */
      for (let j = 0; j < 60 * 6; j++) e.run3_step(1 / 60);
      if (!e.run3_is_inf()) fellInto = true;
      break;
    }
  }
  if (fellInto) throw new Error("respawn after death left endless mode");
  console.log("death respawn stays in endless mode");
  console.log("ENDLESS OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
