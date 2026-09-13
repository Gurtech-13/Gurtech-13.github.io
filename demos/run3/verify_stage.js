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
  for (const n of ["run3_cutscene_backdrop", "run3_cutscene_hold", "run3_power",
                   "run3_stage_actor", "run3_stage_prop", "run3_stage_cam",
                   "run3_mid_arm", "run3_mid_clear", "run3_gate_resume"]) {
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

  // 2b. staged cast: slots are drawn in S_CUT (and S_GATE), and the host
  //     float camera pans/raises the held frame
  e.run3_cutscene_backdrop(0, 9);
  e.run3_stage_actor(0, 0, 4, 6, 1);
  e.run3_stage_actor(1, 1, 12, 6.6, 1);
  e.run3_stage_prop(0, 1, 5, 7.5, 2.4, 0, 1);
  e.run3_stage_cam(0, 0);
  e.render_frame();
  const withCast = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  e.run3_stage_actor(0, 0, 4, 6, 0);
  e.run3_stage_actor(1, 1, 12, 6.6, 0);
  e.run3_stage_prop(0, 1, 5, 7.5, 2.4, 0, 0);
  e.render_frame();
  const noCast = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let castDiff = 0;
  for (let i = 0; i < W * H; i++) if (withCast[i] !== noCast[i]) castDiff++;
  if (castDiff < 200) throw new Error("staged cast drew nothing: " + castDiff);
  e.run3_cutscene_backdrop(0, 9);
  e.run3_stage_cam(0, 0);
  e.render_frame();
  const flat = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  e.run3_stage_cam(0.9, 0.8);
  e.render_frame();
  const panned = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let camDiff = 0;
  for (let i = 0; i < W * H; i++) if (flat[i] !== panned[i]) camDiff++;
  if (camDiff < 2000) throw new Error("float stage camera did nothing: " + camDiff);
  e.run3_stage_cam(0, 0);
  console.log(`staged cast OK (cast pixels=${castDiff} camera pixels=${camDiff})`);

  // 2b2. prop slots: kind 0 draws nothing at all (a scene switches a prop
  //      off — the map is handed back), and the map floats off the wall
  //      rather than sliding around it. Inset 0 must equal the old blit.
  e.run3_cutscene_backdrop(0, 9);
  e.run3_stage_prop(0, 0, 5, 7.5, 2.4, 0, 1);
  e.render_frame();
  const zeroA = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  e.run3_stage_prop(0, 0, 5, 7.5, 2.4, 0, 0);
  e.render_frame();
  const zeroB = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let zeroDiff = 0;
  for (let i = 0; i < W * H; i++) if (zeroA[i] !== zeroB[i]) zeroDiff++;
  if (zeroDiff !== 0) throw new Error("hidden prop slot (kind 0) drew " + zeroDiff + " px");
  // the map is a flat 0xBCAB7C panel (ComingThrough.as builds a 1x1
  // BitmapData of that colour through the colour shader, never a texture):
  // every non-background pixel of the prop must be that colour
  e.run3_cutscene_backdrop(0, 9);
  e.run3_stage_cam(0, 0);
  e.run3_stage_prop(0, 1, 5, 7.5, 2.4, 0.0, 1);
  e.render_frame();
  const onWall = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  e.run3_stage_prop(0, 1, 5, 7.5, 2.4, 1, 1);
  e.render_frame();
  const floating = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let insetDiff = 0, mapPx = 0, offColour = 0;
  for (let i = 0; i < W * H; i++) {
    if (onWall[i] !== floating[i]) insetDiff++;
    if (onWall[i] !== zeroB[i]) {
      mapPx++;
      if (onWall[i] !== 0xFFBCAB7C) offColour++;
    }
  }
  if (insetDiff < 200) throw new Error("map inset did nothing: " + insetDiff);
  if (mapPx === 0) throw new Error("map prop drew nothing");
  if (offColour !== 0)
    throw new Error(`map is not the flat 0xBCAB7C panel: ${offColour}/${mapPx} px off-colour`);
  // kind 7 is a real texture (the TrainRide balloon), so it must draw pixels
  // and must NOT be the flat map panel
  e.run3_cutscene_backdrop(0, 9);
  e.run3_stage_cam(0, 0);
  e.run3_stage_prop(0, 7, 5, 7.5, 2.4, 0.3, 1);
  e.render_frame();
  const balloon = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let balPx = 0, balFlat = 0;
  for (let i = 0; i < W * H; i++) {
    if (balloon[i] !== zeroB[i]) { balPx++; if (balloon[i] === 0xFFBCAB7C) balFlat++; }
  }
  if (balPx < 50) throw new Error("balloon prop drew nothing: " + balPx);
  if (balFlat !== 0) throw new Error("balloon prop is the flat map panel, not the texture");
  e.run3_stage_prop(0, 0, 5, 7.5, 2.4, 0, 0);
  console.log(`prop slots OK (kind0 clean, map ${mapPx} px of flat 0xBCAB7C, inset moved ${insetDiff} px, balloon ${balPx} px)`);

  // 2c. mid-tunnel gate: an armed checkpoint PAUSES at S_GATE on the level
  //     just completed (scene stages there); resume rolls into the next one
  // Primary 0 is the level the suite already proves is runnable with no
  // steering (it auto-jumps the full-ring gap), so the gate can be reached
  // without the test also having to play the level.
  e.run3_mid_clear();
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  let gated = -1;
  for (let i = 0; i < 3000; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 3) { gated = i; break; }
  }
  if (gated >= 0) throw new Error("unarmed checkpoint should never pause");
  e.run3_mid_arm(0, 0);
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  let gated2 = -1;
  for (let i = 0; i < 3000; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() === 3) { gated2 = i; break; }
  }
  if (gated2 < 0) throw new Error("armed checkpoint never paused (known bug path)");
  if (e.run3_state() !== 3) throw new Error("gate state wrong: " + e.run3_state());
  if (e.run3_lvl() !== 0) throw new Error("gate should hold the completed level, got " + e.run3_lvl());
  const heldProg = e.run3_rowf(), heldEnd = e.run3_level_rows();
  if (!(heldProg > 0 && heldEnd > 0)) throw new Error("gate row bookkeeping broken");
  // the gate must hold still: no runner drift while the scene plays
  const p0 = e.run3_rowf();
  for (let i = 0; i < 60; i++) e.run3_step(1 / 60);
  if (e.run3_state() !== 3 || e.run3_rowf() !== p0) throw new Error("gate did not hold");
  // one-shot: the arm is consumed, so resuming never pauses on it again
  e.run3_gate_resume();
  if (e.run3_state() !== 1) throw new Error("gate resume should run, got " + e.run3_state());
  if (e.run3_lvl() !== 1) throw new Error("gate resume did not advance, lvl=" + e.run3_lvl());
  for (let i = 0; i < 600; i++) e.run3_step(1 / 60);
  if (e.run3_state() === 3) throw new Error("consumed gate fired twice");
  e.run3_mid_clear();
  console.log(`mid-gate pause/resume OK (paused after ${gated2} steps, held on lvl 0)`);

  // 3. cutscene data: every voiced scene has a valid cast + portrait files
  const sandbox = { console };
  sandbox.window = sandbox;
  sandbox.globalThis = sandbox;
  sandbox.location = { search: "" };
  vm.createContext(sandbox);
  let bakedNames = null;
  for (const f of ["story.js", "cutscenes.js", "custom_cutscenes.js", "achievements.js"]) {
    vm.runInContext(fs.readFileSync(path.join(dir, f), "utf8"), sandbox, { filename: f });
    /* snapshot before custom_cutscenes.js merges its hand-written scenes in */
    if (f === "cutscenes.js") bakedNames = Object.keys(sandbox.STORY_CUT);
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
  // achievements roster + PlanetStolen gating (8 earned, staged on U-0)
  const ACH = sandbox.ACHIEVEMENTS || [];
  if (ACH.length !== 9) throw new Error("achievement roster wrong: " + ACH.length);
  if (sandbox.ACH_PLANETSTOLEN_NEED !== 8) throw new Error("planetstolen threshold wrong");
  if (MID.some((m) => m.cut === "PlanetStolen")) throw new Error("PlanetStolen must be achievement-gated, not a mid trigger");
  const pst = STAGE.PlanetStolen;
  if (!pst || pst.tun !== 28 || pst.lvl !== 0 || pst.end) throw new Error("PlanetStolen stage wrong: " + JSON.stringify(pst));
  console.log("achievements roster OK (" + ACH.length + " originals, PlanetStolen at 8)");
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
  // Continuous (-1..1) framing: the host eases the staged camera, so runs
  // must carry real numbers, and every run must stay in range.
  for (const name of Object.keys(CAMSHOT)) {
    for (const r of CAMSHOT[name]) {
      if (r.length !== 3) throw new Error("bad framing run in " + name + ": " + JSON.stringify(r));
      for (const v of [r[1], r[2]]) {
        if (typeof v !== "number" || !(v >= -1 && v <= 1))
          throw new Error("framing out of range in " + name + ": " + JSON.stringify(r));
      }
    }
  }
  const c0 = CAMSHOT.ComingThrough[0];
  if (Math.abs(c0[1]) > 0.2 || c0[2] < 0.4)
    throw new Error("ComingThrough framing wrong: " + JSON.stringify(c0));
  // every BAKED scene with dialogue carries a timeline, and its segments keep
  // the continuous framing the player eases (custom scenes synthesise one;
  // unvoiced scenes fall back to CAMSHOT)
  const TL = sandbox.STORY_TIMELINE || {};
  for (const name of bakedNames) {
    if (!CUT[name] || !CUT[name].length) continue;
    const tl = TL[name];
    if (!tl || !tl.segs || !tl.segs.length) throw new Error("no timeline for voiced scene " + name);
    for (const s of tl.segs) {
      if (!s.cam || typeof s.cam[0] !== "number" || !(s.cam[0] >= -1 && s.cam[0] <= 1) ||
          typeof s.cam[1] !== "number" || !(s.cam[1] >= -1 && s.cam[1] <= 1))
        throw new Error("bad timeline cam in " + name + ": " + JSON.stringify(s.cam));
      if (!Array.isArray(s.actors)) throw new Error("bad timeline actors in " + name);
    }
    // the scene must place its cast at some point (later keyframes hold it)
    if (!tl.segs.some((s) => s.actors.length))
      throw new Error("timeline never places a cast in " + name);
  }
  console.log(`stage framing OK (${Object.keys(CAMSHOT).length} scenes, continuous camera)`);

  // 3b. props: the ComingThrough map runs its decoded fall — off the wall
  //     (inset), down onto the runner's floor where it parks on one spot —
  //     then is cleared when it is handed back (kind "none", because the
  //     host carries an absent prop forward). Candy's panel, which the bake
  //     never emitted at all, rides its character and is dropped at frame 2.
  const ctP = TL.ComingThrough.segs;
  if (!ctP.some((s) => s.props[0].kind === "map" && s.props[0].inset > 0.5))
    throw new Error("ComingThrough map never floats off the wall");
  const landed = ctP.filter((s) => s.f >= 8 && s.f < 20 && s.props[0].kind === "map");
  if (landed.length < 4) throw new Error("ComingThrough map never lands");
  if (landed.some((s) => s.props[0].inset !== 0)) throw new Error("landed map still floats");
  if (new Set(landed.map((s) => s.props[0].ring + ":" + s.props[0].z)).size !== 1)
    throw new Error("landed map drifts with the runner instead of parking");
  if (ctP[ctP.length - 1].props[0].kind !== "none")
    throw new Error("ComingThrough map is never hidden after the hand-over");
  const cdP = TL.Candy.segs;
  if (!cdP.some((s) => s.props[0].kind === "candy"))
    throw new Error("Candy has no candy panel (Candy.as builds one)");
  if (cdP[cdP.length - 1].props[0].kind !== "none")
    throw new Error("Candy panel is never dropped");
  // BoatRide's only visible prop is the TrainRide balloon; the obfuscated
  // transform the riders are parented to has no model, so no boat/hover prop
  // may be baked — and StopSolvingProblems draws nothing at all.
  const brP = TL.BoatRide.segs;
  if (!brP.some((s) => s.props[0] && s.props[0].kind === "balloon"))
    throw new Error("BoatRide has no balloon prop (its only visible panel)");
  for (const nm of ["BoatRide", "StopSolvingProblems"])
    for (const s of TL[nm].segs)
      if (s.props[0] && (s.props[0].kind === "boat" || s.props[0].kind === "hover"))
        throw new Error(`invented ${s.props[0].kind} prop in ${nm} (src draws none)`);
  if (TL.StopSolvingProblems.segs.some((s) => s.props[0] && s.props[0].kind !== "none"))
    throw new Error("StopSolvingProblems bakes a prop; the src builds none");
  console.log(`prop timelines OK (map falls+parks+clears, candy panel rides + drops, balloon only)`);

  // 4. the staged camera must not punch a hole in the tube wall. A pitched and
  //    ROLLED scene camera (the authored side pan) swings the far wall right
  //    onto the view plane; culling those quads leaves the sky showing as a
  //    strip down the rolled side of the tunnel. Sky is only legitimate at the
  //    vanishing point, so count background pixels off the centre column.
  for (const n of ["run3_sky", "run3_cutscene_backdrop", "run3_cutscene_backdrop_end"])
    if (typeof e[n] !== "function") throw new Error("missing export " + n);
  const CX = W / 2;
  function skyOffCentre() {
    e.render_frame();
    const sky = e.run3_sky();
    const fb = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H);
    let n = 0;
    for (let y = 0; y < H; y++)
      for (let x = 0; x < W; x++)
        if (Math.abs(x - CX) > 150 && fb[y * W + x] === sky) n++;
    return n;
  }
  // the reproduction: a rolled staged camera on a square tunnel
  e.run3_init(4);
  e.run3_seek(0, 0);
  e.run3_cutscene_backdrop(0, 0);
  e.run3_stage_cam(0.9, 0.9);
  e.run3_stage_actor(0, 1, 4, 6, 1);
  for (let i = 0; i < 60; i++) e.run3_step(1 / 60);
  const hole = skyOffCentre();
  if (hole > 50) throw new Error("rolled staged camera shows " + hole + " sky pixels through the wall");
  // every authored scene, at every framing angle, staged where it really plays
  let worst = 0, worstAt = "";
  for (const name of Object.keys(CAMSHOT)) {
    const st = STAGE[name];
    if (!st) continue;
    const lvl = st.end ? e.run3_levels_in(st.tun) - 1 : st.lvl;
    for (const r of CAMSHOT[name]) {
      e.run3_init(5);
      if (st.at === "start") e.run3_cutscene_backdrop(st.tun, lvl);
      else e.run3_cutscene_backdrop_end(st.tun, lvl);
      e.run3_stage_actor(0, 1, 4, 6, 1);
      e.run3_stage_cam(r[1], r[2]);
      for (let i = 0; i < 45; i++) e.run3_step(1 / 60);
      const n = skyOffCentre();
      if (n > worst) { worst = n; worstAt = name; }
    }
  }
  if (worst > 200) throw new Error(`sky through the wall in ${worstAt}: ${worst} px`);
  console.log(`staged wall OK (rolled repro ${hole} px, worst scene ${worst} px)`);

  // 5. only a tunnel-opening scene stages at the level head; a mid-tunnel
  //    scene plays as that checkpoint is completed and an end scene is the end
  //    of the last level, so those stage on the level's TAIL with the camera
  //    angle loaded for that spot.
  let startN = 0, endN = 0;
  for (const name of Object.keys(STAGE)) {
    const st = STAGE[name];
    if (st.at !== "start" && st.at !== "end")
      throw new Error("stage " + name + " has no head/tail marker: " + JSON.stringify(st));
    if (st.at === "start") {
      startN++;
      if (st.lvl !== 0) throw new Error("start scene not at the tunnel opening: " + name);
    } else {
      endN++;
      const lvl = st.end ? e.run3_levels_in(st.tun) - 1 : st.lvl;
      e.run3_init(5);
      e.run3_cutscene_backdrop(st.tun, lvl);
      const head = e.run3_rowf();
      e.run3_init(5);
      e.run3_cutscene_backdrop_end(st.tun, lvl);
      const tail = e.run3_rowf();
      const rows = e.run3_level_rows();
      if (!(tail > head + 10 && tail - head <= rows + 0.01))
        throw new Error(`${name} did not stage on the level tail (head=${head} tail=${tail} rows=${rows})`);
      if (e.run3_state() !== 8) throw new Error(name + " backdrop did not hold a frame");
    }
  }
  if (!startN || !endN) throw new Error(`no head/tail scenes (start=${startN} end=${endN})`);
  console.log(`scene staging OK (${endN} scenes stage on the level tail, ${startN} at an opening)`);

  // 6. THE RUNNER NEVER MOVES ON SCREEN. The camera is bolted to the runner:
  //    its roll is taken from the runner's own wall point, so the runner sits
  //    dead centre at the low third in every level and every cross-section,
  //    and it is the LEVEL that rotates, pans and morphs around them. This is
  //    the property that kills the old "teleport": a level boundary used to
  //    re-derive the camera from the new layout and shove the runner sideways.
  const TAU = Math.PI * 2;
  const wrapPi = (a) => { while (a > Math.PI) a -= TAU; while (a <= -Math.PI) a += TAU; return a; };
  let rolledOnLoad = 0;
  for (const c of [[0, 0], [0, 3], [0, 9], [5, 4], [12, 3], [13, 10], [33, 0], [34, 40]]) {
    e.run3_init(7);
    e.run3_seek(c[0], c[1]);
    if (Math.abs(e.run3_runner_offset()) > 1e-6)
      throw new Error(
        `tun${c[0]} lvl${c[1]}: runner loads ${e.run3_runner_offset()} off centre`);
    if (Math.abs(e.run3_rot()) > 1e-9) rolledOnLoad++;
  }
  if (rolledOnLoad < 4)
    throw new Error("no sampled level needed a non-zero roll \u2014 the check exercises nothing");
  console.log(`level-load camera OK (${rolledOnLoad} sampled levels spawn off "up", runner centred)`);

  // 6b. ...and it stays centred while steering, right through checkpoints. Long
  //     steering runs cross several level boundaries, which each change the
  //     tube's side count, tiles per side and tile width.
  let frames = 0, crossings = 0, worstOff = 0, offAt = "";
  for (const tun of [0, 5, 13, 33, 34]) {
    e.run3_init(7);
    e.run3_seek(tun, 0);
    if (!e.run3_hint_on()) e.run3_hint_toggle();
    let lvl = e.run3_lvl();
    for (let i = 0; i < 1400; i++) {
      /* follow the H route, the only way to actually clear a level */
      let steer = 0;
      const cnt = e.run3_hint_count();
      if (cnt > 0) {
        const N = e.run3_sides() * e.run3_lanes();
        let d = e.run3_hint_ring(cnt > 1 ? 1 : 0) - e.run3_ring();
        while (d > N / 2) d -= N;
        while (d < -N / 2) d += N;
        steer = Math.max(-1, Math.min(1, d * 2));
      }
      e.run3_set_input(steer);
      e.run3_step(1 / 60);
      frames++;
      const off = Math.abs(e.run3_runner_offset());
      if (off > worstOff) {
        worstOff = off;
        offAt = `tun${tun} lvl${e.run3_lvl()} frame${i}`;
      }
      if (e.run3_lvl() !== lvl) { crossings++; lvl = e.run3_lvl(); }
      if (e.run3_state() === 4) break; /* S_DONE: tunnel finished */
    }
  }
  if (worstOff > 1e-5)
    throw new Error(`runner drifted ${worstOff.toExponential(2)} off centre at ${offAt}`);
  if (crossings < 3)
    throw new Error(`only ${crossings} checkpoint crossings \u2014 not exercising a level change`);
  console.log(
    `runner stays centred OK (${frames} frames, ${crossings} checkpoint crossings, worst ${worstOff.toExponential(1)})`);

  // 6c. A cross-section change must not turn the camera at all: the runner's
  //     angular position on the tube is preserved across the boundary, and the
  //     roll depends only on that. So walking the rows either side of a seam
  //     leaves the roll EXACTLY where it was.
  let seams = 0, offenders = 0;
  for (const tun of [0, 5, 13, 33, 34]) {
    for (let lvl = 1; lvl < 4; lvl++) {
      e.run3_init(7);
      e.run3_seek(tun, lvl - 1);
      const spanPrev = e.run3_level_rows();
      e.run3_seek(tun, lvl);
      const head = e.run3_rowf();
      const span = e.run3_level_rows();
      if (spanPrev < 20 || span < 20) continue;
      // the new level's side of the seam: rows head..head+6 blend from half
      // the neighbour back to pure, and the roll must not move
      let a = e.run3_rot_at(head);
      let b = e.run3_rot_at(head + 6);
      if (Math.abs(wrapPi(b - a)) > 1e-6) offenders++;
      // the old level's side, blending forward out of pure
      e.run3_seek(tun, lvl - 1);
      a = e.run3_rot_at(head - 7);
      b = e.run3_rot_at(head - 1);
      if (Math.abs(wrapPi(b - a)) > 1e-6) offenders++;
      seams++;
    }
  }
  if (seams < 6)
    throw new Error(`only ${seams} seams exercised \u2014 the check is not testing enough`);
  if (offenders)
    throw new Error(`${offenders} seams turned the camera during a cross-section change`);
  console.log(`checkpoint seams OK (${seams} seams, camera does not turn at a shape change)`);

  // 6d. THE LEVEL PANS. The camera sits off the tube axis on the runner's own
  //     radial line, so a camera on the axis would rotate the tunnel about the
  //     screen centre and the far end (which is on the axis) would not move at
  //     all. With the offset, steering the other way at the SAME row has to
  //     shift the far end of the tunnel. Compare the top band of two runs that
  //     differ only in steering.
  const shot = () => new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  const runDir = (tun, lvl, dir) => {
    e.run3_init(7);
    e.run3_seek(tun, lvl);
    if (e.run3_hint_on()) e.run3_hint_toggle();
    for (let i = 0; i < 40; i++) { e.run3_set_input(dir); e.run3_step(1 / 60); }
    return { px: shot(), row: e.run3_rowf(), ring: e.run3_ring() };
  };
  let panHits = 0;
  for (const [tun, lvl] of [[0, 0], [5, 3], [13, 2]]) {
    const a = runDir(tun, lvl, 1), b = runDir(tun, lvl, -1);
    if (Math.abs(a.row - b.row) > 0.01)
      throw new Error(`pan check needs equal rows, got ${a.row} vs ${b.row}`);
    if (Math.abs(a.ring - b.ring) < 4)
      throw new Error(`pan check did not move the runner across the tube similar`);
    let diff = 0;
    for (let y = 0; y < 200; y++)
      for (let x = 0; x < W; x++)
        if (a.px[y * W + x] !== b.px[y * W + x]) diff++;
    if (diff > 40000) panHits++;
  }
  if (panHits < 2)
    throw new Error(`only ${panHits}/3 levels panned the far end \u2014 the camera is on the axis`);
  console.log(`camera pans OK (${panHits}/3 levels shifted the tunnel far end when steering)`);

  // 6e. THE SKY IS THE BAKED STAR SPHERE. It is drawn behind the tube from the
  //     original's 6 skybox faces, so where the tunnel opens up (the far end
  //     and any hole) real stars must reach the frame, not a flat colour.
  let lit = 0;
  for (const [tun, lvl] of [[0, 0], [5, 3], [13, 2], [33, 10]]) {
    e.run3_init(7);
    e.run3_seek(tun, lvl);
    for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
    const v = e.run3_sky_visible();
    if (v > 10) lit++;
  }
  if (lit < 2)
    throw new Error(`stars only reached the frame in ${lit}/4 levels \u2014 sky not drawn`);
  console.log(`star sky OK (${lit}/4 levels show baked skybox stars through the tunnel)`);

  // 6f. THE SPACE LAYER: the distant tunnels that branch off and the wormhole
  //     are drawn AFTER the stars and BEFORE the player's own tube, so the
  //     opaque tunnel hides most of them and they read only through its holes
  //     and its far opening. Both halves of that are asserted: the layer must
  //     paint (wrote > 0) and the tube must then cover part of it
  //     (survived < wrote). Equal counts would mean the space scene was drawn
  //     on top of the wall, i.e. the order is wrong.
  let spaceOk = 0, spaceSurv = 0, spaceCovered = 0;
  for (const [tun, lvl] of [[0, 0], [0, 5], [5, 3], [13, 2], [33, 10], [40, 3]]) {
    e.run3_init(7);
    e.run3_seek(tun, lvl);
    for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
    const wrote = e.run3_space_visible(), survived = e.run3_space_survived();
    if (wrote > 200) spaceOk++;
    if (survived > 200) spaceSurv++;
    if (survived < wrote) spaceCovered++;
  }
  if (spaceOk < 4)
    throw new Error(`the space layer only painted in ${spaceOk}/6 levels \u2014 outer tunnels/wormhole not drawn`);
  if (spaceSurv < 4)
    throw new Error(`the space scene only reached the frame in ${spaceSurv}/6 levels \u2014 fully hidden`);
  if (spaceCovered < 4)
    throw new Error(`the tube covered the space scene in only ${spaceCovered}/6 levels \u2014 space drawn over the wall`);
  console.log(`space layer OK (${spaceOk}/6 levels painted, ${spaceSurv}/6 visible, ${spaceCovered}/6 occluded by the tube)`);

  e.run3_init(9);
  e.run3_cutscene_backdrop(0, 9);
  if (e.run3_state() !== 8) throw new Error("cutscene backdrop did not enter S_CUT");
  e.run3_stage_cam(1, 0);
  const camR = e.run3_rot();
  e.run3_stage_cam(-1, 0);
  const camL = e.run3_rot();
  if (Math.abs((camR - camL) + 0.56) > 1e-6)
    throw new Error(`staged camera side dropped (span ${(camR - camL).toFixed(3)}, want -0.56)`);
  console.log("staged camera angle OK (S_CUT applies the authored side pan)");
  console.log("ALL STAGE CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
