/*
 * verify_cam - the camera contract (camera-spec.md).
 *
 * The camera is bolted to the runner: the roll is quantized to the flat facet
 * under them (an exact multiple of 360/n), the camera is panned laterally onto
 * their spot, and it rises with their jump. So:
 *   1. away from a seam the roll is EXACTLY 360/n * side    (runner upright)
 *   2. the runner is centred at the low third in every state (never moves)
 *   3. the tunnel PANS: the runner's rolled x (and the camera's) sweeps the
 *      whole chord, and is not 0 (a camera on the axis would give 0)
 *   4. a jump moves the runner in world space only: screen position frozen,
 *      camera + tunnel move instead
 *   5. the roll is frozen while airborne and glides (never steps) on landing
 *   6. the camera's distance is keyed to the facet apothem, so the framing is
 *      identical at a side's midpoint and at its corner
 */
const fs = require("fs");
(async () => {
  const { instance } = await WebAssembly.instantiate(fs.readFileSync("run3.wasm"), {});
  const e = instance.exports;
  const W = e.run3_width(), H = e.run3_height();
  const CX = W / 2, ROW = 2 * H / 3;
  const TAU = Math.PI * 2;
  const wrapPi = (a) => { while (a > Math.PI) a -= TAU; while (a <= -Math.PI) a += TAU; return a; };
  const SP = e.run3_scratch();
  const screen = () => {
    e.run3_runner_screen(SP, SP + 8);
    const f = new Float64Array(e.memory.buffer, SP, 32);
    return [f[0], f[1]];
  };
  const approx = (a, b, eps) => Math.abs(a - b) < eps;
  let checks = 0;

  const cases = [[0, 0], [0, 3], [0, 9], [5, 3], [5, 4], [12, 3], [13, 2], [13, 10],
                 [33, 0], [34, 40], [40, 3], [41, 5]];

  // 1. OFF-SEAM THE ROLL IS AN EXACT FACET ANGLE — 360/n, so 90 deg steps on a
  //    square and 60 on a hexagon. Walk a mid-level row for every shape in the
  //    corpus and demand an integer multiple of the step.
  const shapes = new Set();
  for (const [tun, lvl] of cases) {
    e.run3_init(7);
    e.run3_seek(tun, lvl);
    const n = e.run3_sides(), step = e.run3_roll_step();
    const head = e.run3_rowf(), span = e.run3_level_rows();
    if (span < 30) continue;
    shapes.add(n);
    const rot = e.run3_rot_at(head + span * 0.5);
    const q = rot / step;
    if (!approx(step, TAU / n, 1e-12))
      throw new Error(`tun${tun} lvl${lvl}: roll step ${step} != 360/${n}`);
    if (!approx(q, Math.round(q), 1e-7))
      throw new Error(`tun${tun} lvl${lvl}: roll ${rot} is not an exact 360/${n} multiple (q=${q})`);
    checks++;
  }
  if (shapes.size < 4)
    throw new Error(`only ${shapes.size} distinct shapes sampled — not exercising the step`);
  console.log(`facet roll OK (${checks} levels, ${shapes.size} shapes: roll is exactly 360/n off-seam)`);

  // 2. THE RUNNER NEVER MOVES ON SCREEN. Load, then steer across a whole lap:
  //    the projected runner must sit at (CX, 2H/3) the entire time and the
  //    engine's own offset seam must stay 0.
  let worst = 0, worstAt = "", frames = 0, crossed = 0;
  const steerToHint = () => {
    let steer = 0;
    const cnt = e.run3_hint_count();
    if (cnt > 0) {
      const N = e.run3_sides() * e.run3_lanes();
      let d = e.run3_hint_ring(cnt > 1 ? 1 : 0) - e.run3_ring();
      while (d > N / 2) d -= N;
      while (d < -N / 2) d += N;
      steer = Math.max(-1, Math.min(1, d * 2));
    }
    return steer;
  };
  for (const tun of [0, 5, 13, 33, 34]) {
    e.run3_init(7);
    e.run3_seek(tun, 0);
    if (!e.run3_hint_on()) e.run3_hint_toggle();
    let lastLvl = e.run3_lvl();
    for (let i = 0; i < 1500; i++) {
      e.run3_set_input(steerToHint());
      e.run3_step(1 / 60);
      if (e.run3_state() !== 1) break;
      const off = Math.abs(e.run3_runner_offset());
      const [sx, sy] = screen();
      const dev = Math.max(off, Math.abs(sx - CX), Math.abs(sy - ROW));
      if (dev > worst) { worst = dev; worstAt = `tun${tun} lvl${e.run3_lvl()} f${i}`; }
      if (e.run3_lvl() !== lastLvl) { crossed++; lastLvl = e.run3_lvl(); }
      frames++;
    }
  }
  if (worst > 0.6)
    throw new Error(`runner moved ${worst.toFixed(3)}px off (${CX}, ${ROW.toFixed(0)}) at ${worstAt}`);
  if (crossed < 2)
    throw new Error(`only ${crossed} checkpoint crossings — not exercising a level change`);
  console.log(`runner pinned OK (${frames} frames, ${crossed} crossings, worst ${worst.toFixed(3)}px)`);

  // 3. THE TUNNEL PANS. The runner's rolled x sweeps the chord and the camera
  //    x follows it exactly; a camera on the axis would hold both at 0.
  e.run3_init(7);
  e.run3_seek(0, 0);
  let minx = 1e9, maxx = -1e9, worstCam = 0;
  for (let i = 0; i < 900; i++) {
    e.run3_set_input(Math.sin(i / 90.0));
    e.run3_step(1 / 60);
    const rx = e.run3_runner_world_x(), cx = e.run3_cam_x();
    minx = Math.min(minx, rx); maxx = Math.max(maxx, rx);
    worstCam = Math.max(worstCam, Math.abs(rx - cx));
  }
  if (maxx - minx < 0.2)
    throw new Error(`the pan is dead: runner rolled x only spread ${(maxx - minx).toFixed(4)}`);
  if (worstCam > 1e-9)
    throw new Error(`camera x does not track the runner (worst ${worstCam})`);
  console.log(`pan OK (rolled x swept ${(maxx - minx).toFixed(3)} world units, camera tracks it exactly)`);

  // 4. A JUMP IS WORLD-SPACE ONLY. Through a whole jump the runner's screen
  //    position must not move at all, while the camera and the tunnel do.
  e.run3_init(7);
  e.run3_seek(0, 0);
  for (let i = 0; i < 20; i++) e.run3_step(1 / 60);
  const [s0, t0] = screen();
  const camY0 = e.run3_cam_y();
  e.run3_flap();
  let drift = 0, camMoved = 0, air = 0;
  for (let i = 0; i < 150; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() !== 1) break;
    if (e.run3_jump() > 0.01) {
      air++;
      const [sx, sy] = screen();
      drift = Math.max(drift, Math.abs(sx - s0), Math.abs(sy - t0));
      camMoved = Math.max(camMoved, Math.abs(e.run3_cam_y() - camY0));
    }
  }
  if (air < 10) throw new Error(`no airborne frames sampled (${air})`);
  if (drift > 0.05)
    throw new Error(`runner moved ${drift.toFixed(3)}px on screen during a jump`);
  if (camMoved < 0.05)
    throw new Error(`the camera did not follow the jump at all (moved ${camMoved})`);
  console.log(`jump OK (${air} air frames: runner drift ${drift.toFixed(3)}px, camera moved ${camMoved.toFixed(2)})`);

  // 5. FROZEN IN THE AIR, GLIDED ON LANDING. The roll must hold one value for
  //    the whole jump, then reach the new facet without ever jumping a whole
  //    step in one frame.
  e.run3_init(7);
  e.run3_seek(0, 0);
  const rolls = new Set();
  let prev = e.run3_rot(), maxFrame = 0;
  for (let i = 0; i < 1800; i++) {
    e.run3_set_input(0.9);
    e.run3_step(1 / 60);
    if (e.run3_state() !== 1) break;
    const rot = e.run3_rot();
    const d = Math.abs(wrapPi(rot - prev));
    if (e.run3_jump() > 0.02) { rolls.add(rot.toFixed(5)); }
    else if (d > maxFrame) maxFrame = d;
    prev = rot;
  }
  if (rolls.size > 1)
    throw new Error(`the roll moved in the air (${rolls.size} distinct values) — not frozen`);
  if (maxFrame > 0.12)
    throw new Error(`the roll stepped ${maxFrame.toFixed(3)} rad in one grounded frame (cap is 0.1)`);
  console.log(`airborne roll OK (frozen in the air, worst grounded frame ${maxFrame.toFixed(4)} rad)`);

  // 6. FRAMING IS KEYED TO THE APOTHEM, not the runner's running distance: the
  //    distance the runner sits below the camera must be constant all the way
  //    across one side (a runner-referenced camera would zoom corner->midpoint).
  {
    let worstOff = 0, bestRad = 0, nOff = 0, levels = 0;
    for (const [tun, lvl] of [[0, 0], [5, 3], [13, 2], [33, 10]]) {
      e.run3_init(7);
      e.run3_seek(tun, lvl);
      const r0 = e.run3_rowf(), span = e.run3_level_rows();
      const lvl0 = e.run3_lvl();
      let minOff = 1e9, maxOff = -1e9, sumOff = 0, n = 0;
      let minRad = 1e9, maxRad = -1e9;
      for (let i = 0; i < 700; i++) {
        e.run3_set_input(1); /* steer hard: the runner sweeps several sides */
        e.run3_step(1 / 60);
        if (e.run3_state() !== 1 || e.run3_lvl() !== lvl0) break;
        const p = e.run3_rowf() - r0;
        if (p < 8 || span - p < 8) continue; /* off-seam only */
        const off = e.run3_cam_off(), rad = e.run3_runner_rad();
        minOff = Math.min(minOff, off); maxOff = Math.max(maxOff, off);
        sumOff += off; n++;
        minRad = Math.min(minRad, rad); maxRad = Math.max(maxRad, rad);
      }
      if (n < 60) continue;
      levels++;
      nOff += n;
      /* within ONE level the cross-section is fixed, so the apothem — and the
         camera's distance from the runner — must not move at all, while the
         runner's own radius swings as they walk along the chord */
      const offSpread = (maxOff - minOff) / (sumOff / n);
      const radSpread = (maxRad - minRad) / maxRad;
      if (offSpread > worstOff) worstOff = offSpread;
      if (radSpread > bestRad) bestRad = radSpread;
    }
    if (levels < 3) throw new Error(`only ${levels} levels sampled off-seam (${nOff} frames)`);
    if (worstOff > 0.005)
      throw new Error(`camera distance varies ${(worstOff * 100).toFixed(2)}% within a level ` +
        `(the cross-section is fixed, so it must not)`);
    if (bestRad < 0.02)
      throw new Error(`the runner's own radius barely varied (${(bestRad * 100).toFixed(2)}%) ` +
        `— the apothem-keying check would be vacuous`);
    console.log(`framing OK (${nOff} off-seam frames over ${levels} levels: cam off steady to ` +
      `${(worstOff * 100).toFixed(3)}% while the runner's own radius varied ${(bestRad * 100).toFixed(1)}% — apothem-keyed)`);
  }

  console.log("ALL CAMERA CHECKS PASSED");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
