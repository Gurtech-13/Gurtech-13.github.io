/*
 * app.js - host layer for the Run 3 tribute. JS is I/O + UI only:
 * world map with branching tunnels, checkpoint HUD, character select,
 * story cards, and the demo autopilot. All simulation and drawing happen in
 * run3.wasm (engine files run3.c + render.c; level data in levels/levels.c).
 */
"use strict";
(function () {
  var STORY = window.STORY;
  var T = STORY.T, EDGES = STORY.EDGES, CHARS = STORY.C, RENAME = STORY.RENAME;

  var el = {};
  ["mapview", "gameview", "status", "cv", "hudstate", "checkpoint", "tunname",
   "bar", "msg", "card", "cardtitle", "cardtext", "cardwho", "cardbtn",
   "charrow", "legend", "backbtn"].forEach(function (id) { el[id] = document.getElementById(id); });

  var LS_KEY = "run3tribute-v1";
  var save;
  function loadSave() {
    try {
      var raw = localStorage.getItem(LS_KEY);
      if (raw) {
        var o = JSON.parse(raw);
        return {
          cleared: o.cleared || [],
          best: o.best || {},
          renames: o.renames || {},
          char: o.char | 0
        };
      }
    } catch (e) {}
    return { cleared: [], best: {}, renames: {}, char: 0 };
  }
  function persist() {
    try { localStorage.setItem(LS_KEY, JSON.stringify(save)); } catch (e) {}
  }
  save = loadSave();

  var exps = null, ctx = null, imageData = null, view = null, words = null;
  var inGame = false, curTun = 0, demo = /[?&]demo=1/.test(location.search);
  var STEP = 1 / 60, last = 0, acc = 0, lastState = -1;
  var keys = { l: false, r: false };
  var pointer = { down: false, x0: 0, t0: 0, moved: 0, steer: 0 };
  var bot = { air: 0, sprint: 0, dir: 0, side: 0 };
  var LATSPD = 2.6, FLIGHT = 0.92, LOOK = 22;
  var demoBusy = false;

  function fail(m) {
    el.status.textContent = "Failed to start: " + m + " (serve over http://)";
    el.status.className = "statusline err";
  }

  /* ---------------- names / labels ---------------- */
  function renamed(t) { return save.renames[t] || null; }
  function baseName(t) { return renamed(t) || T[t].name; }
  function fullName(t) {
    var d = T[t];
    if (d.kind === "letter") return baseName(t) + "-Tunnel";
    return d.name;
  }
  function letter(t) { return T[t].kind === "letter" && !renamed(t) ? T[t].name : null; }
  function cpLabel(t, lvl0) { /* checkpoint label: name-number */
    var n = lvl0 + 1;
    if (T[t].kind === "name" && !renamed(t)) return "Level " + n;
    return baseName(t) + "-" + n;
  }
  function cleared(t) { return save.cleared.indexOf(t) >= 0; }
  function unlocked(t) {
    if (t === 0) return true;
    return EDGES.some(function (e) { return e[0] !== t && e[1].indexOf(t) >= 0 && cleared(e[0]); });
  }
  function best(t) { return save.best[t] || 0; }
  function totalLevels() {
    var s = 0;
    for (var i = 0; i < T.length; i++) s += exps.run3_levels_in(i);
    return s;
  }
  function unlockedChars() { return save.cleared.length; }

  /* ---------------- wasm loading ---------------- */
  function load() {
    return fetch("run3.wasm", { credentials: "same-origin" })
      .then(function (r) {
        if (!r.ok) throw new Error("HTTP " + r.status);
        if (WebAssembly.instantiateStreaming) return WebAssembly.instantiateStreaming(r, {});
        return r.arrayBuffer().then(function (b) { return WebAssembly.instantiate(b, {}); });
      })
      .then(function (res) {
        exps = res.instance.exports;
        ctx = el.cv.getContext("2d");
        imageData = ctx.createImageData(640, 360);
        view = new Uint32Array(imageData.data.buffer);
        words = new Uint32Array(exps.memory.buffer, exps.run3_buffer(), 640 * 360);
        exps.run3_init((Date.now() ^ (Math.random() * 0xffffffff)) >>> 0);
        exps.run3_set_char(save.char);
        buildMap();
        buildChars();
        el.status.innerHTML = "WASM loaded &mdash; " + T.length + " tunnels, " + totalLevels() + " checkpoints";
        if (demo) {
          el.status.textContent = "WASM loaded - demo mode: autopilot mapping tunnels\u2026";
          setTimeout(demoNext, 600);
        }
        last = performance.now();
        requestAnimationFrame(frame);
      })
      .catch(function (e) { fail(e && e.message ? e.message : String(e)); throw e; });
  }

  /* ---------------- world map ---------------- */
  function buildMap() {
    var svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
    svg.setAttribute("viewBox", "0 0 1200 700");
    svg.id = "sv";
    el.legend.parentNode.insertBefore(svg, el.legend);

    /* edges underneath nodes */
    EDGES.forEach(function (e) {
      var a = T[e[0]];
      e[1].forEach(function (b) {
        var bb = T[b];
        var p = document.createElementNS("http://www.w3.org/2000/svg", "path");
        var mx = (a.x + bb.x) / 2, my = (a.y + bb.y) / 2;
        var dx = bb.x - a.x, dy = bb.y - a.y;
        var len = Math.sqrt(dx * dx + dy * dy) || 1;
        var cx = mx - (dy / len) * 40, cy = my + (dx / len) * 40;
        p.setAttribute("d", "M" + a.x + "," + a.y + " Q" + cx.toFixed(1) + "," + cy.toFixed(1) + " " + bb.x + "," + bb.y);
        p.setAttribute("class", "edge");
        p.style.stroke = bb.col;
        svg.appendChild(p);
      });
    });

    T.forEach(function (d) {
      var g = document.createElementNS("http://www.w3.org/2000/svg", "g");
      g.setAttribute("class", "tnode" + (unlocked(d.id) ? "" : " locked"));
      var c = document.createElementNS("http://www.w3.org/2000/svg", "circle");
      c.setAttribute("cx", d.x); c.setAttribute("cy", d.y);
      c.setAttribute("r", 27);
      c.setAttribute("fill", d.col);
      c.setAttribute("class", "node");
      g.appendChild(c);
      var big = d.kind === "letter" ? d.name : "M";
      var l1 = document.createElementNS("http://www.w3.org/2000/svg", "text");
      l1.setAttribute("x", d.x); l1.setAttribute("y", d.y - (d.kind === "letter" ? 0 : 8));
      l1.setAttribute("class", "lbl");
      if (d.kind === "name") l1.textContent = "M";
      else l1.textContent = d.name;
      g.appendChild(l1);
      if (d.kind === "name") {
        var nm = document.createElementNS("http://www.w3.org/2000/svg", "text");
        nm.setAttribute("x", d.x); nm.setAttribute("y", d.y + 6);
        nm.setAttribute("text-anchor", "middle");
        nm.setAttribute("class", "lbl");
        nm.setAttribute("style", "font-size:10px");
        nm.textContent = d.name;
        g.appendChild(nm);
      }
      var pr = document.createElementNS("http://www.w3.org/2000/svg", "text");
      pr.setAttribute("x", d.x); pr.setAttribute("y", d.y + 44);
      pr.setAttribute("class", "prog");
      pr.textContent = (cleared(d.id) ? "mapped" : (best(d.id) ? "gate " + (best(d.id)) : "locked")) +
        (unlocked(d.id) ? " \u00b7 " + exps.run3_levels_in(d.id) : "");
      g.appendChild(pr);
      if (renamed(d.id)) {
        var rn = document.createElementNS("http://www.w3.org/2000/svg", "text");
        rn.setAttribute("x", d.x); rn.setAttribute("y", d.y + 58);
        rn.setAttribute("class", "ren");
        rn.textContent = renamed(d.id);
        g.appendChild(rn);
      }
      if (!unlocked(d.id)) {
        var lk = document.createElementNS("http://www.w3.org/2000/svg", "text");
        lk.setAttribute("x", d.x); lk.setAttribute("y", d.y);
        lk.setAttribute("class", "lbl");
        lk.textContent = "\uD83D\uDD12";
        g.appendChild(lk);
      }
      g.addEventListener("click", function () {
        if (!unlocked(d.id)) { showLore(d); return; }
        play(d.id);
      });
      g.addEventListener("mouseenter", function () {
        if (!unlocked(d.id)) { el.legend.textContent = d.lore + " (locked)"; return; }
        el.legend.textContent = d.lore;
      });
      svg.appendChild(g);
    });
    var stats = document.createElement("div");
    stats.className = "stats";
    stats.innerHTML = mappedCountText();
    el.mapview.querySelector(".mhead").appendChild(stats);
  }
  function mappedCountText() {
    return "Mapped: " + save.cleared.length + "/" + T.length;
  }
  function refreshMapLabels() {
    var stats = el.mapview.querySelector(".stats");
    if (stats) stats.textContent = mappedCountText();
  }

  function buildChars() {
    el.charrow.textContent = "";
    CHARS.forEach(function (c) {
      var b = document.createElement("button");
      b.type = "button";
      b.className = "char" + (save.char === c.id ? " active" : "") + (unlockedChars() < c.need ? " locked" : "");
      var dot = document.createElement("span");
      dot.className = "dot";
      dot.style.background = c.col;
      var t = document.createElement("span");
      t.innerHTML = unlockedChars() >= c.need
        ? c.name + " <small>" + c.desc + "</small>"
        : c.name + " <small>clear " + c.need + " tunnel" + (c.need === 1 ? "" : "s") + "</small>";
      b.appendChild(dot); b.appendChild(t);
      b.addEventListener("click", function () {
        if (unlockedChars() < c.need) return;
        save.char = c.id;
        persist();
        if (exps) exps.run3_set_char(c.id);
        buildChars();
      });
      el.charrow.appendChild(b);
    });
  }

  /* ---------------- screens ---------------- */
  function show(screen) {
    inGame = screen === "game";
    el.mapview.style.display = screen === "map" ? "" : "none";
    el.gameview.style.display = screen === "game" ? "" : "none";
  }
  function play(t) {
    curTun = t;
    lastState = -1;
    exps.run3_seek(t, best(t));
    exps.run3_set_char(save.char);
    show("game");
    setHudStatic();
    msg("Tap / Space to start " + cpLabel(t, exps.run3_lvl()), "gate " + (exps.run3_lvl() + 1) + " of " + exps.run3_tunnel_levels());
  }
  function setHudStatic() {
    var t = curTun;
    var li = exps.run3_lvl();
    el.checkpoint.textContent = cpLabel(t, li);
    el.tunname.textContent = fullName(t) + " \u00b7 checkpoint " + (li + 1) + "/" + exps.run3_tunnel_levels();
    el.hudstate.textContent = "READY";
  }
  function backToMap() {
    show("map");
    buildMap();
    buildChars();
    refreshMapLabels();
    if (demo && !demoBusy) { demoBusy = true; setTimeout(demoNext, 700); }
  }
  function msg(html, small) {
    el.msg.innerHTML = html + (small ? "<small>" + small + "</small>" : "");
  }

  /* lore / cutscene card */
  function card(title, text, who, btn, cb) {
    el.cardtitle.textContent = title;
    el.cardtext.textContent = text;
    el.cardwho.textContent = who || "";
    el.cardbtn.textContent = btn || "Continue";
    el.card.classList.add("on");
    el.cardbtn.onclick = function () { el.card.classList.remove("on"); if (cb) cb(); };
  }
  function showLore(d) {
    card(d.kind === "letter" ? d.name + "-Tunnel" : d.name, d.lore, "The Runner's map", "Close", null);
  }
  function showLoreBeat(t) {
    var d = T[t];
    card("Mapped: " + fullName(t), d.lore, "The Runner's map", "Back to map", backToMap);
  }
  function showRename(t) {
    var r = RENAME[t];
    var was = fullName(t);
    save.renames[t] = r.to;
    persist();
    card(r.title + " \u2014 now \u201c" + r.to + "\u201d", r.text, "Tunnel " + r.from + " is renamed from \u201c" + was + "\u201d", "Back to map", backToMap);
  }

  /* ---------------- game loop ---------------- */
  function frame(now) {
    requestAnimationFrame(frame);
    acc += Math.min((now - last) / 1000, 0.1);
    last = now;
    if (!inGame || !exps) { acc = 0; return; }

    var steer = (keys.l ? -1 : 0) + (keys.r ? 1 : 0);
    if (pointer.down) steer = pointer.steer;

    var stepped = 0;
    while (acc >= STEP && stepped < 4) {
      if (demo) botThink(); else exps.run3_set_input(steer);
      exps.run3_step(STEP);
      acc -= STEP;
      stepped++;
    }
    if (!demo) exps.run3_set_input(steer);

    /* blit */
    var n = 640 * 360;
    for (var i = 0; i < n; i++) {
      var v = words[i];
      view[i] = (v & 0xff000000) | ((v >>> 16) & 0xff) | (v & 0x0000ff00) | ((v & 0xff) << 16);
    }
    ctx.putImageData(imageData, 0, 0);

    observe();
  }
  function observe() {
    var st = exps.run3_state();
    if (st === lastState) { if (st === 1) el.bar.style.width = (exps.run3_progress() * 100).toFixed(1) + "%"; return; }
    lastState = st;
    var t = curTun, lvl = exps.run3_lvl();
    if (st === 0) {
      setHudStatic();
      msg("Tap / Space to start " + cpLabel(t, lvl), "gate " + (lvl + 1) + " of " + exps.run3_tunnel_levels());
    } else if (st === 1) {
      el.hudstate.textContent = "RUN";
      el.msg.innerHTML = "";
    } else if (st === 2) {
      el.hudstate.textContent = "LOST";
      msg("You fell into the void!", "tap / Space to try " + cpLabel(t, lvl) + " again");
    } else if (st === 3) {
      /* checkpoint cleared */
      save.best[t] = Math.max(best(t), lvl + 1);
      persist();
      el.hudstate.textContent = "GATE";
      msg(cpLabel(t, lvl) + " cleared!", "tap / Space for the next stretch");
      if (demo) { try { el.status.textContent = "demo: " + cpLabel(t, lvl) + " cleared"; } catch (e) {} }
    } else if (st === 4) {
      el.hudstate.textContent = "MAPPED";
      msg("Tunnel mapped!", "heading back to the map");
      save.best[t] = Math.max(best(t), exps.run3_tunnel_levels());
      if (save.cleared.indexOf(t) < 0) save.cleared.push(t);
      persist();
      setTimeout(function () {
        if (RENAME[t] && !save.renames[t]) showRename(t);
        else showLoreBeat(t);
      }, 500);
      if (demo) {
        demoBusy = true;
        setTimeout(demoNext, 1600);
      }
    }
    el.bar.style.width = (exps.run3_progress() * 100).toFixed(1) + "%";
  }

  /* ---------------- input ---------------- */
  function tap() {
    if (!inGame || !exps) return;
    var st = exps.run3_state();
    if (st === 4) return; /* card flow handles the map return */
    try { exps.run3_flap(); } catch (e) {}
  }
  window.addEventListener("keydown", function (e) {
    var code = e.code;
    if (code === "Space" || code === "ArrowUp" || code === "KeyW") { e.preventDefault(); if (!demo) tap(); }
    else if (code === "ArrowLeft" || code === "KeyA") { keys.l = true; e.preventDefault(); }
    else if (code === "ArrowRight" || code === "KeyD") { keys.r = true; e.preventDefault(); }
    else if (code === "Escape") { if (inGame) backToMap(); }
  });
  window.addEventListener("keyup", function (e) {
    var code = e.code;
    if (code === "ArrowLeft" || code === "KeyA") keys.l = false;
    if (code === "ArrowRight" || code === "KeyD") keys.r = false;
  });
  el.cv.addEventListener("pointerdown", function (e) {
    pointer.down = true; pointer.x0 = e.clientX; pointer.t0 = Date.now(); pointer.moved = 0;
    el.cv.setPointerCapture(e.pointerId);
  });
  el.cv.addEventListener("pointermove", function (e) {
    if (!pointer.down) return;
    pointer.moved = Math.abs(e.clientX - pointer.x0);
    pointer.steer = Math.max(-1, Math.min(1, (e.clientX - pointer.x0) / 70));
  });
  el.cv.addEventListener("pointerup", function () {
    if (!pointer.down) return;
    pointer.down = false;
    if (pointer.moved < 10 && Date.now() - pointer.t0 < 350 && !demo) tap();
  });
  el.backbtn.addEventListener("click", function () { if (inGame) backToMap(); });
  el.msg.addEventListener("click", function () { if (!demo) tap(); });

  /* ---------------- demo autopilot (validated bot, new API) ---------------- */
  function botReset() { bot.air = 0; bot.sprint = 0; }
  function tileAt(s, r, l) { return exps.run3_tile(s, r, l) === 1; }
  function steerSafe(targetRing) {
    var k = exps.run3_lanes(), n = exps.run3_sides();
    var rps = exps.run3_rows_per();
    var prog = exps.run3_rowf();
    var cr = Math.floor(prog);
    var ring = exps.run3_ring();
    var T2 = n * k;
    var gi0 = ((Math.floor(ring) % T2) + T2) % T2;
    var solid = new Uint8Array(T2);
    for (var gi = 0; gi < T2; gi++) solid[gi] = exps.run3_tile(Math.floor(gi / k), cr, gi % k);
    if (!solid[gi0]) return 0;
    var lo = gi0, hi = gi0;
    for (var q = 0; q < T2 && solid[((lo - 1 + T2) % T2)]; q++) lo = (lo - 1 + T2) % T2;
    for (q = 0; q < T2 && solid[((hi + 1) % T2)]; q++) hi = (hi + 1) % T2;
    var loU = lo, hiU = hi;
    if (hi < lo) { if (ring >= lo) hiU = hi + T2; else loU = lo - T2; }
    var target = targetRing;
    while (target > ring + T2 / 2) target -= T2;
    while (target < ring - T2 / 2) target += T2;
    var inp = Math.max(-1, Math.min(1, (target - ring) * 3));
    var reach = ring + (inp * LATSPD) / rps;
    var minP = loU + 1e-3, maxP = hiU + 1 - 1e-3;
    if (reach < minP) inp = ((minP - ring) * rps) / LATSPD;
    else if (reach > maxP) inp = ((maxP - ring) * rps) / LATSPD;
    return Math.max(-1, Math.min(1, inp));
  }
  function botThink() {
    var st = exps.run3_state();
    if (st === 0 || st === 2 || st === 3) { exps.run3_flap(); botReset(); return; }
    if (st === 4) return;
    var s = exps.run3_side(), k = exps.run3_lanes();
    var rps = exps.run3_rows_per();
    var prog = exps.run3_rowf();
    var ring = exps.run3_ring();
    var airRows = FLIGHT * rps;
    if (bot.air > 0) { bot.air -= STEP; exps.run3_set_input(0); return; }
    if (bot.sprint > 0) {
      if (exps.run3_side() !== bot.side) { bot.sprint = 0; exps.run3_set_input(0); return; }
      var over = bot.dir > 0 ? (s + 1) * k + 0.7 : s * k - 0.7;
      exps.run3_set_input(steerSafe(over));
      return;
    }
    var cr = Math.floor(prog);
    var g = -1;
    for (var rr = cr + 1; rr < cr + LOOK; rr++) {
      var full = true;
      for (var l = 0; l < k; l++) if (tileAt(s, rr, l)) { full = false; break; }
      if (full) { g = rr; break; }
    }
    if (g >= 0) {
      var w = 0;
      for (var r2 = g; ; r2++) {
        var full2 = true;
        for (var l2 = 0; l2 < k; l2++) if (tileAt(s, r2, l2)) { full2 = false; break; }
        if (!full2) break;
        w++;
      }
      var posIn = ring - s * k;
      var dp = k - posIn, dm = posIn;
      var dir = dp <= dm ? 1 : -1;
      var crossRows = (Math.min(dp, dm) / LATSPD) * rps;
      var far = g - prog > 8.0;
      var jumpable = airRows >= w + 1.0;
      if (w === 1 && airRows >= 1.4 && g - prog <= airRows - 1.0 && g - prog > 0.2) {
        exps.run3_flap(); bot.air = FLIGHT; return;
      }
      if (w >= 2 && !far && jumpable && g - prog <= airRows - w - 0.2 && g - prog > 0.2) {
        exps.run3_flap(); bot.air = FLIGHT; return;
      }
      if (w >= 2 && (far || g - prog <= crossRows + 0.6) && g - prog > 0.4) {
        bot.sprint = 1; bot.dir = dir; bot.side = s;
        exps.run3_set_input(steerSafe(dir > 0 ? (s + 1) * k + 0.7 : s * k - 0.7));
      } else if (w === 1) {
        exps.run3_set_input(0);
      }
      return;
    }
    /* weave */
    var best = -1, bestScore = -1e9;
    for (var l3 = 0; l3 < k; l3++) {
      if (!tileAt(s, cr, l3)) continue;
      var nn = 0;
      for (var r3 = cr + 1; r3 < cr + LOOK; r3++) { if (tileAt(s, r3, l3)) nn++; else break; }
      var runEnd = nn >= LOOK - 1 ? 1e9 : cr + 1 + nn;
      var travel = (Math.abs(l3 + 0.5 - posIn) * rps) / LATSPD;
      if (runEnd - travel > bestScore) { bestScore = runEnd - travel; best = l3; }
    }
    exps.run3_set_input(best >= 0 ? steerSafe(s * k + best + 0.5) : 0);
  }
  function demoNext() {
    demoBusy = false;
    /* find the first tunnel not fully mapped, else loop to 0 */
    var pick = -1;
    for (var i = 0; i < T.length; i++) if (unlocked(i) && !cleared(i)) { pick = i; break; }
    if (pick < 0) pick = 0;
    play(pick);
    var st = exps.run3_state();
    if (st === 0) { exps.run3_flap(); el.hudstate.textContent = "RUN"; }
  }

  window.addEventListener("error", function (e) {
    try { el.status.textContent = "Runtime error: " + (e.message || e); el.status.className = "statusline err"; } catch (x) {}
  });
  window.addEventListener("unhandledrejection", function (e) {
    try { el.status.textContent = "Runtime error: " + (e.reason && e.reason.message ? e.reason.message : e.reason); el.status.className = "statusline err"; } catch (x) {}
  });

  show("map");
  load();
})();
