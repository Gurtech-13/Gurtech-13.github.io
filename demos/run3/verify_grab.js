"use strict";
// Lateral landing-grab proof (committed regression test).
// Primary lvl 0 rows 34-35 have holes at the spawn lane with a solid
// neighbor lane. Touchdown exactly over the hole = death under exact
// landing; the grab snaps the ring +0.55 onto the neighbor and play
// continues. With zero steering input the ring can ONLY move via the grab,
// so survival past row 35.5 with dring ~= 0.55 proves it fired.
const fs = require("fs");
const path = require("path");
const bytes = fs.readFileSync(path.join(__dirname, "run3.wasm"));
(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  e.run3_init(7);
  let proved = false;
  for (let t = 26.3; t <= 27.01 && !proved; t += 0.1) {
    const th = Math.round(t * 10) / 10;
    e.run3_seek(0, 0);
    e.run3_set_char(0);
    e.run3_set_input(0);
    const r0 = e.run3_ring();
    let phase = 0, st = 1, row = 0;
    for (let i = 0; i < 400; i++) {
      e.run3_step(1 / 60);
      st = e.run3_state();
      if (st === 2) break;
      row = e.run3_rowf();
      if (phase === 0 && row >= 3.5) { e.run3_flap(); phase = 1; } // clear row-10 gap
      else if (phase === 1 && row >= th) { e.run3_flap(); phase = 2; } // test jump
      if (phase === 2 && row > 35.5) break;
    }
    const dr = e.run3_ring() - r0;
    if (st === 1 && row > 35.5 && Math.abs(Math.abs(dr) - 0.55) < 0.15) {
      proved = true;
      console.log(`grab proved at flap row ${th}: ring shift ${dr.toFixed(2)}`);
    }
  }
  if (!proved) throw new Error("landing grab did not fire");
  console.log("GRAB OK");
})().catch((err) => { console.error("FAIL:", err && err.message || err); process.exit(1); });
