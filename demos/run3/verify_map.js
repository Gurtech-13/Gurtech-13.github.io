/*
 * verify_map - the world map's placement, its free 2D pan, and their agreement.
 *
 * The map is placed by the 2014 build's own rule (MapMenu.create): everywhere
 * the coordinates are scaled by k = min(W/3000, H/2000), every bitmap is drawn
 * at TWICE k, and MapMask — drawn at 2k — is what the content's design (0,0) is
 * anchored to (+1, +1). The port CENTRES that cutout on both axes (the original
 * bottom-aligns it) and paints the screen around it BLACK: everything outside
 * the cutout is black, nothing is tiled or stretched to fill the frame.
 * This suite pins that rule, then the pan contract on top of it:
 *   1. the placement IS the rule (k, the mask's box, the content origin)
 *   2. the pan is 2D and starts at the origin on every entry to S_MAP
 *   3. both axes move, independently, and are clamped so the map stays reachable
 *   4. centring a tunnel puts its node under the view centre and makes it pick
 *   5. the pan is RENDERED: moving either axis alone repaints the framebuffer
 *   6. hit-testing agrees with the rendered position (a node drawn at screen
 *      (sx,sy) is picked at (sx,sy)) — the bug class the 1D map had no defence
 *      against
 */
const fs = require("fs");
(async () => {
  const { instance } = await WebAssembly.instantiate(fs.readFileSync("run3.wasm"), {});
  const e = instance.exports;
  const need = ["run3_map_scroll_xy", "run3_map_scroll_x", "run3_map_scroll_y",
    "run3_map_center_on", "run3_map_hover", "run3_map_set_locked",
    "run3_map_checkpoint_pos", "run3_enter_map", "run3_scratch", "run3_buffer",
    "run3_width", "run3_height", "render_map",
    "run3_map_scale", "run3_map_origin_x", "run3_map_origin_y",
    "run3_map_screen_x", "run3_map_screen_y",
    "run3_map_mask_x", "run3_map_mask_y", "run3_map_mask_w", "run3_map_mask_h",
    "run3_base_x0", "run3_base_y0", "run3_base_w", "run3_base_h",
    "run3_map_clamp_x", "run3_map_clamp_y"];
  for (const n of need) if (typeof e[n] !== "function") throw new Error("missing export " + n);

  const W = e.run3_width(), H = e.run3_height();
  const CX = W / 2, CY = H / 2;
  const SP = e.run3_scratch();
  const nodePos = (tun) => {
    e.run3_map_node_pos(tun, SP, SP + 4);
    const a = new Int32Array(e.memory.buffer, SP, 8);
    return [a[0], a[1]];
  };
  const pan = () => [e.run3_map_scroll_x(), e.run3_map_scroll_y()];
  /* design -> screen, exactly the way render_map draws it */
  const scr = (tun) => [e.run3_map_screen_x(nodePos(tun)[0]),
                        e.run3_map_screen_y(nodePos(tun)[1])];

  // 0. THE PLACEMENT IS THE 2014 BUILD'S OWN RULE.
  const BW = e.run3_base_w(), BH = e.run3_base_h();
  const BX = e.run3_base_x0(), BY = e.run3_base_y0();
  const k = e.run3_map_scale();
  const kWant = Math.min(BW / 3000, BH / 2000);
  if (Math.abs(k - kWant) > 1e-6)
    throw new Error(`map scale ${k} is not min(baseW/3000, baseH/2000) = ${kWant}`);
  const mwWant = Math.round(1536 * 2 * k), mhWant = Math.round(1024 * 2 * k);
  if (e.run3_map_mask_w() !== mwWant || e.run3_map_mask_h() !== mhWant)
    throw new Error(`mask drawn ${e.run3_map_mask_w()}x${e.run3_map_mask_h()}, want ${mwWant}x${mhWant} (native x 2k)`);
  /* CENTRED on both axes (the port's own placement: the original bottom-aligns
     the cutout in its stage, the port puts it in the middle of the base box) */
  const mxWant = BX + Math.round((BW - 1536 * 2 * k) / 2);
  const myWant = BY + Math.round((BH - 1024 * 2 * k) / 2);
  if (e.run3_map_mask_x() !== mxWant || e.run3_map_mask_y() !== myWant)
    throw new Error(`mask at (${e.run3_map_mask_x()},${e.run3_map_mask_y()}), want (${mxWant},${myWant})`);
  if (e.run3_map_origin_x() !== e.run3_map_mask_x() + 1 ||
      e.run3_map_origin_y() !== e.run3_map_mask_y() + 1)
    throw new Error("the content origin is not the mask's top-left + 1");
  /* the origin IS design (0,0): tunnel 0's path starts there (MapContents) */
  if (e.run3_map_screen_x(0) !== e.run3_map_origin_x() ||
      e.run3_map_screen_y(0) !== e.run3_map_origin_y())
    throw new Error("design (0,0) is not the content pane's origin");
  /* a design unit is a design unit: the scale is uniform on both axes */
  if (e.run3_map_screen_x(1000) - e.run3_map_screen_x(0) !==
      e.run3_map_screen_y(1000) - e.run3_map_screen_y(0))
    throw new Error("the map scale is not uniform across x and y");
  console.log(`map placement OK (k=${k.toFixed(5)}, mask ${e.run3_map_mask_w()}x${e.run3_map_mask_h()} at ` +
              `(${e.run3_map_mask_x()},${e.run3_map_mask_y()}), origin (${e.run3_map_origin_x()},${e.run3_map_origin_y()}))`);
  let checks0 = 1;
  const shot = () => new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  const diff = (a, b) => { let n = 0; for (let i = 0; i < a.length; i++) if (a[i] !== b[i]) n++; return n; };
  let checks = checks0;

  // 1. ENTERING THE MAP RESETS THE PAN TO THE ORIGIN, and the pan is 2D.
  e.run3_enter_map();
  if (pan()[0] !== 0 || pan()[1] !== 0)
    throw new Error(`map did not open at the origin: ${pan()}`);
  e.run3_map_scroll_xy(120, -80);
  if (pan()[0] !== 120 || pan()[1] !== -80)
    throw new Error(`2D pan failed: ${pan()}`);
  // axes are independent
  e.run3_enter_map(); e.run3_map_scroll_xy(0, 45);
  if (pan()[0] !== 0 || pan()[1] !== 45) throw new Error(`y-only pan moved x: ${pan()}`);
  e.run3_enter_map(); e.run3_map_scroll_xy(-30, 0);
  if (pan()[0] !== -30 || pan()[1] !== 0) throw new Error(`x-only pan moved y: ${pan()}`);
  console.log("2D pan OK (origin on entry, axes independent)");
  checks++;

  // 2. CLAMPED on both axes, and the clamp is symmetric.
  e.run3_enter_map();
  e.run3_map_scroll_xy(1e9, 1e9);
  const hi = pan();
  e.run3_enter_map();
  e.run3_map_scroll_xy(-1e9, -1e9);
  const lo = pan();
  if (hi[0] <= 0 || hi[1] <= 0) throw new Error(`+overflow not clamped: ${hi}`);
  if (lo[0] >= 0 || lo[1] >= 0) throw new Error(`-overflow not clamped: ${lo}`);
  if (hi[0] !== -lo[0] || hi[1] !== -lo[1]) throw new Error(`asymmetric clamp: ${hi} vs ${lo}`);
  console.log(`clamp OK (x +-${hi[0]}, y +-${hi[1]})`);
  checks++;

  // 3. CENTRING puts a tunnel's node under the view centre and makes it pick.
  //    Unlock the deep extended tunnels first: the picker ignores locked ones.
  const deep = [33, 35, 40, 41];
  for (const t of deep) e.run3_map_set_locked(t, 0);
  for (const t of deep) {
    e.run3_enter_map();
    for (const d of deep) e.run3_map_set_locked(d, 0);
    e.run3_map_center_on(t);
    const p = pan();
    const [nx, ny] = scr(t);
    if (nx + p[0] !== CX || ny + p[1] !== CY)
      throw new Error(`centre: tun${t} node at (${nx + p[0]},${ny + p[1]}) not (${CX},${CY})`);
    const hit = e.run3_map_hover(CX, CY);
    if (hit !== t) throw new Error(`centre: hover at centre gave tun ${hit}, want ${t}`);
    checks++;
  }
  console.log(`centre OK (${deep.length} tunnels centred and picked at the view centre)`);

  // 4. THE MAP IS DRAWN ON BLACK, CENTRED. The map screen is the map and
  //    nothing else: every pixel outside the map's own cutout is black (there
  //    is no paper, and nothing is tiled or stretched to fill the frame), the
  //    cutout is centred on both axes, and the art is painted inside it.
  e.run3_enter_map();
  for (const d of deep) e.run3_map_set_locked(d, 0);
  e.run3_map_center_on(40);
  e.run3_map_set_hover(-1);
  e.render_map();
  const base = shot();
  const px = (f) => { let n = 0; for (let i = 0; i < f.length; i++) if ((f[i] & 0xffffff) !== 0) n++; return n; };
  const painted = px(base);
  if (painted < 2000)
    throw new Error(`map painted only ${painted} px — the map art / marks are missing`);
  const MMX = e.run3_map_mask_x(), MMY = e.run3_map_mask_y();
  const MMW = e.run3_map_mask_w(), MMH = e.run3_map_mask_h();
  {
    const cxm = MMX + MMW / 2, cym = MMY + MMH / 2;
    if (Math.abs(cxm - (BX + BW / 2)) > 1 || Math.abs(cym - (BY + BH / 2)) > 1)
      throw new Error(`the map cutout is not centred: (${cxm},${cym}) vs base centre ` +
                      `(${BX + BW / 2},${BY + BH / 2})`);
    /* Everything outside the cutout is BLACK — the port's own header/footer
       chrome (title, hint, pan readout) excepted, since that is UI on the
       black and not part of the map. */
    let stray = 0, first = "";
    for (let y = 0; y < H; y++)
      for (let x = 0; x < W; x++) {
        const inMask = x >= MMX && x < MMX + MMW && y >= MMY && y < MMY + MMH;
        if (inMask) continue;
        if ((base[y * W + x] & 0xffffff) === 0) continue;
        if (y < BY + 40 || y >= BY + BH - 32) continue;   /* the port's chrome lines */
        stray++;
        if (!first) first = `${x},${y}`;
      }
    if (stray)
      throw new Error(`everything outside the map cutout must be black, but ${stray} px are lit ` +
                      `(first at ${first}); cutout ${MMW}x${MMH} at (${MMX},${MMY})`);
    /* THE SHEET must actually be on the screen, and OPAQUE. The framebuffer is
       0xAARRGGBB and the sheet is written raw, so a colour constant that
       forgot its alpha byte (0xC8B788 instead of 0xFFC8B788) lands as alpha 0
       and the pane shows the black behind it - a map background that is
       silently defunct while every "is it black?" check above still passes.
       The 2014's own sheet colour is the RGB triple 0xC8B788. */
    let paper = 0;
    for (let y = MMY + 1; y < MMY + MMH - 1; y++)
      for (let x = MMX + 1; x < MMX + MMW - 1; x++)
        if (base[y * W + x] === 0xffc8b788) paper++;
    if (paper < 1000)
      throw new Error(`the map's own sheet is missing or transparent inside the ` +
                      `cutout: only ${paper} px of 0xFFC8B788 (the pane is ${MMW}x${MMH})`);
    /* and the periphery — outside the 4:3 base box — is black outright, the
       map's own cutout excepted (the cutout is 983 px wide at 1280x720 and so
       reaches ~11 px past the main viewport on either side) */
    let peri = 0, periFirst = "";
    for (let y = 0; y < H; y++)
      for (let x = 0; x < W; x++) {
        const outsideBase = x < BX || x >= BX + BW || y < BY || y >= BY + BH;
        const inMask = x >= MMX && x < MMX + MMW && y >= MMY && y < MMY + MMH;
        if (!outsideBase || inMask) continue;
        if ((base[y * W + x] & 0xffffff) === 0) continue;
        peri++;
        if (!periFirst) periFirst = `${x},${y}`;
      }
    if (peri) throw new Error(`${peri} px in the periphery outside the map are not black (first at ${periFirst})`);
  }
  /* The backdrop no longer moves with the pan (it is the same black before and
     after), so the diff counts the ART only: a few hundred px of dots, paths
     and decoration for a 120 px shift. A pan that is stored but not drawn is
     still exactly 0, which is the bug this pins. */
  e.run3_map_scroll_xy(0, 120);   // vertical only
  e.render_map();
  const dy = diff(base, shot());
  if (dy < 200) throw new Error(`vertical pan did not repaint (${dy} px changed)`);
  e.run3_enter_map();
  for (const d of deep) e.run3_map_set_locked(d, 0);
  e.run3_map_center_on(40);
  e.run3_map_scroll_xy(160, 0);   // horizontal only
  e.render_map();
  const dx = diff(base, shot());
  if (dx < 200) throw new Error(`horizontal pan did not repaint (${dx} px changed)`);
  console.log(`render OK (${painted} px of map art on black, cutout centred; ` +
              `x-pan ${dx} px, y-pan ${dy} px repainted)`);
  checks++;

  // 5. HIT-TEST AGREES WITH THE RENDERED POSITION after a pan: the node is drawn
  //    at (node + pan), so it must be picked there and NOT at its old spot.
  for (const t of deep) {
    e.run3_enter_map();
    for (const d of deep) e.run3_map_set_locked(d, 0);
    e.run3_map_scroll_xy(-900, 40);   // arbitrary 2D offset
    const p = pan();
    const [nx, ny] = scr(t);
    const sx = nx + p[0], sy = ny + p[1];
    // skip if the node landed off-screen — nothing to pick
    if (sx < 8 || sx >= W - 8 || sy < 8 || sy >= H - 8) continue;
    const hit = e.run3_map_hover(sx, sy);
    if (hit !== t) throw new Error(`panned node tun${t} at (${sx},${sy}) not picked (got ${hit})`);
    checks++;
  }
  console.log("consistency OK (panned node picked at its drawn position)");

  console.log(`verify_map: all green (${checks} checks)`);
})().catch((err) => { console.error("FAIL:", err.message); process.exit(1); });
