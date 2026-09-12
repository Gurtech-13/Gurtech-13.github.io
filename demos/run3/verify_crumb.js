"use strict";
// Crumbling tiles: stepped-on crumble tiles shake, fall, and read as holes.
const fs = require("fs");
const path = require("path");
const wasmPath = path.join(__dirname, "run3.wasm");
const bytes = fs.readFileSync(wasmPath);

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  for (const n of ["run3_dislodged", "run3_is_inf"]) {
    if (typeof e[n] !== "function") throw new Error("missing export " + n);
  }

  // endless-mode flag
  e.run3_init(5);
  e.run3_start_inf();
  if (e.run3_is_inf() !== 1) throw new Error("inf flag");
  e.run3_seek(0, 0);
  if (e.run3_is_inf() !== 0) throw new Error("tunnel flag");
  console.log("is_inf OK");

  // Boxes 2 (id-217 baked): dense crumble under a survivable line
  const TUN = 14, LVL = 2;
  e.run3_init(2402);
  e.run3_seek(TUN, LVL);
  e.run3_set_input(0);
  const n = e.run3_sides(), k = e.run3_lanes();
  const r0 = e.run3_row();
  function missing(rA, rB) {
    let m = 0;
    for (let r = rA; r < rB; r++)
      for (let s = 0; s < n; s++) for (let l = 0; l < k; l++)
        m += e.run3_tile(s, r, l) ? 0 : 1;
    return m;
  }
  const before = missing(r0, r0 + 60);
  const d0 = e.run3_dislodged();
  let deaths = 0, was = 1;
  for (let i = 0; i < 400; i++) {
    e.run3_step(1 / 60);
    const st = e.run3_state();
    if (st === 2 && was !== 2) deaths++;
    was = st;
  }
  const dd = e.run3_dislodged() - d0;
  const after = missing(r0, r0 + 60);
  console.log(`dislodged+${dd} deaths=${deaths} missing ${before} -> ${after}`);
  if (deaths !== 0) throw new Error("unexpected death in crumble fixture");
  if (dd <= 0) throw new Error("nothing crumbled");
  if (after <= before) throw new Error("fallen tiles do not read as holes");
  console.log("CRUMB OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
