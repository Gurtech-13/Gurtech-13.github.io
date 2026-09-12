"use strict";
// Stage + low-power checks for run3.wasm and the cutscene data files.
const fs = require("fs");
const path = require("path");
const vm = require("vm");

const dir = __dirname;
const bytes = fs.readFileSync(path.join(dir, "run3.wasm"));

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  for (const n of ["run3_cutscene_backdrop", "run3_cutscene_hold", "run3_power"]) {
    if (typeof e[n] !== "function") throw new Error("missing export " + n);
  }
  const W = e.run3_width(), H = e.run3_height();

  // 1. power: Primary stays lit, Dark cycles on -> off -> on along the run
  e.run3_init(77);
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  for (let i = 0; i < 600; i++) { e.run3_step(1 / 60); if (e.run3_power() !== 1) throw new Error("primary should stay lit"); }
  console.log("primary power pinned at 1 OK");

  // authored lights: base values + z-row triggers from the level data
  e.run3_seek(13, 0); // id-191: base full, first trigger at z=14
  e.run3_set_input(0);
  e.run3_step(1 / 60);
  if (e.run3_power() !== 1) throw new Error("dark should start lit");
  e.run3_seek(13, 5); // id-199: base 0.08, no triggers
  e.run3_step(1 / 60);
  const pBase = e.run3_power();
  if (!(pBase > 0.05 && pBase < 0.12)) throw new Error("dark base wrong: " + pBase);
  e.run3_seek(13, 4); // id-198: trigger at z=0 fades lights to 0 (slow)
  e.run3_set_input(0);
  let pMin = 1;
  for (let i = 0; i < 600; i++) { e.run3_step(1 / 60); pMin = Math.min(pMin, e.run3_power()); }
  if (!(pMin < 0.5)) throw new Error("dark fade trigger never fired: " + pMin);
  e.run3_seek(13, 23); // id-201: glimpse flash to full at z=6, then back
  e.run3_set_input(0);
  let pMax = 0;
  for (let i = 0; i < 400; i++) { e.run3_step(1 / 60); pMax = Math.max(pMax, e.run3_power()); }
  if (pMax !== 1) throw new Error("glimpse flash never fired");
  console.log(`dark lights OK (base=${pBase.toFixed(3)} fade-min=${pMin.toFixed(3)} glimpse-max=${pMax})`);
  // theme check: Dark must be the low-power palette id
  e.run3_seek(13, 0);
  if (e.run3_theme() !== 5) throw new Error("dark theme should be 5, got " + e.run3_theme());

  // 2. staging: hold/backdrop enter S_CUT(8); runner leaves the stage
  e.run3_seek(0, 9);
  e.run3_set_char(0);
  e.run3_set_input(0);
  for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
  e.render_frame();
  const withRunner = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  e.run3_cutscene_hold();
  if (e.run3_state() !== 8) throw new Error("hold should enter S_CUT, got " + e.run3_state());
  e.render_frame();
  const staged = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let diff = 0, top = H, bot = -1, left = W, right = -1;
  for (let y = 0; y < H; y++) for (let x = 0; x < W; x++) {
    if (withRunner[y * W + x] !== staged[y * W + x]) {
      diff++;
      if (y < top) top = y;
      if (y > bot) bot = y;
      if (x < left) left = x;
      if (x > right) right = x;
    }
  }
  console.log(`stage diff pixels=${diff} bbox x=[${left},${right}] y=[${top},${bot}]`);
  if (diff === 0) throw new Error("hold frame identical: runner still on stage?");
  if (left < W / 2 - 120 || right > W / 2 + 120) throw new Error("stage diff outside runner area");

  e.run3_cutscene_backdrop(13, 2);
  if (e.run3_state() !== 8 || e.run3_tun() !== 13 || e.run3_lvl() !== 2) {
    throw new Error(`backdrop wrong: state=${e.run3_state()} tun=${e.run3_tun()} lvl=${e.run3_lvl()}`);
  }
  e.render_frame(); // must not trap
  console.log("S_CUT hold/backdrop OK");

  // 3. cutscene data: every voiced scene has a valid cast + portrait files
  const sandbox = { console };
  sandbox.window = sandbox;
  sandbox.globalThis = sandbox;
  sandbox.location = { search: "" };
  vm.createContext(sandbox);
  for (const f of ["story.js", "cutscenes.js", "custom_cutscenes.js"]) {
    vm.runInContext(fs.readFileSync(path.join(dir, f), "utf8"), sandbox, { filename: f });
  }
  const C = sandbox.STORY.C, CUT = sandbox.STORY_CUT, CAST = sandbox.STORY_CAST;
  const MID = sandbox.STORY_MID_CUTS, STAGE = sandbox.STORY_STAGE;
  const T = sandbox.STORY.T;
  let scenes = 0;
  for (const name of Object.keys(CUT)) {
    if (!CUT[name] || CUT[name].length === 0) continue;
    scenes++;
    const cast = CAST[name];
    if (!cast || cast.length === 0) throw new Error("no cast for " + name);
    for (const cid of cast) {
      if (!C[cid]) throw new Error(`bad char ${cid} in ${name}`);
      const img = C[cid].frontImg || C[cid].img;
      if (!fs.existsSync(path.join(dir, "assets", "images", img))) {
        throw new Error(`missing portrait ${img} for char ${cid} (${name})`);
      }
    }
  }
  console.log(`cast coverage OK (${scenes} voiced scenes)`);
  // mid-tunnel triggers: valid tunnel/level, voiced scene, cast, stage
  if (!MID.length) throw new Error("no mid-tunnel triggers");
  for (const m of MID) {
    if (!T[m.tun]) throw new Error("bad mid tun " + m.tun);
    e.run3_init(9);
    if (m.lvl < 0 || m.lvl >= e.run3_levels_in(m.tun)) throw new Error(`bad mid lvl ${m.lvl} for tun ${m.tun}`);
    if (!CUT[m.cut] || !CUT[m.cut].length) throw new Error("mid scene missing: " + m.cut);
    if (!CAST[m.cut] || !CAST[m.cut].length) throw new Error("mid cast missing: " + m.cut);
    if (!STAGE[m.cut]) throw new Error("mid stage missing: " + m.cut);
    if (m.unlock != null && !T[m.unlock]) throw new Error("bad mid unlock " + m.unlock);
  }
  console.log(`mid triggers OK (${MID.map((m) => `${m.cut}@${m.tun}:${m.lvl}`).join(" ")})`);
  // ComingThrough: the Primary-10 skater scene
  const ct = CUT.ComingThrough;
  if (!ct || ct.length !== 25) throw new Error("ComingThrough bake wrong");
  if (ct[ct.length - 1].m !== "Choose your character!") throw new Error("ComingThrough tail wrong");
  // stage framing: baked scenes carry per-line frames; custom scenes opt out
  const CAMSHOT = sandbox.STORY_CAMSHOT || {};
  for (const name of Object.keys(CUT)) {
    if (!CAMSHOT[name]) continue;
    for (const L of CUT[name]) {
      if (typeof L.f !== "number") throw new Error("unframed line in " + name);
    }
  }
  if (!CAMSHOT.ComingThrough) throw new Error("ComingThrough has no stage framing");
  const c0 = CAMSHOT.ComingThrough[0];
  if (c0[1] !== 0 || c0[2] !== 1) throw new Error("ComingThrough framing wrong: " + JSON.stringify(c0));
  console.log(`stage framing OK (${Object.keys(CAMSHOT).length} scenes with shot changes)`);
  console.log("ALL STAGE CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
