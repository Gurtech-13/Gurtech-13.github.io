"use strict";
// Full-stack smoke test: boots the real app.js + real run3.wasm behind a
// minimal DOM stub and drives:
//   menu -> map (no scene on tunnel entry) -> gallery open/close ->
//   Side Path F end-to-end: injected mid-gate scene (pause/resume),
//   tunnel-end scene, mapped card -> gallery seen-states.
// A test-only trigger is appended to STORY_MID_CUTS below (same machinery
// as the real ComingThrough-at-Primary-10 trigger, which is validated
// statically in verify_stage.js but needs blind-unplayable tunnels).
const fs = require("fs");
const path = require("path");
const vm = require("vm");

const dir = __dirname;
const wasmBytes = fs.readFileSync(path.join(dir, "run3.wasm"));

function makeClassList() {
  const s = new Set();
  return {
    add: (c) => s.add(c),
    remove: (...cs) => cs.forEach((c) => s.delete(c)),
    toggle: (c, f) => { (f === undefined ? !s.has(c) : f) ? s.add(c) : s.delete(c); },
    contains: (c) => s.has(c),
  };
}
function makeEl() {
  const el = {
    textContent: "",
    style: {}, dataset: {},
    classList: makeClassList(),
    onclick: null, onerror: null,
    src: "", type: "", className: "", alt: "",
    width: 0, height: 0,
    clientWidth: 800, clientHeight: 600,
    children: [],
    _handlers: {},
    addEventListener(t, fn) { el._handlers[t] = fn; },
    removeEventListener() {},
    setAttribute() {}, removeAttribute() {},
    appendChild(c) { el.children.push(c); },
  };
  Object.defineProperty(el, "innerHTML", {
    get() { return el._html || ""; },
    set(v) { el._html = v; el.children = []; },
  });
  return el;
}

(async () => {
  const listeners = {};
  const canvasHandlers = {};
  const els = {};
  const errors = [];
  let rafCb = null;
  let now = 1000;

  const canvas = makeEl();
  canvas.width = 1280; canvas.height = 720;
  canvas.getBoundingClientRect = () => ({ left: 0, top: 0, width: 1280, height: 720 });
  canvas.setPointerCapture = () => {};
  canvas.addEventListener = (t, fn) => { canvasHandlers[t] = fn; };

  const MISSING = process.env.SIMULATE_CACHED_INDEX ? { cutleft: 1, cutright: 1 } : {};
  function el(id) {
    if (id === "cv") return canvas;
    if (MISSING[id]) return null;
    if (!els[id]) els[id] = makeEl();
    return els[id];
  }

  // Primary cleared -> Side Path F (tun 30) unlocked
  const seedSave = { cleared: [0], best: {}, renames: {}, cuts: {}, char: 0, musicVol: 0.5, powercells: 0 };
  const store = { "run3tribute-v3": JSON.stringify(seedSave) };

  const ctx2d = {
    createImageData: (w, h) => ({ data: new Uint8ClampedArray(w * h * 4), width: w, height: h }),
    putImageData() {}, drawImage() {}, fillRect() {},
  };
  canvas.getContext = () => ctx2d;

  function AudioStub() { this.volume = 0.5; }
  AudioStub.prototype.play = function () { return Promise.resolve(); };
  AudioStub.prototype.pause = function () {};

  const sandbox = {
    console,
    performance: { now: () => now },
    location: { search: "" },
    localStorage: {
      getItem: (k) => (k in store ? store[k] : null),
      setItem: (k, v) => { store[k] = String(v); },
    },
    requestAnimationFrame: (cb) => { rafCb = cb; return 1; },
    fetch: async () => new Response(wasmBytes, { headers: { "Content-Type": "application/wasm" } }),
    Audio: AudioStub,
    WebAssembly,
    Uint8Array, Uint8ClampedArray, Uint32Array, Int32Array, Float64Array,
    ArrayBuffer, DataView, Promise, JSON, Math, Object, Array, Error, Set, Map,
  };
  sandbox.window = sandbox;
  sandbox.globalThis = sandbox;
  sandbox.document = {
    getElementById: el,
    createElement: () => makeEl(),
    body: makeEl(),
  };
  sandbox.window.addEventListener = (t, fn) => {
    if (!listeners[t]) listeners[t] = [];
    listeners[t].push(fn);
  };
  function fireWin(t, ev) { (listeners[t] || []).forEach((fn) => fn(ev)); }
  vm.createContext(sandbox);
  const files = ["story.js", "cutscenes.js", "custom_cutscenes.js", "achievements.js", "app.js"];
  for (const f of files) {
    let src = fs.readFileSync(path.join(dir, f), "utf8");
    if (f === "custom_cutscenes.js") {
      // TEST-ONLY trigger on a blind-playable gate (same code path as the
      // real mid-tunnel triggers like ComingThrough at Primary 10).
      src = src.replace(
        "global.STORY_MID_CUTS = MID_CUTS;",
        "MID_CUTS.push({tun:30,lvl:3,cut:\"OfCourse\"});global.STORY_MID_CUTS = MID_CUTS;"
      );
      if (src.indexOf("tun:30") < 0) throw new Error("test trigger patch failed");
    }
    vm.runInContext(src, sandbox, { filename: f });
  }
  sandbox.window.addEventListener("error", (e) => errors.push((e && e.message) || String(e)));
  async function frames(n) {
    for (let i = 0; i < n; i++) {
      now += 1000 / 60;
      const cb = rafCb; rafCb = null;
      if (!cb) throw new Error("rAF loop stalled");
      cb(now);
      await Promise.resolve();
    }
  }
  for (let i = 0; i < 50 && !rafCb; i++) await new Promise((r) => setImmediate(r));
  if (!rafCb) throw new Error("app never started frame loop: " + els.status.textContent);
  await frames(5);

  function fire(elm, type, ev) {
    if (elm._handlers && elm._handlers[type]) elm._handlers[type](ev || {});
    else if (type === "click" && elm.onclick) elm.onclick(ev || { stopPropagation() {} });
    else throw new Error("no handler for " + type);
  }
  function click(x, y) {
    canvasHandlers.pointerdown({ clientX: x, clientY: y, pointerId: 1 });
    canvasHandlers.pointerup({ clientX: x, clientY: y, pointerId: 1 });
  }
  function key(code) {
    fireWin("keydown", { code, preventDefault() {} });
    fireWin("keyup", { code });
  }
  function save() { return JSON.parse(store["run3tribute-v3"]); }
  async function finishScene(budget) {
    const btn = el("cutbtn");
    for (let i = 0; i < (budget || 60); i++) {
      if (!el("cutview").classList.contains("on")) return;
      fire(btn, "click");
      await frames(1);
    }
    if (el("cutview").classList.contains("on")) throw new Error("scene never finished");
  }

  // menu -> Play
  click(640, 370);
  await frames(3);
  if (els.status.textContent.indexOf("mapped") < 0) throw new Error("did not reach map: " + els.status.textContent);
  console.log("menu -> map OK");

  // tunnel entry plays NO scene anymore (all scenes fire at level end)
  for (let i = 0; i < 9; i++) key("ArrowRight"); // scroll F node (1503,215) into view
  await frames(2);
  click(1233, 215);
  await frames(5);
  if (el("cutview").classList.contains("on")) throw new Error("scene played on tunnel entry");
  console.log("no scene on entry OK");

  // gallery opens (all locked), then close
  fire(el("sceneBtn"), "click");
  await frames(1);
  if (!el("sceneMenu").classList.contains("on")) throw new Error("gallery did not open");
  const cells0 = el("sceneGrid").children;
  if (!cells0.length) throw new Error("gallery empty");
  console.log(`gallery OK (${cells0.length} cells)`);
  fire(el("sceneClose"), "click");
  await frames(1);
  if (el("sceneMenu").classList.contains("on")) throw new Error("gallery did not close");

  // play F to the injected gate 3->4: scene pauses, then resumes the run
  let opened = false;
  for (let i = 0; i < 1500 && !opened; i++) {
    await frames(10);
    opened = el("cutview").classList.contains("on");
  }
  if (!opened) throw new Error("mid-gate scene never opened");
  console.log("mid-gate scene opened OK; bubble:", JSON.stringify(el("cuttext").textContent.slice(0, 40)));
  await finishScene();
  await frames(10);
  if (el("cutview").classList.contains("on")) throw new Error("mid-gate scene stuck");
  if (!save().cuts.m30_3) throw new Error("m30_3 not marked seen");
  console.log("mid-gate pause/resume OK");

  // on to the tunnel end: Shortcut, then the mapped card
  let ended = false;
  for (let i = 0; i < 1500 && !ended; i++) {
    await frames(10);
    ended = el("cutview").classList.contains("on") || el("card").classList.contains("on");
  }
  if (!ended) throw new Error("tunnel end never reached");
  if (el("cutview").classList.contains("on")) {
    console.log("end scene opened OK; bubble:", JSON.stringify(el("cuttext").textContent.slice(0, 40)));
    await finishScene();
    await frames(3);
  }
  if (!el("card").classList.contains("on")) throw new Error("mapped card missing after end scene");
  const s1 = save();
  if (s1.cleared.indexOf(30) < 0) throw new Error("tunnel 30 not marked cleared");
  if (!s1.cuts.e30) throw new Error("e30 not marked seen");
  console.log("tunnel end -> Shortcut -> mapped card OK");
  fire(el("cardbtn"), "click");
  await frames(3);

  // gallery now shows the played scenes as seen
  fire(el("sceneBtn"), "click");
  await frames(1);
  const seenTitles = el("sceneGrid").children
    .filter((c) => c.className.indexOf("locked") < 0)
    .map((c) => c.children[1].textContent);
  for (const want of ["Of Course", "Shortcut"]) {
    if (seenTitles.indexOf(want) < 0) throw new Error(want + " not seen in gallery: " + JSON.stringify(seenTitles));
  }
  console.log("gallery seen-state OK:", JSON.stringify(seenTitles));

  // achievements gallery: 9 originals, all locked on a fresh save
  fire(el("achBtn"), "click");
  await frames(1);
  if (!el("achMenu").classList.contains("on")) throw new Error("ach gallery did not open");
  const achRows = el("achList").children;
  if (achRows.length !== 9) throw new Error("ach roster wrong: " + achRows.length);
  const achLocked = achRows.filter((c) => c.className.indexOf("locked") >= 0).length;
  if (achLocked !== 9) throw new Error("fresh save should lock all achievements");
  console.log("achievements gallery OK (9 locked)");
  if (errors.length) throw new Error("window errors during flow: " + JSON.stringify(errors));
  console.log("APP SMOKE OK");
})().catch((err) => { console.error("FAIL:", (err && err.message) || err); process.exit(1); });
