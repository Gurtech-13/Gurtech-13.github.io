"use strict";
// Measure grounded runner feet row: diff two frames (chars 0 vs 3 — same
// speed trajectory, different sprites) on hole-free primary lvl 9.
// Diff bbox lowest row = runner feet row. H=720: lower third = [480,720].
const fs = require("fs");
const path = require("path");
const wasmPath = path.join(__dirname, "run3.wasm");
const bytes = fs.readFileSync(wasmPath);

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  const W = e.run3_width(), H = e.run3_height();
  console.log(`canvas ${W}x${H}; lower third top = ${Math.round((2 * H) / 3)}`);

  function frame(charId) {
    e.run3_init(4242);
    e.run3_seek(0, 9);
    e.run3_set_char(charId);
    e.run3_set_input(0);
    for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
    if (e.run3_state() !== 1) throw new Error("not running, state=" + e.run3_state());
    return new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  }
  const a = frame(0), b = frame(3);
  let top = H, bot = -1, left = W, right = -1, n = 0;
  for (let y = 0; y < H; y++) {
    for (let x = 0; x < W; x++) {
      if (a[y * W + x] !== b[y * W + x]) {
        n++;
        if (y < top) top = y;
        if (y > bot) bot = y;
        if (x < left) left = x;
        if (x > right) right = x;
      }
    }
  }
  console.log(`diff pixels=${n} bbox x=[${left},${right}] y=[${top},${bot}]`);
  console.log(`runner feet row ~ ${bot} (want ~${Math.round((2 * H) / 3)})`);
  const want = Math.round((2 * H) / 3);
  if (Math.abs(bot - want) > 12) {
    console.log(`FEET OFF: got ${bot}, want ${want} +- 12`);
    process.exit(1);
  }
  console.log("FEET OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
