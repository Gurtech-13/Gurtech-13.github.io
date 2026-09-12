"use strict";
// Verify all 17 characters: distinct sprites + distinct stats.
const fs = require("fs");
const bytes = fs.readFileSync("C:\\Users\\raman\\eclipse-workspace\\fastpbrjava\\Gurtech-13.github.io\\demos\\run3\\run3.wasm");
(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  e.run3_init(4242);

  // 1. distinct sprites: hash framebuffer per char (same pose: seek + 30 steps)
  const W = e.run3_width(), H = e.run3_height();
  const seen = new Map();
  for (let c = 0; c < 17; c++) {
    e.run3_seek(0, 9); // hole-free level so pose is stable
    e.run3_set_char(c);
    e.run3_set_input(0);
    for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
    const words = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H);
    let h = 0;
    for (let i = 0; i < words.length; i += 97) {
      h = (((h << 5) - h) ^ words[i]) | 0;
    }
    const key = (h >>> 0).toString(16);
    if (seen.has(key)) throw new Error(`char ${c} renders identically to char ${seen.get(key)}`);
    seen.set(key, c);
    console.log(`char ${String(c).padStart(2)} hash=${key}`);
  }
  console.log("17 distinct sprites OK");

  // 2. stats: lateral speed (ring delta with full steer, few steps to
  // avoid ring wraparound) and forward speed (row delta)
  const lat = [], fwd = [];
  for (let c = 0; c < 17; c++) {
    e.run3_seek(0, 9);
    e.run3_set_char(c);
    const r0 = e.run3_ring(), p0 = e.run3_rowf();
    e.run3_set_input(1);
    for (let i = 0; i < 20; i++) e.run3_step(1 / 60);
    lat.push(e.run3_ring() - r0);
    fwd.push(e.run3_rowf() - p0);
  }
  console.log("lat deltas:", lat.map((v) => v.toFixed(2)).join(" "));
  console.log("fwd deltas:", fwd.map((v) => v.toFixed(1)).join(" "));
  // runner baseline checks
  if (!(lat[1] < lat[0])) throw new Error("skater should strafe slower than runner");
  if (!(lat[2] < lat[1])) throw new Error("child should strafe slowest of first three");
  if (!(fwd[1] > fwd[0] * 1.2)) throw new Error("skater should run ~1.38x runner");
  if (!(fwd[14] > fwd[1])) throw new Error("skier should run fastest");
  if (!(fwd[8] < fwd[0] * 0.8)) throw new Error("gentleman should run slow");
  const distinctLat = new Set(lat.map((v) => v.toFixed(2))).size;
  if (distinctLat < 5) throw new Error("strafe speeds lack variety: " + distinctLat);
  console.log("CHAR STATS OK");
})().catch((err) => { console.error("FAIL:", err && err.message || err); process.exit(1); });
