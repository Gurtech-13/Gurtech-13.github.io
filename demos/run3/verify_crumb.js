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

  // surface mapping the renderer uses: a standing crumble tile wears the
  // crumbling texture; every hole (authored gap, and a crumble tile that
  // already fell) is bare void. Regression guard: the texture used to be
  // blitted onto holes, which made crumble tiles look like normal ones.
  const TEX_CRUMBLING = 3;
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
  if (t0.texturedHoles) throw new Error("holes carry a surface texture: " + t0.texturedHoles);
  let deaths = 0, was = 1;
  for (let i = 0; i < 400; i++) {
    e.run3_step(1 / 60);
    const st = e.run3_state();
    if (st === 2 && was !== 2) deaths++;
    was = st;
  }
  const dd = e.run3_dislodged() - d0;
  const after = missing(r0, r0 + 60);
  const t1 = texScan(r0, r0 + 60);
  console.log(`dislodged+${dd} deaths=${deaths} missing ${before} -> ${after}`);
  console.log(`crumble textures ${t0.crumble} -> ${t1.crumble} (holes textured ${t0.texturedHoles}/${t1.texturedHoles})`);
  if (deaths !== 0) throw new Error("unexpected death in crumble fixture");
  if (dd <= 0) throw new Error("nothing crumbled");
  if (after <= before) throw new Error("fallen tiles do not read as holes");
  if (t1.crumble >= t0.crumble) throw new Error("fallen tiles kept their crumble texture");
  if (t1.texturedHoles) throw new Error("fallen tiles still textured");
  console.log("CRUMB OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
