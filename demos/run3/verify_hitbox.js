"use strict";
// Why this test exists:
//  - the engine used to auto-change lanes: a mid-air push (landing_assist)
//    and a touchdown grab (landing_grab) slid the runner onto a safe tile.
//    Both are gone, so with zero steering input the ring must never move
//    inside one life (and a bad landing must actually kill).
//  - to keep near-edge landings fair without the assist, every tile's hit
//    box is 20% bigger (10% past each edge). run3_tile_hit exposes it.
const fs = require("fs");
const path = require("path");
const bytes = fs.readFileSync(path.join(__dirname, "run3.wasm"));

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  for (const n of ["run3_ring", "run3_tile_hit", "run3_lvl"])
    if (typeof e[n] !== "function") throw new Error("missing export " + n);

  // 1. no auto lane change: zero input, ring pinned for the whole life.
  //    The old mid-air push moved it by up to 2 lanes and the touchdown grab
  //    by 0.55, so any drift here means an assist survived.
  let maxDrift = 0, lives = 0;
  for (let seed = 1; seed <= 20; seed++) {
    e.run3_init(seed);
    e.run3_seek(0, 0);
    e.run3_set_char(0);
    e.run3_set_input(0);
    const lvl0 = e.run3_lvl();
    const r0 = e.run3_ring();
    const tot = e.run3_sides() * e.run3_lanes();
    lives++;
    for (let i = 0; i < 1500; i++) {
      e.run3_step(1 / 60);
      if (e.run3_state() === 2) break;       // this life is over
      if (e.run3_lvl() !== lvl0) break;      // new checkpoint moved the spawn
      let d = Math.abs(e.run3_ring() - r0);
      if (d > tot / 2) d = tot - d;
      if (d > maxDrift) maxDrift = d;
    }
  }
  console.log(`no lane change: maxRingDrift=${maxDrift.toExponential(2)} over ${lives} zero-input lives`);
  if (maxDrift > 1e-9) throw new Error("ring moved with zero input: " + maxDrift);
  console.log("NO AUTO LANE CHANGE OK");

  // 2. 20%-bigger hit box: a hole's edge is forgiven 0.1 tiles, no more
  e.run3_init(3);
  e.run3_seek(0, 0);
  const n = e.run3_sides(), k = e.run3_lanes(), N = n * k;
  const wrap = (c) => ((c % N) + N) % N;
  const solid = (col, row) => { const c = wrap(col); return e.run3_tile(Math.floor(c / k), row, c % k); };
  const row0 = Math.floor(e.run3_row());
  let checked = 0;
  for (let row = row0 + 6; row < row0 + 160 && checked < 3; row++) {
    for (let col = 0; col < N; col++) {
      if (solid(col, row)) continue;        // want a hole
      if (!solid(col - 1, row)) continue;   // with solid ground on its left
      if (solid(col + 1, row)) continue;    // and a hole on its right (clean edge)
      if (e.run3_tile_hit(row, col + 0.5) !== 0) throw new Error("hole centre reads solid");
      if (e.run3_tile_hit(row, col - 0.05) !== 1) throw new Error("solid tile edge not supported");
      if (e.run3_tile_hit(row, col + 0.05) !== 1) throw new Error("0.05 past the edge not forgiven");
      if (e.run3_tile_hit(row, col + 0.15) !== 0) throw new Error("0.15 past the edge still forgiven");
      checked++;
      break;
    }
  }
  if (checked < 3) throw new Error("not enough hole/solid patterns to check");
  console.log(`hit-box slack OK (${checked} edges)`);
  console.log("HITBOX OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
