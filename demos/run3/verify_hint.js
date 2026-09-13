"use strict";
// The H hint: the engine hands the renderer a route to the end of the level
// as (row, ring) waypoints. Every waypoint but possibly the first (the runner
// may be airborne) must sit on a solid tile, the rows must advance, and each
// hop must be physically reachable (a little lateral drift per row, more over
// a leap).
const fs = require("fs");
const path = require("path");
const bytes = fs.readFileSync(path.join(__dirname, "run3.wasm"));

const HINT_MAXDC = 2, HINT_LEAPDC = 6;

(async () => {
  const { instance } = await WebAssembly.instantiate(bytes, {});
  const e = instance.exports;
  for (const n of ["run3_hint_toggle", "run3_hint_on", "run3_hint_count",
                   "run3_hint_row", "run3_hint_ring"])
    if (typeof e[n] !== "function") throw new Error("missing export " + n);

  const cases = [[0, 0], [0, 3], [0, 7], [0, 9], [2, 2], [5, 4], [8, 3], [13, 5],
                 [23, 0], [28, 0], [30, 0], [31, 0], [32, 0],
                 /* the extended 200-checkpoint runs and their branches: every
                    stretch must have a way through, wall voids and all */
                 [33, 0], [33, 40], [33, 90], [33, 139],
                 [34, 0], [34, 60], [34, 139],
                 [35, 0], [35, 60], [35, 139],
                 [36, 10], [37, 10], [38, 10], [39, 10], [40, 10], [41, 10]];
  for (const c of cases) {
    const tun = c[0], lvl = c[1];
    e.run3_init(1234);
    e.run3_seek(tun, lvl);
    e.run3_set_input(0);
    const r0 = e.run3_rowf();
    const rows = e.run3_level_rows() | 0;
    if (e.run3_hint_on()) e.run3_hint_toggle();
    if (e.run3_hint_on()) throw new Error("hint should start off");
    e.run3_hint_toggle();
    if (e.run3_hint_on() !== 1) throw new Error("toggle did not turn the hint on");
    const cnt = e.run3_hint_count();
    if (cnt <= 0) throw new Error(`tun${tun} lvl${lvl}: no hint route`);
    const n = e.run3_sides(), k = e.run3_lanes(), N = n * k;
    let pr = null, pring = null;
    for (let i = 0; i < cnt; i++) {
      const row = e.run3_hint_row(i), ring = e.run3_hint_ring(i);
      const col = Math.floor(ring) % N;
      const s = Math.floor(col / k), l = col % k;
      if (i > 0 && !e.run3_tile(s, row, l)) throw new Error(`tun${tun} lvl${lvl}: waypoint ${i} on a hole`);
      if (pr !== null) {
        const dr = row - pr;
        if (dr < 1) throw new Error(`tun${tun} lvl${lvl}: waypoints out of order`);
        let dc = Math.abs(ring - pring);
        if (dc > N / 2) dc = N - dc;
        const allow = dr === 1 ? HINT_MAXDC : HINT_LEAPDC * dr;
        if (dc > allow + 1e-6) throw new Error(`tun${tun} lvl${lvl}: unreachable hop dr=${dr} dc=${dc.toFixed(2)}`);
      }
      pr = row; pring = ring;
    }
    const last = e.run3_hint_row(cnt - 1);
    if (last - r0 < rows - 3)
      throw new Error(`tun${tun} lvl${lvl}: route stops at row ${last} of ${rows} — no way through`);
    console.log(`tun${tun} lvl${lvl} from row ${r0.toFixed(1)}: ${cnt} waypoints, covers ${rows} rows`);
  }

  // live GPS: the route is replanned from the runner's position, so the first
  // waypoint tracks the runner every frame. A route frozen where H was pressed
  // would leave row(0) behind while the runner runs off it.
  e.run3_init(21);
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  for (let i = 0; i < 90; i++) e.run3_step(1 / 60);
  if (!e.run3_hint_on()) e.run3_hint_toggle();
  let tracked = 0, lost = 0, moved = 0, first0 = null;
  for (let i = 0; i < 300; i++) {
    e.run3_step(1 / 60);
    if (e.run3_state() !== 1) break; // dead / done / gate: stop watching
    const pr = e.run3_rowf();
    const cnt = e.run3_hint_count();
    if (cnt <= 0) break;
    const fr = e.run3_hint_row(0);
    if (first0 === null) first0 = fr;
    if (fr > first0) moved++;
    if (fr - pr >= -1.0001 && fr - pr <= 1.0001) tracked++; else lost++;
  }
  if (tracked < 60) throw new Error("hint route did not follow the runner (tracked=" + tracked + ")");
  if (lost) throw new Error("hint route fell behind the runner on " + lost + " frames");
  if (moved < 5) throw new Error("hint route never advanced with the runner");
  console.log(`live route: tracked the runner on ${tracked} frames, advanced ${moved} rows`);

  // the renderer must actually draw the route as billboards
  e.run3_init(9);
  e.run3_seek(0, 0);
  e.run3_set_input(0);
  for (let i = 0; i < 40; i++) e.run3_step(1 / 60);
  if (e.run3_hint_on()) e.run3_hint_toggle();
  e.render_frame();
  const W = e.run3_width(), H = e.run3_height();
  const off = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  e.run3_hint_toggle();
  e.render_frame();
  const on = new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  let diff = 0;
  for (let i = 0; i < W * H; i++) if (off[i] !== on[i]) diff++;
  if (diff < 20) throw new Error("hint billboards did not render (diff=" + diff + ")");
  console.log(`hint drawn: ${diff} pixels differ with the overlay on`);
  console.log("HINT OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
