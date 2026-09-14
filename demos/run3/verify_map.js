/*
 * verify_map - the world map's free 2D pan.
 *
 * The map used to scroll on one axis only (horizontal); the extended world runs
 * out to x ~5760, so a 1D pan left most of it unreachable. This suite pins the
 * new contract:
 *   1. the pan is 2D and starts at the origin on every entry to S_MAP
 *   2. both axes move, independently, and are clamped so the map stays reachable
 *   3. centring a tunnel puts its node under the view centre and makes it pick
 *   4. the pan is RENDERED: moving either axis alone repaints the framebuffer
 *   5. hit-testing agrees with the rendered position (a node drawn at screen
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
    "run3_width", "run3_height", "render_map"];
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
  const shot = () => new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  const diff = (a, b) => { let n = 0; for (let i = 0; i < a.length; i++) if (a[i] !== b[i]) n++; return n; };
  let checks = 0;

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
    const [nx, ny] = nodePos(t);
    if (nx + p[0] !== CX || ny + p[1] !== CY)
      throw new Error(`centre: tun${t} node at (${nx + p[0]},${ny + p[1]}) not (${CX},${CY})`);
    const hit = e.run3_map_hover(CX, CY);
    if (hit !== t) throw new Error(`centre: hover at centre gave tun ${hit}, want ${t}`);
    checks++;
  }
  console.log(`centre OK (${deep.length} tunnels centred and picked at the view centre)`);

  // 4. THE PAN IS RENDERED. Move one axis alone, twice, and demand a repaint
  //    both times. A pan that is stored but not drawn would leave the frame
  //    identical, which is exactly the 1D bug being fixed.
  e.run3_enter_map();
  for (const d of deep) e.run3_map_set_locked(d, 0);
  e.run3_map_center_on(40);
  e.run3_map_set_hover(-1);
  e.render_map();
  const base = shot();
  const px = (f) => { let n = 0; for (let i = 0; i < f.length; i++) if ((f[i] & 0xffffff) !== 0) n++; return n; };
  const painted = px(base);
  if (painted < W * H * 0.5)
    throw new Error(`map painted only ${painted} px — background/marks missing`);
  e.run3_map_scroll_xy(0, 120);   // vertical only
  e.render_map();
  const dy = diff(base, shot());
  if (dy < 1000) throw new Error(`vertical pan did not repaint (${dy} px changed)`);
  e.run3_enter_map();
  for (const d of deep) e.run3_map_set_locked(d, 0);
  e.run3_map_center_on(40);
  e.run3_map_scroll_xy(160, 0);   // horizontal only
  e.render_map();
  const dx = diff(base, shot());
  if (dx < 1000) throw new Error(`horizontal pan did not repaint (${dx} px changed)`);
  console.log(`render OK (${painted} px painted; x-pan ${dx} px, y-pan ${dy} px repainted)`);
  checks++;

  // 5. HIT-TEST AGREES WITH THE RENDERED POSITION after a pan: the node is drawn
  //    at (node + pan), so it must be picked there and NOT at its old spot.
  for (const t of deep) {
    e.run3_enter_map();
    for (const d of deep) e.run3_map_set_locked(d, 0);
    e.run3_map_scroll_xy(-900, 40);   // arbitrary 2D offset
    const p = pan();
    const [nx, ny] = nodePos(t);
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
