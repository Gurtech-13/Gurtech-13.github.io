"use strict";
// Crumbling tiles: one touch drops the touched tile at once, then its whole
// connected group follows as a wave (one tile per CRUMB_WAVE_CS of BFS
// distance on the unwrapped tube surface, col = side*k + lane).
const fs = require("fs");
const path = require("path");
const bytes = fs.readFileSync(path.join(__dirname, "run3.wasm"));

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
  const n = e.run3_sides(), k = e.run3_lanes(), N = n * k;
  const r0 = e.run3_row();
  const rowLo = r0, rowHi = r0 + 200;
  const TEX_CRUMBLING = 3;

  function standing() {
    const set = new Set();
    for (let r = rowLo; r < rowHi; r++)
      for (let col = 0; col < N; col++) {
        const s = Math.floor(col / k), l = col % k;
        if (e.run3_tile_tex(s, r, l) === TEX_CRUMBLING) set.add(col + "," + r);
      }
    return set;
  }
  function cluster(S, col0, row0) {
    const seen = new Set(), out = new Set();
    const st = [[col0, row0]];
    while (st.length) {
      const q = st.pop(), col = q[0], row = q[1];
      const key = col + "," + row;
      if (seen.has(key)) continue;
      seen.add(key);
      if (!S.has(key)) continue;
      out.add(key);
      st.push([(col + 1) % N, row], [(col - 1 + N) % N, row], [col, row + 1], [col, row - 1]);
    }
    return out;
  }
  function texScan(rA, rB) {
    let crumble = 0, bad = 0, texturedHoles = 0;
    for (let r = rA; r < rB; r++)
      for (let s = 0; s < n; s++) for (let l = 0; l < k; l++) {
        const tx = e.run3_tile_tex(s, r, l);
        const solid = e.run3_tile(s, r, l) ? 1 : 0;
        if (tx === TEX_CRUMBLING) { crumble++; if (!solid) bad++; }
        else if (tx !== 0) bad++;
        if (!solid && tx !== 0) texturedHoles++;
      }
    return { crumble, bad, texturedHoles };
  }

  const t0 = texScan(r0, r0 + 60);
  if (t0.crumble === 0) throw new Error("fixture has no standing crumble tiles");
  if (t0.bad) throw new Error("texture on non-crumble / hole tiles: " + t0.bad);

  const S0 = standing();
  const d0 = e.run3_dislodged();
  const lvl0 = e.run3_lvl();

  // step to the first touch
  let touched = null;
  for (let i = 0; i < 60 * 20 && !touched; i++) {
    const before = e.run3_dislodged();
    e.run3_step(1 / 60);
    if (e.run3_state() === 2 || e.run3_lvl() !== lvl0) break;
    if (e.run3_dislodged() > before) {
      const r = e.run3_row();
      if (r >= rowLo && r < rowHi) touched = [e.run3_side() * k + e.run3_lane(), r];
    }
  }
  if (!touched) throw new Error("the runner never touched a crumbling tile");
  const C = cluster(S0, touched[0], touched[1]);
  if (C.size < 2) throw new Error("fixture cluster too small to test the wave (" + C.size + ")");

  // the touched tile goes at once; the connected group must NOT be instant
  const SAtTouch = standing();
  let fallenAtTouch = 0;
  for (const t of S0) if (!SAtTouch.has(t)) fallenAtTouch++;
  console.log(`first touch ${touched[0]},${touched[1]}: cluster=${C.size}, fallen immediately=${fallenAtTouch}`);

  // let the wave run (it keeps going while the runner falls); it settles once
  // no tile has dropped for 40 steps. A respawn or checkpoint rebuilds the
  // window, so bail before that and use what fell up to then.
  let quiet = 0, last = e.run3_dislodged(), steps = 0, sawDead = false;
  for (; steps < 60 * 30 && quiet < 40; steps++) {
    e.run3_step(1 / 60);
    const st = e.run3_state();
    if (st === 2) sawDead = true;
    if (e.run3_lvl() !== lvl0 || (sawDead && st === 1)) break;
    const d = e.run3_dislodged();
    if (d > last) { quiet = 0; last = d; } else quiet++;
  }
  const S1 = standing();
  const fallen = new Set();
  for (const t of S0) if (!S1.has(t)) fallen.add(t);

  let missing = 0;
  for (const t of C) if (!fallen.has(t)) missing++;
  const dd = e.run3_dislodged() - d0;
  const t1 = texScan(r0, r0 + 60);
  console.log(`wave settled after ${steps} steps: dislodged+${dd} clusterMissing=${missing} fallen=${fallen.size}`);
  console.log(`crumble textures ${t0.crumble} -> ${t1.crumble} (holes textured ${t0.texturedHoles}/${t1.texturedHoles})`);
  if (fallenAtTouch !== 1) throw new Error("touch did not drop exactly the touched tile immediately: " + fallenAtTouch);
  if (missing) throw new Error("the connected group did not all fall: " + missing + " left");
  if (fallen.size < 2) throw new Error("clusters did not fall together (fallen=" + fallen.size + ")");
  if (t1.crumble >= t0.crumble) throw new Error("fallen tiles kept their crumble texture");
  if (t1.texturedHoles) throw new Error("fallen tiles still textured");
  console.log("CRUMB OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
