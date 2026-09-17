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
  /* entering S_CUT now also switches to the staged camera (on the axis,
     straight down the bore) instead of holding the chase camera, so the diff
     is the WHOLE frame, not just the runner's sprite. 6i pins that camera. */
  if (!(left < W / 2 && right > W / 2))
    throw new Error("staged frame did not change across the view");

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
  // Authored framing in ORIGINAL PIXELS: a run is
  // [frame, x, y, z, rot, zb] - x/y is the camera position the scene set, z is
  // its place along the bore and zb says what z is measured from (0 a bare
  // literal, 1 the level's own endZ, 2 its startZ), rot the authored camera
  // quaternion [x,y,z,w] (null when the frame sets none). The values are raw
  // (the scenes write up to +-488 px of pan), so the SHAPE is checkable here
  // and run3_stage_shot/run3_stage_pos_z do the resolving.
  const ZBASES = new Set([0, 1, 2]);
  for (const name of Object.keys(CAMSHOT)) {
    for (const r of CAMSHOT[name]) {
      if (r.length !== 6) throw new Error("bad framing run in " + name + ": " + JSON.stringify(r));
      for (const v of [r[1], r[2]]) {
        if (typeof v !== "number" || !isFinite(v) || Math.abs(v) > 4000)
          throw new Error("framing out of range in " + name + ": " + JSON.stringify(r));
      }
      if (typeof r[3] !== "number") throw new Error("framing run without depth in " + name);
      if (!ZBASES.has(r[5])) throw new Error("bad camera z base in " + name + ": " + JSON.stringify(r));
      if (r[4] !== null && (!Array.isArray(r[4]) || r[4].length !== 4))
        throw new Error("bad camera quaternion in " + name + ": " + JSON.stringify(r[4]));
    }
  }
  // Candy is the scene whose camera is written in the decompiler's push/pop
  // form (`setPosition(0, 150, endZ - 800)` + setFromEuler). The bake used to
  // miss it entirely, which left the port's fallback camera in place and the
  // angle visibly wrong; it must be recovered, with its z measured from the
  // level's own end (the cutsene fires there) and a real quaternion.
  const candy = CAMSHOT.Candy;
  if (!candy || !candy.length) throw new Error("Candy's authored camera was not extracted");
  const cy = candy[0];
  if (cy[5] !== 1 || Math.abs(cy[3] + 800) > 1 || cy[2] !== 150)
    throw new Error("Candy camera wrong: " + JSON.stringify(cy));
  if (!cy[4] || cy[4].length !== 4)
    throw new Error("Candy camera lost its authored rotation: " + JSON.stringify(cy[4]));
  // ComingThrough frame 0 is the scene's own setup: x stays at the camera's
  // rest pose (2), y is its first raised pan (106) and z is that level's
  // authored place along the bore (4129 px)
  const c0 = CAMSHOT.ComingThrough[0];
  if (Math.abs(c0[1] - 2) > 1 || c0[2] < 50 || c0[3] < 1000)
    throw new Error("ComingThrough framing wrong: " + JSON.stringify(c0));
  // every BAKED scene with dialogue carries a timeline, and its segments keep
  // the continuous framing the player eases (custom scenes synthesise one;
  // unvoiced scenes fall back to CAMSHOT)
  const TL = sandbox.STORY_TIMELINE || {};
  for (const name of bakedNames) {
    if (!CUT[name] || !CUT[name].length) continue;
    const tl = TL[name];
    if (!tl || !tl.segs || !tl.segs.length) throw new Error("no timeline for voiced scene " + name);
    // a segment's cam is [x_px, y_px, z_px] for an authored scene (the pan
    // and the bore slide, in original pixels) and [0,0,0] for one the bake
    // found no camera in — the fallback path takes a normalised side/lift
    for (const s of tl.segs) {
      if (!s.cam || s.cam.length < 2) throw new Error("bad timeline cam in " + name + ": " + JSON.stringify(s.cam));
      for (const v of s.cam) {
        if (typeof v !== "number" || !isFinite(v) || Math.abs(v) > 100000)
          throw new Error("bad timeline cam in " + name + ": " + JSON.stringify(s.cam));
      }
      if (tl.ca && s.cam.length < 4)
        throw new Error("authored scene " + name + " lost its bore z/base: " + JSON.stringify(s.cam));
      if (!Array.isArray(s.actors)) throw new Error("bad timeline actors in " + name);
    }
    // the scene must place its cast at some point (later keyframes hold it)
    if (!tl.segs.some((s) => s.actors.length))
      throw new Error("timeline never places a cast in " + name);
  }
  // cast distance: the original camera sits IN the scene, level with the
  // characters, so a scene's cast must be anchored just in front of the staged
  // camera. Anchoring it rows down the tube drew it at a fraction of the
  // runner's sprite size — the camera read as "too far".
  let nearZ = Infinity;
  for (const name of Object.keys(TL))
    for (const s of TL[name].segs || [])
      for (const a of s.actors || []) if (a.z < nearZ) nearZ = a.z;
  if (!(nearZ <= 2.0))
    throw new Error(`cutscene cast is anchored ${nearZ} rows ahead — camera too far from the scene`);
  console.log(`stage framing OK (${Object.keys(CAMSHOT).length} scenes, continuous camera; cast anchored from ${nearZ} rows)`);

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

  // 6c. THE ROLL IS THE FLAT FACET, IN 360/n STEPS. Away from a seam the
  //     facet under the runner is laid exactly horizontal, so the roll is an
  //     exact multiple of 360/n (90 degrees for a square, 60 for a hexagon)
  //     and the runner is upright. Across a cross-section change the two
  //     quantized angles are blended by the same t the shape morph uses, so
  //     the camera glides between them over the seam instead of stepping.
  let seams = 0, blended = 0, jumped = 0, impure = 0, live = 0, liveJump = 0, crossed = 0;
  for (const tun of [0, 5, 13, 33, 34]) {
    for (let lvl = 1; lvl < 4; lvl++) {
      e.run3_init(7);
      e.run3_seek(tun, lvl - 1);
      const prevStart = e.run3_rowf();
      const spanPrev = e.run3_level_rows();
      const stepPrev = e.run3_roll_step();
      const nP = e.run3_sides(), kP = e.run3_lanes();
      if (spanPrev < 40) continue;
      const bnd = prevStart + spanPrev;
      // off-seam, with the level that OWNS the row active: EXACTLY a facet
      const qp = e.run3_rot_at(bnd - 20) / stepPrev;
      if (Math.abs(qp - Math.round(qp)) > 1e-7) impure++;
      e.run3_seek(tun, lvl);
      const head = e.run3_rowf();
      const span = e.run3_level_rows();
      if (span < 40 || Math.abs(head - bnd) > 1e-6) continue;
      const n = e.run3_sides(), k = e.run3_lanes(), step = e.run3_roll_step();
      const qn = e.run3_rot_at(head + 20) / step;
      if (Math.abs(qn - Math.round(qn)) > 1e-7) impure++;

      // the NEW level's side of the seam — the rows the player actually walks
      // once they cross. It must GLIDE from the blended angle at the boundary
      // onto the pure facet, never by a whole 360/n step in one row.
      let prev = e.run3_rot_at(head), perRow = 0;
      const atBnd = prev;
      for (let r = head + 1; r <= head + 8; r++) {
        const cur = e.run3_rot_at(r);
        const d = Math.abs(wrapPi(cur - prev));
        if (d > perRow) perRow = d;
        prev = cur;
      }
      if (perRow > step * 0.5) jumped++;
      // a cross-section change genuinely blends: the boundary is between facets
      if ((n !== nP || k !== kP) && Math.abs(atBnd / step - Math.round(atBnd / step)) > 1e-6)
        blended++;
      seams++;
    }
  }
  if (seams < 6)
    throw new Error(`only ${seams} seams exercised \u2014 the check is not testing enough`);
  if (impure)
    throw new Error(`${impure} rows away from a seam were not exactly 360/n \u2014 runner not upright`);
  if (jumped)
    throw new Error(`${jumped} seams stepped the roll by a whole facet instead of gliding`);
  if (blended < 3)
    throw new Error(`only ${blended}/${seams} seams blended the roll \u2014 the check exercises nothing`);

  // 6c-ii. In CONTINUOUS play (a real checkpoint crossing, where the runner's
  //        wall is preserved) the live roll must never jump a whole facet in a
  //        frame: it glides. Off-seam it must be exactly upright.
  for (const tun of [0, 5, 13, 33, 34]) {
    e.run3_init(7);
    e.run3_seek(tun, 0);
    if (!e.run3_hint_on()) e.run3_hint_toggle();
    let lastRot = e.run3_rot(), lastLvl = e.run3_lvl(), lastStep = e.run3_roll_step();
    for (let i = 0; i < 2200; i++) {
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
      if (e.run3_state() !== 1) break;
      const rot = e.run3_rot(), step = e.run3_roll_step();
      if (e.run3_lvl() === lastLvl && step === lastStep) {
        /* the engine caps the turn at 6 rad/s, so one frame may never carry a
           whole facet step (the smallest step, 360/32, is 0.196 rad) */
        if (Math.abs(wrapPi(rot - lastRot)) > 0.12) liveJump++;
        live++;
      } else {
        crossed++;
      }
      lastRot = rot; lastLvl = e.run3_lvl(); lastStep = step;
    }
  }
  if (live < 2000)
    throw new Error(`only ${live} live frames sampled \u2014 not exercising a real run`);
  if (liveJump)
    throw new Error(`${liveJump} live frames stepped the roll a whole facet in one frame`);
  console.log(`checkpoint seams OK (${seams} seams glided, ${blended} blended, ` +
    `${crossed} live crossings, ${live} frames under the 6 rad/s turn cap)`);

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
  let spaceOk = 0, spaceSurv = 0, spaceCovered = 0, planetDrawn = 0, planetSurv = 0;
  for (const [tun, lvl] of [[0, 0], [0, 5], [5, 3], [13, 2], [33, 10], [40, 3]]) {
    e.run3_init(7);
    e.run3_seek(tun, lvl);
    for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
    const wrote = e.run3_space_visible(), survived = e.run3_space_survived();
    if (wrote > 200) spaceOk++;
    if (survived > 200) spaceSurv++;
    if (survived < wrote) spaceCovered++;
    /* the planet from the same backdrop class (Planet.as is a vertex-coloured
       disc parented to the TunnelSection) must actually reach the frame */
    const pl = e.run3_space_planet ? e.run3_space_planet() : 0;
    if (pl > 100) planetDrawn++;
    if (wrote > 0 && survived > 0 && pl > 0) planetSurv++;
  }
  if (planetDrawn < 3)
    throw new Error(`the planet only drew in ${planetDrawn}/6 levels \u2014 outer space scene incomplete`);
  if (spaceOk < 4)
    throw new Error(`the space layer only painted in ${spaceOk}/6 levels \u2014 outer tunnels/wormhole not drawn`);
  if (spaceSurv < 4)
    throw new Error(`the space scene only reached the frame in ${spaceSurv}/6 levels \u2014 fully hidden`);
  if (spaceCovered < 4)
    throw new Error(`the tube covered the space scene in only ${spaceCovered}/6 levels \u2014 space drawn over the wall`);
  console.log(`space layer OK (${spaceOk}/6 levels painted, ${spaceSurv}/6 visible, ${spaceCovered}/6 occluded by the tube)`);

  // 6g. A MISSING TILE IS OPEN, NOT A BLACK TILE. A hole (an authored gap or a
  //     crumble tile that already fell) has no collision, so it must not paint
  //     a surface either: the wall row further along, the stars and the space
  //     scene behind it all stay on screen. Hole-rich LIT levels are rendered
  //     and their near-black pixels counted — painting an opaque dark quad per
  //     hole used to put tens of thousands of them in a frame like these.
  const nearBlack = (px) => {
    let n = 0;
    for (let i = 0; i < px.length; i++) {
      const c = px[i];
      if (((c >> 16) & 0xff) < 9 && ((c >> 8) & 0xff) < 11 && (c & 0xff) < 21) n++;
    }
    return n;
  };
  let holeLevels = 0, holeBlackMax = 0;
  for (const [tun, lvl] of [[0, 0], [9, 4], [40, 3]]) {
    e.run3_init(7);
    e.run3_seek(tun, lvl);
    for (let i = 0; i < 30; i++) e.run3_step(1 / 60);
    if (e.run3_theme() === 5) throw new Error(`hole check ${tun}/${lvl} is a low-power tunnel`);
    /* gaps inside the rows drawn ahead, over every side and lane */
    const row = Math.round(e.run3_rowf()), sides = e.run3_sides(), lanes = e.run3_lanes();
    let holes = 0;
    for (let r = 0; r < 28; r++)
      for (let s = 0; s < sides; s++)
        for (let l = 0; l < lanes; l++) if (!e.run3_tile(s, row + r, l)) holes++;
    e.render_frame();
    const black = nearBlack(new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H));
    if (holes > 40) holeLevels++;
    if (black > holeBlackMax) holeBlackMax = black;
  }
  if (holeLevels < 3)
    throw new Error(`only ${holeLevels}/3 levels had gaps in the rows ahead`);
  if (holeBlackMax > 3000)
    throw new Error(`missing tiles painted ${holeBlackMax} near-black px \u2014 holes are not open`);
  console.log(`open tiles OK (${holeLevels}/3 hole-rich lit levels, worst ${holeBlackMax} near-black px)`);

  // 6h. THE CUTSCENE DIALOGUE IS A BUBBLE AT THE LINE'S OWN POSITION. The
  //     engine draws it (the DOM copy is display:none), and each line carries
  //     the authored dialog-unit x/y of the speaker: a line from the left wall
  //     must paint on the left half of the frame and one from the right wall on
  //     the right half. A full-width band would paint both halves equally.
  e.run3_init(9);
  e.run3_cutscene_backdrop(0, 9);
  const put = (ptr, s) => {
    const m = new Uint8Array(e.memory.buffer, ptr, s.length + 1);
    for (let i = 0; i < s.length; i++) m[i] = s.charCodeAt(i) & 0xff;
    m[s.length] = 0;
  };
  const shotWith = (x, y, text) => {
    /* same scene with the overlay off, so the diff is exactly the bubble */
    e.run3_cut_show(0, 120, 0, -1, 0, 0, 0);
    e.render_frame();
    const base = shot();
    put(e.run3_cut_title_buf(), "Coming Through");
    put(e.run3_cut_text_buf(), text);
    e.run3_cut_show(x, y, 0, -1, 1, 3, 1);
    e.render_frame();
    const out = shot();
    let left = 0, right = 0;
    for (let yy = 0; yy < H; yy++)
      for (let xx = 0; xx < W; xx++)
        if (base[yy * W + xx] !== out[yy * W + xx]) (xx < W / 2 ? left++ : right++);
    return { left, right, chars: e.run3_cut_chars(), px: out };
  };
  const LINE = "The map was blank all along - the stars were the only guide.";
  const fromLeft = shotWith(-380, -160, LINE);
  const fromRight = shotWith(380, -160, LINE);
  if (fromLeft.chars < 40 || fromRight.chars < 40)
    throw new Error(`cutscene bubble drew ${fromLeft.chars}/${fromRight.chars} characters`);
  if (fromLeft.left < 4000 || fromLeft.left < fromLeft.right * 2)
    throw new Error(`left-spoken line painted L=${fromLeft.left} R=${fromLeft.right}`);
  if (fromRight.right < 4000 || fromRight.right < fromRight.left * 2)
    throw new Error(`right-spoken line painted L=${fromRight.right} R=${fromRight.left}`);
  console.log(`cutscene bubbles OK (x=-380 -> ${fromLeft.left}L/${fromLeft.right}R, ` +
              `x=+380 -> ${fromRight.left}L/${fromRight.right}R px)`);
  const before = shot();
  e.run3_cut_show(0, 120, 0, -1, 1, 3, 1);
  e.render_frame();
  const cutChars = e.run3_cut_chars();
  const afterCut = shot();
  let cutLit = 0;
  for (let y = Math.floor(H * 0.55); y < H; y++)
    for (let x = 0; x < W; x++)
      if (before[y * W + x] !== afterCut[y * W + x]) cutLit++;
  if (cutChars < 40)
    throw new Error(`cutscene overlay drew only ${cutChars} characters`);
  if (cutLit < 4000)
    throw new Error(`cutscene dialogue band only changed ${cutLit} px`);
  e.run3_cut_show(0, 120, 0, -1, 0, 0, 0);
  console.log(`cutscene overlay OK (engine drew ${cutChars} chars, ${cutLit} px in the dialogue band)`);

  // 6i. THE STAGED CAMERA IS A FREE POSITION ON THE TUNNEL AXIS, LOOKING
  //     STRAIGHT DOWN THE BORE. The original's cutscene camera is an
  //     unparented Transform whose rest position is on the axis (x=2, y=0),
  //     and each scene frame moves it to an authored (x, y) in world axes — so
  //     the port must place it there, NOT on the gameplay chase camera's spot
  //     (a facet apothem up the runner's wall) and NOT pitched down to pin the
  //     runner. The authored side/lift move the camera through the held
  //     tunnel: the tunnel's own roll must not change and the runner's screen
  //     spot must shift the other way, full scale for a full authored unit.
  e.run3_init(9);
  e.run3_cutscene_backdrop(0, 9);
  if (e.run3_state() !== 8) throw new Error("cutscene backdrop did not enter S_CUT");
  const SP = e.run3_scratch();
  const padFrame = (side, lift) => {
    e.run3_stage_cam(side, lift);
    e.render_frame();
    /* read the pitch the frame actually rendered with: run3_runner_screen
       re-derives the chase pitch for its own projection */
    const pitch = e.run3_cam_pitch();
    e.run3_runner_screen(SP, SP + 8);
    const f = new Float64Array(e.memory.buffer, SP, 32);
    return { px: shot(), x: f[0], y: f[1], roll: e.run3_rot(),
             camx: e.run3_cam_x(), camy: e.run3_cam_y(), pitch: pitch };
  };
  {
    /* zero authored offset -> the camera is exactly on the axis (a chase
       camera bolted to the runner would sit ~0.35 apothem below it), and its
       view has no pitch (the chase camera pitched ~-0.22 rad) */
    const mid = padFrame(0, 0);
    if (Math.abs(mid.camx) > 1e-9 || Math.abs(mid.camy) > 1e-9)
      throw new Error(`staged camera is not on the axis (${mid.camx.toFixed(3)}, ${mid.camy.toFixed(3)})`);
    if (Math.abs(mid.pitch) > 1e-9)
      throw new Error(`staged camera pitched the held tunnel (${mid.pitch.toFixed(3)} rad)`);
    if (Math.abs(mid.camy - e.run3_runner_world_y()) < 0.5)
      throw new Error("staged camera still rides the runner's wall (camera y == runner wall y)");
  }
  const countDiff = (a, b) => {
    let n = 0;
    for (let i = 0; i < W * H; i++) if (a[i] !== b[i]) n++;
    return n;
  };
  const camMid = padFrame(0, 0);
  const camLeft = padFrame(-1, 0);
  const camRight = padFrame(1, 0);
  const camUp = padFrame(0, 1);
  const camDown = padFrame(0, -1);
  for (const [name, f] of [["side +1", camRight], ["side -1", camLeft],
                           ["lift +1", camUp], ["lift -1", camDown]])
    if (Math.abs(f.roll - camMid.roll) > 1e-9)
      throw new Error(`staged ${name} rolled the held tunnel (${camMid.roll.toFixed(3)} -> ${f.roll.toFixed(3)})`);
  /* The authored offsets are a POSITION in the level's own world axes, and
     the port emulates the camera roll by rotating the level — so the offset
     must be rolled by the held frame's G.rot, and the authored `lift` (whose
     +y runs along GRAVITY, i.e. toward the floor side) must be negated first,
     because the port's tube space has the runner's floor at -y. Pin the whole
     model, not just a direction: apo = cam_back (CAM_BACK_STAGE = 1.0). */
  const apo = e.run3_cam_back();
  const rc = Math.cos(camMid.roll), rs = Math.sin(camMid.roll);
  for (const [side, lift, f, name] of [[-1, 0, camLeft, "side -1"],
                                       [1, 0, camRight, "side +1"],
                                       [0, 1, camUp, "lift +1"],
                                       [0, -1, camDown, "lift -1"]]) {
    const ox = side * apo, oy = -lift * apo;
    const ex = ox * rc - oy * rs, ey = ox * rs + oy * rc;
    /* the port's own ssin/scos are approximations, so compare RELATIVE to the
       magnitude (the check must not get tighter just because the world unit
       changed) */
    const tol = 1e-6 * (1 + Math.abs(ex) + Math.abs(ey));
    if (Math.abs(f.camx - ex) > tol || Math.abs(f.camy - ey) > tol)
      throw new Error(`staged ${name} camera is not the authored world offset ` +
        `(got ${f.camx.toFixed(6)},${f.camy.toFixed(6)}, want ${ex.toFixed(6)},${ey.toFixed(6)})`);
  }
  if (Math.abs(apo) < 0.2)
    throw new Error(`staged pan is not full scale (apothem ${apo.toFixed(3)})`);
  if (!((camRight.x - camMid.x) * (camLeft.x - camMid.x) < 0 &&
        Math.abs(camRight.x - camMid.x) > 40))
    throw new Error(`staged side pan does not move the tunnel (x ${camLeft.x.toFixed(1)} / ${camMid.x.toFixed(1)} / ${camRight.x.toFixed(1)})`);
  if (!((camUp.y - camMid.y) * (camDown.y - camMid.y) < 0 &&
        Math.abs(camUp.y - camMid.y) > 40))
    throw new Error(`staged lift pan does not move the tunnel (y ${camUp.y.toFixed(1)} / ${camMid.y.toFixed(1)} / ${camDown.y.toFixed(1)})`);
  const panL = countDiff(camMid.px, camLeft.px), panR = countDiff(camMid.px, camRight.px);
  if (panL < 40000 || panR < 40000)
    throw new Error(`staged pan is barely visible (L=${panL} R=${panR} px)`);
  console.log(`staged camera OK (axis base, pitch ${camMid.pitch.toFixed(3)}; roll held at ` +
              `${camMid.roll.toFixed(3)}; x ` +
              `${camLeft.x.toFixed(0)}/${camMid.x.toFixed(0)}/${camRight.x.toFixed(0)}, y ` +
              `${camUp.y.toFixed(0)}/${camMid.y.toFixed(0)}/${camDown.y.toFixed(0)})`);
  e.run3_stage_cam(0, 0);

  // 6i1. THE STAGED CAST IS THE RUNNER'S OWN SIZE, SEEN FROM ONE TUBE RADIUS.
  //      A cutscene is not a different world scale: the camera's PLACE is
  //      authored, so a character must read against the tunnel exactly as the
  //      runner does on the track. Casting it at the staged camera's nominal
  //      depth instead (cam_back = 1.0 apothem) shrank every cutscene character
  //      to a speck, and taking the authored position.z as the camera-to-cast
  //      distance did the same — the z is an absolute section-chain coordinate
  //      while the cast's rows are level-local. The shot distance is one
  //      apothem, which is what the original's own character size implies (a
  //      sprite is drawn at its natural 25 px on a 600 px stage at dd = R).
  if (typeof e.run3_cast_ref !== "function" || typeof e.run3_stage_shot !== "function")
    throw new Error("staged cast scale/dolly exports missing");
  e.run3_init(3);
  e.run3_seek(0, 9);
  e.run3_cutscene_backdrop(0, 9);
  const shotApo = e.run3_cam_back(); /* fallback staging uses CAM_BACK_STAGE=1.0 */
  if (typeof e.run3_stage_dist !== "function")
    throw new Error("run3_stage_dist export missing");
  const snapPx = () => new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  /* stage one cast member at zrow, with the authored camera expressed in the
     level's own coordinates (zb 1 = `endZ + z`, the form Candy uses) */
  const castBox = (zb, z, frontRow, zrow, ring) => {
    e.run3_stage_shot(z, zb, frontRow);
    e.run3_stage_camera(2, 0, z, 0, 0, 0, 1);
    e.run3_stage_actor(0, 0, ring === undefined ? 4 : ring, zrow, 1);
    e.render_frame();
    const on = snapPx();
    e.run3_stage_actor(0, 0, ring === undefined ? 4 : ring, zrow, 0);
    e.render_frame();
    const off = snapPx();
    let x0 = 1e9, y0 = 1e9, x1 = -1, y1 = -1, n = 0;
    for (let y = 0; y < H; y++) for (let x = 0; x < W; x++) {
      const i = y * W + x;
      if (on[i] !== off[i]) { n++; if (x < x0) x0 = x; if (x > x1) x1 = x; if (y < y0) y0 = y; if (y > y1) y1 = y; }
    }
    return { n, w: x1 - x0 + 1, h: y1 - y0 + 1, cx: (x0 + x1) / 2,
             cy: (y0 + y1) / 2, by: y1,
             depth: e.run3_stage_pos_z(), dist: e.run3_stage_dist() };
  };
  /* The AUTHORED frame carries the cross-section quarter turn. The port's own
     frame puts side s's midpoint at `-PI/2 + TAU*s/n` while the original's
     layout angle origin is the +x axis (`GridLayout3D` places side s by
     rotating the identity orientation by `TAU*s/n`), so under an identity
     authored camera side 0 must sit to the RIGHT of the bore axis.

     Which way the quarter turn then goes is fixed by the original's own screen
     map, and it is a DOWNWARD turn. `Scene3D.project` applies
     `perspectiveFieldOfViewLH(fovY, width/height, 15, 3000)` with
     `appendScale(1,-1,1)` on top, and `StageActor.getBounds` converts NDC with
     `((ndc.x+1)/2*W, (1-ndc.y)/2*H)`. Expanded (see render.c's proj):

       sx = W/2 + vx*FOCAL/vz      sy = H/2 + vy*FOCAL/vz

     so the original's view +y runs DOWN the screen. Side 4's midpoint is a
     quarter turn from side 0's, i.e. along the original's +y, so under the
     quarter turn alone it would land BELOW the axis. Reading it as "above"
     (the port's own +y-up screen) is a vertical mirror of the frame, and a
     mirror reverses every rotation - which is what made a scene that rolled
     its camera about the bore come out rolling the other way. Gameplay cannot
     see this gauge (turning the world and the camera by the same constant is
     the same picture), which is why only the authored path needs it.

     On top of that quarter turn the frame is rolled a HALF TURN about the
     bore, so the pair comes out 180 degrees from the description above: side 0
     to the LEFT, side 4 quarter-turned UP. Both are the same rotation, so the
     two radii stay equal - the assertion below is what tells a rollout apart
     from a mirror. */
  const b0 = castBox(1, -800, 0, 1.0, 0.5);      /* side 0's midpoint */
  const b4 = castBox(1, -800, 0, 1.0, 4.5);      /* side 4, a quarter turn on */
  const b8 = castBox(1, -800, 0, 1.0, 8.5);      /* side 8, opposite side 0 */
  const b12 = castBox(1, -800, 0, 1.0, 12.5);    /* side 12, opposite side 4 */
  {
    if (b0.n === 0 || b4.n === 0 || b8.n === 0 || b12.n === 0)
      throw new Error("the quarter-turn probe drew nothing");
    /* A staged sprite is TILTED with the level (its up is the actor's own,
       `StageActor.updateBillboard`), so its drawn box sits a constant offset
       from the ring point it is anchored to - the same offset for every member
       of a scene. The midpoint of two OPPOSITE sides cancels it and recovers
       the ring point itself, which is the geometry under test. */
    const ringPt = (a, b) => ({ x: (a.cx - b.cx) / 2, y: (a.cy - b.cy) / 2 });
    const r0 = ringPt(b0, b8), r4 = ringPt(b4, b12);
    const R = Math.hypot(r0.x, r0.y);
    if (typeof b0.cy !== "number") throw new Error("castBox must report the box centre");
    /* STAGE_GAUGE is that quarter turn PLUS the half turn the scenes are
       presented with, so the quarter turn shows up as an exact 180-degree
       rotation of the pair: side 0 sits half a turn from the +x axis (to the
       LEFT) and side 4 a quarter turn ABOVE it. The two radii still have to
       match, which is what proves the frame was ROTATED and not mirrored. */
    if (!(r0.x < -0.5 * R) || !(Math.abs(r0.y) < 0.25 * R))
      throw new Error(`side 0 is not half a turn from the +x axis (${r0.x.toFixed(0)},${r0.y.toFixed(0)}); the staged view is not a clean 180-degree rollout`);
    if (!(r4.y < -0.5 * R) || !(Math.abs(r4.x) < 0.25 * R))
      throw new Error(`side 4 is not a quarter turn ABOVE the axis (${r4.x.toFixed(0)},${r4.y.toFixed(0)}); the staged view lost its quarter turn or came out mirrored`);
    if (Math.abs(Math.hypot(r4.x, r4.y) - R) > 0.15 * R)
      throw new Error(`the two sides are not the same radius (${R.toFixed(0)} vs ${Math.hypot(r4.x, r4.y).toFixed(0)})`);
    console.log(`staged cross-section OK (side 0 at (${r0.x.toFixed(0)},${r0.y.toFixed(0)}), ` +
                `a quarter turn UP to side 4 at (${r4.x.toFixed(0)},${r4.y.toFixed(0)}); ` +
                `a clean 180-degree rollout, both radii ${R.toFixed(0)}px)`);
  }
  if (!(e.run3_cast_ref() > shotApo))
    throw new Error(`cast scale reference ${e.run3_cast_ref().toFixed(2)} is not the runner's own plane (${shotApo.toFixed(2)})`);
  /* the endZ form resolves EXACTLY: `endZ - 800` with the front cast on row 0
     is 800 world pixels ahead of it (the level's own length cancels). The
     engine's unit IS the original's world pixel, so this is the authored
     number verbatim. */
  const candyShot = castBox(1, -800, 0, 1.0);
  if (!(Math.abs(candyShot.dist - 800.0) < 1e-6))
    throw new Error(`endZ camera resolved to ${candyShot.dist.toFixed(3)} units, not 800`);
  /* THE CAST'S OWN SIZE, taken from the original rather than invented: a
     staged actor is an ordinary spritesheet whose quad the original builds at
     `frame.w * 0.45681063122923593` world px (`StageActor`'s own constant), and
     a world px IS the engine's unit (render.c's stage_sprite_h). So the drawn
     height is FOCAL * (frame.h * 0.45681063122923593) / shot, with the
     frame being the ANIMATION FRAME the art is showing — the baked art's
     frames are 58..92 px tall, which bounds the expectation. Nothing rescales
     a cutscene character: its place is authored, its size is the game's. */
  const FOCAL = H * 0.5 / 0.7265425280053609;   /* H / (2 tan(FOVY/2)) */
  const SPRITE_SCALE = 0.45681063122923593, PX_UNITS = 1.0;
  const castH = (fh, dist) => FOCAL * fh * SPRITE_SCALE * PX_UNITS / dist;
  if (candyShot.n === 0) throw new Error("staged cast drew nothing at the authored camera");
  const lo = castH(58, candyShot.dist), hi = castH(92, candyShot.dist);
  if (!(candyShot.h >= 0.8 * lo && candyShot.h <= 1.25 * hi))
    throw new Error(`staged cast is ${candyShot.h}px; the original's own frame size ` +
                    `puts it in ${lo.toFixed(0)}..${hi.toFixed(0)}px at ${candyShot.dist} units`);
  /* the perspective is the camera's own: a member further down the cast is
     smaller, and the falloff is the shot depth's own */
  const farCast = castBox(1, -800, 0, 2.0);
  if (!(farCast.h < candyShot.h && farCast.h > 0.55 * candyShot.h))
    throw new Error(`cast depth scale wrong (${candyShot.h} -> ${farCast.h} px one row apart)`);
  /* the authored z is the DOLLY: +80 px brings the camera 0.8 units closer,
     which is what the source's own `translate(0, 0, 80)` does, and the cast
     grows with it because its size IS the perspective — nothing holds it */
  const pushed = castBox(1, -720, 0, 1.0);
  if (!(Math.abs(pushed.dist - (candyShot.dist - 80.0)) < 1e-6))
    throw new Error(`authored dolly moved the camera to ${pushed.dist.toFixed(2)}, not ${(candyShot.dist - 80.0).toFixed(2)}`);
  /* the SAME member from the dollied camera: the two shots differ only in the
     camera's depth (8.0 vs 7.2 units), so the sprite sizes differ by exactly
     that ratio — the perspective IS the cast's size, nothing pins it */
  const wantScale = candyShot.dist / pushed.dist;
  if (!(Math.abs(pushed.h / candyShot.h / wantScale - 1) < 0.12))
    throw new Error(`the authored dolly did not scale the cast with the shot ` +
                    `(${candyShot.h}px at ${candyShot.dist}u -> ${pushed.h}px at ${pushed.dist}u, ` +
                    `want ${wantScale.toFixed(2)}x)`);
  /* A SHORT AUTHORED SHOT IS USED AS IT IS. The port does not back the camera
     off the wall and does not re-place the cast: `z = -100` px with the front
     cast on row 0 is a one-unit shot, and one unit of depth leaves the wall
     (a tube radius off the axis) outside the 72-degree field of view, so the
     cast really does land past the frame's edge — exactly what the original
     would draw. A floor here (about 1.4 apothems, R / tan(fov/2)) was the
     port's own invention, and it is gone. */
  const wall = castBox(1, -100, 0, 1.0, 4.5);
  if (!(Math.abs(wall.dist - 100.0) < 1e-6))
    throw new Error(`a short authored shot was not used as it is ` +
                    `(${wall.dist.toFixed(2)} units, not 100.00)`);
  console.log(`staged cast OK (${candyShot.h.toFixed(0)}px front cast from the original's own ` +
              `frame size at ${candyShot.dist.toFixed(1)}px, ${pushed.h.toFixed(0)}px at the 80px dolly, ` +
              `short shots used as ${wall.dist.toFixed(1)}px)`);
  e.run3_stage_actor(0, 0, 4, 1.0, 0);
  e.run3_stage_cam(0, 0);

  // 6i1b. THE AUTHORED ROTATION IS APPLIED EXACTLY: the whole frame turns
  //       ABOUT the bore, it does not tilt ACROSS it. The baked quaternions
  //       mix a roll about the bore with a small tilt of it, and the bake
  //       builds them as Rx*Ry*Rz (bake_cutscenes.euler_quat), so reading the
  //       Euler components back by NAME and applying each about a different
  //       axis (x as the view roll's axis, y about x, z about y) turned a
  //       scene's roll into a tilt of the tunnel — exactly the "tilt along
  //       the tunnel axis" bug. The staged view now applies R^-1 as one
  //       quaternion turn (the original's own rotateVector), so:
  //         * a pure roll psi moves every projected point exactly like a
  //           rotation of psi about the bore's own screen point (CX, CY), and
  //         * it carries the CAST with it: the original's billboards take
  //           their up axis from the actor, never from the camera
  //           (StageActor.updateBillboard), so a rolled frame tilts them.
  e.run3_init(3);
  e.run3_seek(0, 9);
  e.run3_cutscene_backdrop(0, 9);
  const rollQ = (deg) => {
    const a = deg * Math.PI / 180;
    return [0, 0, Math.sin(a / 2), Math.cos(a / 2)];
  };
  /* one cast member alone, so its pixels are all that changes */
  const measure = (deg, ring) => {
    e.run3_stage_shot(-800, 1, 0);
    e.run3_stage_camera(2, 0, -800, ...rollQ(deg));
    e.run3_stage_actor(0, 0, ring, 1.0, 1);
    e.render_frame();
    const on = snapPx();
    e.run3_stage_actor(0, 0, ring, 1.0, 0);
    e.render_frame();
    const off = snapPx();
    let sx = 0, sy = 0, n = 0, x0 = 1e9, y0 = 1e9, x1 = -1, y1 = -1;
    for (let y = 0; y < H; y++) for (let x = 0; x < W; x++) {
      const i = y * W + x;
      if (on[i] !== off[i]) {
        sx += x; sy += y; n++;
        if (x < x0) x0 = x; if (x > x1) x1 = x;
        if (y < y0) y0 = y; if (y > y1) y1 = y;
      }
    }
    return { n, cx: sx / Math.max(1, n), cy: sy / Math.max(1, n), x0, y0, x1, y1 };
  };
  /* a staged frame's screen centre is EXACTLY (W/2, H/2): the original's
     `StageActor.getBounds` maps NDC with `((x+1)/2*W, (1-y)/2*H)`, so the bore's
     vanishing point sits at the bitmap's centre. The gameplay (CX, CY) nudge has
     no counterpart in the original and must not be used here. */
  const BORE_X = W / 2, BORE_Y = H / 2;
  let rollWorst = 0, rollWorstAt = "";
  for (const ring of [12, 4, 0.5]) {
    const base = measure(0, ring);
    if (!base.n) throw new Error(`the roll probe drew nothing on ring ${ring}`);
    /* with no roll the sprite's feet anchor is (bbox centre x, bbox bottom),
       which pins its centroid in sprite-local pixels */
    const ax0 = (base.x0 + base.x1) / 2, ay0 = base.y1;
    const lcx = base.cx - ax0, lcy = base.cy - ay0;
    for (const deg of [15, 30, 45, 90]) {
      const m = measure(deg, ring);
      if (!m.n) throw new Error(`a ${deg}deg authored roll drew nothing on ring ${ring}`);
      /* THE ORIGINAL'S SCREEN Y IS DOWN. `StageActor.getBounds` turns NDC into
         pixels with `((x + 1) / 2 * W, (1 - y) / 2 * H)` and the projection
         carries `appendScale(1, -1, 1)`, so an authored roll of +psi about the
         bore appears as a rotation of -psi in pixel coordinates. Everything
         below is therefore written with R(-psi) (the sign of the sine term
         flipped against the old, mirrored view). */
      const a = deg * Math.PI / 180, c = Math.cos(a), s = Math.sin(a);
      /* undo the sprite's own rotation to recover where it stands */
      const ax = m.cx - (c * lcx + s * lcy);
      const ay = m.cy - (-s * lcx + c * lcy);
      /* the world turns about the bore by -deg (pixel coords) */
      const ex = BORE_X + (ax0 - BORE_X) * c + (ay0 - BORE_Y) * s;
      const ey = BORE_Y - (ax0 - BORE_X) * s + (ay0 - BORE_Y) * c;
      const off = Math.hypot(ax - ex, ay - ey);
      if (off > rollWorst) { rollWorst = off; rollWorstAt = `ring ${ring} at ${deg}deg`; }
    }
  }
  /* the tolerance is the pixel quantisation of a ROTATED sprite's centroid
     (a fraction of a pixel, measured off a 175px sprite); a view that tilted
     the tunnel instead of rolling it misses by tens of pixels */
  if (!(rollWorst < 4.0))
    throw new Error(`a pure authored roll did not turn the cast about the bore: ` +
                    `${rollWorstAt} is ${rollWorst.toFixed(2)}px off the rotated place ` +
                    `(the view is tilting the tunnel instead of rolling it)`);
  /* …and the whole frame turns with it, not just the cast: with a pure roll
     every pixel must be the identity frame's pixel, rotated about the bore */
  const fullFrame = (deg) => {
    e.run3_init(3);
    e.run3_seek(0, 9);
    e.run3_cutscene_backdrop(0, 9);
    e.run3_stage_shot(-800, 1, 0);
    e.run3_stage_camera(2, 0, -800, ...rollQ(deg));
    [0.5, 4, 8, 12].forEach((r, i) => e.run3_stage_actor(i, 0, r, 1.0, 1));
    e.render_frame();
    return snapPx();
  };
  const ident = fullFrame(0);
  const nearPx = (p, q) =>
    Math.abs(((p >> 16) & 255) - ((q >> 16) & 255)) <= 24 &&
    Math.abs(((p >> 8) & 255) - ((q >> 8) & 255)) <= 24 &&
    Math.abs((p & 255) - (q & 255)) <= 24;
  let rigid = 0, rigidN = 0;
  for (const deg of [30, 90]) {
    const moved = fullFrame(deg);
    const a = deg * Math.PI / 180, c = Math.cos(a), s = Math.sin(a);
    let n = 0, bad = 0;
    for (let y = 0; y < H; y++) for (let x = 0; x < W; x++) {
      const i = y * W + x;
      if (moved[i] === ident[i]) continue;      /* the roll did not touch it */
      const rx = x - BORE_X, ry = y - BORE_Y;
      const sx = Math.round(BORE_X + rx * c - ry * s);
      const sy = Math.round(BORE_Y + rx * s + ry * c);
      /* a frame corner rotates past the bitmap, where there is no identity
         pixel to compare against — skip those rather than calling them bad */
      if (sx < 0 || sx >= W || sy < 0 || sy >= H) continue;
      n++;
      if (!nearPx(moved[i], ident[sy * W + sx])) bad++;
    }
    rigidN += n; rigid += bad;
  }
  if (!(rigidN > 20000) || rigid > 0.10 * rigidN)
    throw new Error(`a pure authored roll is not a rigid turn of the frame: ` +
                    `${rigid} of ${rigidN} moved pixels differ from the rotated likeness`);
  console.log(`staged roll OK (cast follows the bore to ${rollWorst.toFixed(2)}px at 15/30/45/90deg, ` +
              `${(100 * rigid / rigidN).toFixed(1)}% of the frame's moved pixels off a rigid turn)`);
  [0, 1, 2, 3].forEach((i) => e.run3_stage_actor(i, 0, 4, 6, 0));
  e.run3_stage_cam(0, 0);

  // 6i2. LAST CHECKPOINT OF A TUNNEL. A scene staged as its checkpoint is
  //      completed sits the camera on the level's finish row. Whether that is
  //      looking at real tunnel or at the solid fill depends on the level's
  //      AUTHORED length: a level carrying a result-win trigger runs on past
  //      its finish (the Low-Power Tunnel's glowing wedge narrows right to the
  //      end; home 1's corridor runs on), so the rows ahead are its own and no
  //      back-off is wanted. Only when the finish IS the authored end - and
  //      the tunnel has no next level whose bitmap is drawn ahead - is there
  //      nothing to look at, and the camera must back off the tail.
  const stageEnd = (tun, lvl) => {
    e.run3_init(3);
    e.run3_seek(tun, lvl);
    const rowStart = e.run3_rowf();
    const finish = rowStart + e.run3_level_rows();
    const authored = rowStart + e.run3_level_authored_rows();
    return { finish, authored };
  };
  const BACKOFF = 16;
  let backedOff = 0, onReal = 0, onNext = 0;
  for (const tun of [2, 1, 0]) {
    /* the tunnel's last level is the one with nothing after it, and a last
       level whose finish IS its authored end is the only blank-wall case */
    const lvl = e.run3_levels_in(tun) - 1;
    const isLast = true;
    const { finish, authored } = stageEnd(tun, lvl);
    e.run3_cutscene_backdrop_end(tun, lvl);
    const row = e.run3_rowf();
    const rowsAhead = authored - finish;
    if (rowsAhead > 1) {
      /* the finish sits inside the level's own terrain: its rows are the view */
      if (!(row > finish - 2))
        throw new Error(`finish row of ${tun}/${lvl} runs on for ` +
                        `${rowsAhead.toFixed(0)} rows but the scene backed off to ` +
                        `${row.toFixed(1)} of ${finish}`);
      onReal++;
    } else if (!isLast) {
      onNext++;
    } else {
      if (!(row <= finish - BACKOFF + 2))
        throw new Error(`last-checkpoint scene at ${tun}/${lvl} staged at ` +
                        `${row.toFixed(1)} of tail ${finish} with only ` +
                        `${rowsAhead.toFixed(0)} rows of its own ahead ` +
                        `(should back off ${BACKOFF})`);
      backedOff++;
    }
  }
  /* a mid checkpoint stages on its finish: the next level's bitmap is ahead */
  {
    const { finish } = stageEnd(1, 5);
    e.run3_cutscene_backdrop_end(1, 5);
    if (!(e.run3_rowf() > finish - 2))
      throw new Error("checkpoint with a next level did not stage on its tail");
    onNext++;
  }
  if (!backedOff)
    throw new Error("no staged scene exercised the tail back-off");
  console.log(`last-checkpoint staging OK (${onReal} ran on their own authored rows, ` +
              `${onNext} had a next level drawn ahead, ${backedOff} backed off the tail)`);

  // 6j. GLOWING TILES STAY LIT IN THE DARK. The Low-Power Tunnel finishes on a
  //     strip of glowing tiles (a `~glow` terrain layer baked next to the
  //     crumbling one). They are ordinary solid tiles whose surface IS the
  //     tunnel's light, so they must stay lit with the power at 0. The
  //     original's own recipe for their colour is the level tint interpolated
  //     20% toward 0xDDDDDD (`"glow" -> Color.interpolate(colour, 14540253,
  //     0.2)` in the tile table) — a LIGHT, near-neutral tile, not the gold
  //     panel the port used to draw, so count lit-and-neutral pixels.
  const bright = (px) => {
    let n = 0;
    for (let i = 0; i < px.length; i++) {
      const c = px[i], r = (c >> 16) & 0xff, g = (c >> 8) & 0xff, b = c & 0xff;
      const lo = Math.min(r, g, b);
      if (lo >= 45 && Math.abs(r - b) < 90) n++;
    }
    return n;
  };
  const glowScan = (lvl) => {
    e.run3_init(7);
    e.run3_seek(13, lvl);
    const base = e.run3_row(), sides = e.run3_sides(), lanes = e.run3_lanes();
    let n = 0, solid = 0;
    for (let r = 0; r < 150; r++)
      for (let s = 0; s < sides; s++)
        for (let l = 0; l < lanes; l++)
          if (e.run3_tile_glow(s, base + r, l)) { n++; if (e.run3_tile(s, base + r, l)) solid++; }
    return { n, solid };
  };
  const tail = glowScan(24); /* the Low-Power Tunnel's last level (part 25) */
  if (tail.n < 8) throw new Error(`the last low-power level lost its glow strip (${tail.n} tiles)`);
  if (tail.solid !== tail.n) throw new Error(`glow tiles are not solid (${tail.solid}/${tail.n})`);
  /* level 5 of the same (dark) tunnel has its glow strip in view from the
     level head, so the lit surface can be counted straight off a frame */
  const gLit = glowScan(5), gNone = glowScan(17);
  if (gLit.n < 40) throw new Error(`expected a glow strip in low-power lvl 5, got ${gLit.n}`);
  e.run3_init(7);
  e.run3_cutscene_backdrop(13, 5);
  if (e.run3_power() > 0.2) throw new Error("the glow check needs the tunnel dark");
  e.render_frame();
  const litPx = bright(shot());
  e.run3_init(7);
  e.run3_cutscene_backdrop(13, 17);
  e.render_frame();
  const nonePx = bright(shot());
  if (gNone.n !== 0) throw new Error(`level 17 should have no glow tiles, got ${gNone.n}`);
  if (litPx < 1000 || litPx < nonePx + 1000)
    throw new Error(`glow strip did not light the dark tunnel (${litPx} bright px vs ${nonePx} without)`);
  console.log(`glowing tiles OK (last level ${tail.n} solid glow tiles; lvl 5 lights ` +
              `${litPx} bright px at power ${e.run3_power().toFixed(2)}, a no-glow level paints ${nonePx})`);
  e.run3_set_input(0);
  console.log("ALL STAGE CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
