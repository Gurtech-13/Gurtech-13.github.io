/* app.js - thin JS glue. All rendering happens in run3.wasm canvas.
 * JS handles: WASM loading, keyboard/pointer events, localStorage, story cards, shop overlay, music.
 */
"use strict";
(function () {
  var STORY = window.STORY;
  var T = STORY.T, EDGES = STORY.EDGES, CHARS = STORY.C, RENAME = STORY.RENAME;
  var MUSIC_MAP = STORY.MUSIC || {};
  var CUT = window.STORY_CUT || {};
  var PATH_CUT = window.STORY_PATH_CUT || [];
  var END_CHAIN = window.STORY_END_CHAIN || {};
  var CAST = window.STORY_CAST || {};
  var MID_CUTS = window.STORY_MID_CUTS || [];
  var STAGE = window.STORY_STAGE || {};
  var TIMELINE = window.STORY_TIMELINE || {};
  var CAMSHOT = window.STORY_CAMSHOT || {};
  var ACHIEVEMENTS = window.ACHIEVEMENTS || [];
  var ACH_NEED = window.ACH_PLANETSTOLEN_NEED || 8;

  /* ===== STAGED CUTSCENE CAST =====
     The engine draws the cutscene cast inside the tunnel: in the staged
     states it renders no runner and draws host-placed slots instead, so the
     HTML portraits are retired. Baked scenes carry STORY_TIMELINE keyframes
     (per dialogue frame: each actor's ring around the tube and z rows ahead
     of the staged camera, plus props); custom scenes with no baked timeline
     synthesise a keyframe per line from their cast. The host eases the slots
     toward the current keyframe and pushes the float staged camera each
     frame. */
  var NACT = 8, NPROP = 4;
  /* kind 0 = the slot draws nothing: a scene can switch a prop off (the map
     in ComingThrough is parked away once it is handed back) instead of the
     host carrying its last position forward forever */
  /* kind 0 draws nothing; 1 map (flat 0xBCAB7C panel), 5 candy panel,
     7 TrainRide balloon. There is no boat/hover/spoon prop — the ride
     scenes parent their cast to an invisible frame, and ChangeTheSubject's
     wooden spoon is a dialogue line, not an object. */
  var KIND_ID = { none: 0, map: 1, candy: 5, balloon: 7 };
  var stage = null;
  /* synthesised timelines for scenes with no baked one (the custom extended
     tunnels): one keyframe per dialogue line, each cast member posted on its
     own wall (opposite sides of the tube) and the speaker stepping nearer
     the camera, which leans toward them. Bubble side (x) picks the speaker,
     the same cue the original used. */
  function synthSegs(name, lines) {
    var cast = (CAST[name] || []).slice(0, 4);
    if (!cast.length) return null;
    var tot = 16.0;
    try {
      tot = (exps.run3_sides() | 0) * (exps.run3_lanes() | 0);
      if (!(tot >= 4)) tot = 16.0;
    } catch (e) {}
    var n = cast.length, segs = [];
    var count = (lines && lines.length) || 1;
    for (var i = 0; i < count; i++) {
      var L = lines && lines[i];
      var speak = (L && typeof L.x === "number") ? (L.x < 0 ? 0 : 1) : 0;
      var actors = [];
      for (var k = 0; k < n; k++) {
        var near = (n === 1) || (k === (speak % n));
        /* just in front of the staged camera: the original camera sits IN
           the scene (on the tube axis, level with the cast), so anchoring
           the cast rows down the tube made it read as "too far" */
        actors.push({ ch: cast[k], ring: 4.0 + k * (tot / 2),
                      z: near ? 0.9 : 2.2 });
      }
      segs.push({ f: i, cam: [speak === 0 ? -0.22 : 0.22, 0.04],
                  actors: actors, props: [] });
    }
    return segs;
  }
  function timelineFor(name, lines) {
    var tl = TIMELINE[name];
    if (tl && tl.segs && tl.segs.length) return tl.segs;
    return synthSegs(name, lines);
  }
  function segIndex(segs, f) {
    var idx = 0;
    for (var i = 0; i < segs.length; i++) {
      if (typeof segs[i].f !== "number" || segs[i].f > f) break;
      idx = i;
    }
    return idx;
  }
  /* ===== STAGE TRACE =====
     Prints what the cutscene staging hands the engine AND what the engine makes
     of it, so a wrong-looking frame can be told from a wrong load:
       start - scene, its (tun,lvl), the cast's front row, authored vs fallback
       seg   - the dialogue keyframe: its cam array, the cast slots, and the
               camera it asks for
       push  - the ENGINE's own view: staged pos, shot distance, whether an
               authored camera is in force, the camera place the renderer
               actually uses, and the frame's gauge in radians
               (PI/2 + PI = 4.7124 means the half-turn rollout is live).
     `run3StageLog(false)` from the console silences it. */
  var STAGE_LOG = true;
  window.run3StageLog = function (v) { STAGE_LOG = !!v; };
  function slog() {
    if (!STAGE_LOG) return;
    try { console.log.apply(console, arguments); } catch (eSL) {}
  }
  function fmtN(v, d) {
    return (typeof v === "number" && isFinite(v)) ? v.toFixed(d == null ? 1 : d) : String(v);
  }
  function fmtAuth(t) {
    if (!t) return "none";
    return "(" + fmtN(t.x) + "," + fmtN(t.y) + "," + fmtN(t.z) + " zb" + (t.zb || 0) +
           " q" + (t.q ? "[" + t.q.join(",") + "]" : "identity") + ")";
  }
  function stageOpen(name, frame, lines) {
    stage = null;
    if (!exps || !exps.run3_stage_actor) return;
    var baked = TIMELINE[name] && TIMELINE[name].segs && TIMELINE[name].segs.length;
    var segs = timelineFor(name, lines);
    if (!segs) return;
    var meta = TIMELINE[name] || {};
    stage = { segs: segs, cur: [], tgt: [], curP: [], tgtP: [],
              side: 0, lift: 0, tside: 0, tlift: 0,
              auth: null, tauth: null,
              /* synthesised scenes still take the authored camera runs */
              cams: baked ? null : (CAMSHOT[name] || null) };
    /* the scene's front cast row: the anchor the bake measures the cast's own
       z from, which the engine needs to resolve the camera's authored z
       against the level (see run3_stage_shot) */
    stage.fr = meta.fr || 0;
    /* WHICH CAMERA MODEL this scene uses. The bake records it ONCE per scene
       (`ca`: the scene had a setPosition camera), NOT per segment — every
       segment of an authored scene carries the same model. Reading it off a
       segment finds nothing in a baked timeline (segments are {f,cam,actors,
       props}), which silently dropped every authored scene onto the legacy
       side/lift path: the camera went to a corner instead of the bore axis
       and the frame's gauge stayed 0, so the half-turn presentation never
       applied. Synthesised scenes keep using CAMSHOT (stage.cams). */
    stage.authored = baked ? !!meta.ca : false;
    var stg = STAGE[name] || {};
    slog("[stage] start " + name + " tun=" + (stg.tun != null ? stg.tun : "?") +
         " lvl=" + (stg.end ? "end" : (stg.lvl != null ? stg.lvl : "?")) +
         " frame=" + (frame || 0) + " frontRow=" + fmtN(stage.fr) +
         " segs=" + segs.length + " camModel=" + (meta.ca ? "authored" : "fallback") +
         " timeline=" + (baked ? "baked" : "synthesised"));
    stageGoto(segIndex(segs, frame || 0), true);
    stageShot(frame || 0);
    /* a few scenes only place their cast a few frames in (the tunnel opens
       empty): stand them up front instead of blinking them in later */
    if (!stage.cur.length) {
      for (var j = 0; j < segs.length; j++) {
        var a = segs[j].actors || [];
        if (!a.length) continue;
        stage.cur = a.slice(0, NACT).map(function (x) { return { ch: x.ch, ring: x.ring, z: x.z }; });
        stage.tgt = stage.cur.map(function (c) { return { ch: c.ch, ring: c.ring, z: c.z }; });
        break;
      }
    }
  }
  /* authored staged camera for a frame, when the scene has no baked timeline */
  function stageShot(fr) {
    if (!stage || !stage.cams) return;
    var cur = null;
    for (var i = 0; i < stage.cams.length; i++) {
      if (stage.cams[i][0] <= fr) cur = stage.cams[i];
      else break;
    }
    if (!cur) return;
    if (cur.length >= 5) {
      /* AUTHORED run [frame, x_px, y_px, z_px, rot, zb]: the whole camera. */
      stage.tauth = { x: cur[1] || 0, y: cur[2] || 0, z: cur[3] || 0,
                      zb: (typeof cur[5] === "number" ? cur[5] : 0),
                      q: cur[4] || null };
    } else {
      /* legacy normalised [frame, side, lift]: a fallback scene */
      stage.tside = cur[1] || 0; stage.tlift = cur[2] || 0;
    }
  }
  /* move to the keyframe covering dialogue frame i; slots that exist in both
     keyframes ease across, new ones start on their target so a growing cast
     never streaks through the tunnel */
  function stageGoto(i, snap) {
    if (!stage || i < 0 || i >= stage.segs.length) return;
    var s = stage.segs[i];
    var prev = snap ? [] : stage.cur, prevP = snap ? [] : stage.curP;
    /* a keyframe with no cast means "unchanged": carry the previous
       positions forward so the scene never blinks its cast away */
    var act = (s.actors || []).slice(0, NACT);
    var pr = (s.props || []).slice(0, NPROP);
    if (!act.length && prev.length && !snap)
      act = prev.map(function (c) { return { ch: c.ch, ring: c.ring, z: c.z }; });
    if (!pr.length && prevP.length && !snap)
      pr = prevP.map(function (p) { return { kind: p.kind, ring: p.ring, z: p.z, size: p.size, inset: p.inset || 0 }; });
    stage.tgt = act;
    stage.tgtP = pr;
    stage.cur = [];
    for (var k = 0; k < act.length; k++) {
      var p = prev[k];
      stage.cur.push(p ? { ch: act[k].ch, ring: p.ring, z: p.z }
                       : { ch: act[k].ch, ring: act[k].ring, z: act[k].z });
    }
    stage.curP = [];
    for (var m = 0; m < pr.length; m++) {
      var q = prevP[m];
      /* prop `size` is a width in character heights (see render.c); 1.6 is a
         map-sized panel, the fallback for a segment that omits it */
      stage.curP.push(q ? { kind: pr[m].kind, ring: q.ring, z: q.z, size: q.size || 1.6, inset: q.inset || 0 }
                        : { kind: pr[m].kind, ring: pr[m].ring, z: pr[m].z, size: pr[m].size || 1.6, inset: pr[m].inset || 0 });
    }
    if (s.cam) {
      /* an AUTHORED scene's cam is [x_px, y_px]: hold the current authored
         state, move the pan (the original eases the same way). A legacy
         normalised cam keeps the old behaviour. The timeline's `ca` flag
         says which model this scene uses (a baked authored scene has no
         CAMSHOT polling of its own — stage.cams is null there). */
      if (stage.authored || s.ca || stage.cams) {
        stage.tauth = stage.tauth || { x: 0, y: 0, z: 0, q: null };
        stage.tauth.x = s.cam[0] || 0;
        stage.tauth.y = s.cam[1] || 0;
        /* the baked timeline carries the camera's authored z per segment (the
           dolly); a synthesised scene takes it from CAMSHOT in stageShot */
        if (s.cam.length > 2) stage.tauth.z = s.cam[2] || 0;
        if (s.cam.length > 3) stage.tauth.zb = s.cam[3] || 0;
      } else {
        stage.tside = s.cam[0] || 0; stage.tlift = s.cam[1] || 0;
      }
    }
    slog("[stage] seg f=" + (typeof s.f === "number" ? s.f : "-") +
         " cam=" + JSON.stringify(s.cam) +
         " model=" + ((stage.authored || s.ca || stage.cams) ? "authored" : "fallback") +
         " cast=" + JSON.stringify(act.map(function (c) { return [c.ch, c.ring, c.z]; })) +
         " -> target " + fmtAuth(stage.tauth));
  }
  function stagePush() {
    if (!stage) return;
    for (var i = 0; i < NACT; i++) {
      var c = stage.cur[i];
      try {
        if (c) exps.run3_stage_actor(i, c.ch, c.ring, c.z, 1);
        else exps.run3_stage_actor(i, 0, 4, 6, 0);
      } catch (e) {}
    }
    if (exps.run3_stage_prop) {
      for (var p = 0; p < NPROP; p++) {
        var q = stage.curP[p];
        try {
          var kd = q ? (q.kind in KIND_ID ? KIND_ID[q.kind] : 1) : 0;
          if (q) exps.run3_stage_prop(p, kd, q.ring, q.z, q.size || 1.6, q.inset || 0, 1);
          else exps.run3_stage_prop(p, 0, 4, 6, 2, 0, 0);
        } catch (e2) {}
      }
    }
    /* the camera: an AUTHORED scene hands the whole position+quaternion to
       the engine (which converts px->units and rebases z); a FALLBACK scene
       gets the normalised pan as before. Passing one resets the other in the
       engine, so the two models can never bleed across scenes. */
    if (stage.auth) {
      var a = stage.auth, q = a.q || [0, 0, 0, 1];
      try {
        if (exps.run3_stage_shot) exps.run3_stage_shot(a.z, a.zb || 0, stage.fr || 0);
      } catch (e7) {}
      try { if (exps.run3_stage_camera) exps.run3_stage_camera(a.x, a.y, a.z, q[0], q[1], q[2], q[3]); } catch (e4) {}
    } else {
      try { if (exps.run3_stage_cam) exps.run3_stage_cam(stage.side, stage.lift); } catch (e3) {}
    }
    if (STAGE_LOG && exps) stage._n = (stage._n || 0) + 1;
  }
  /* WHAT THE ENGINE RESOLVED, logged AFTER the frame is rendered.

     Reported from stagePush instead (i.e. before render_frame) this was a trap:
     the gauge and the camera place are written DURING the render, so the log
     showed the PREVIOUS frame's values — a freshly opened scene always printed
     `gauge=0.0000 camPlace=(0,0)`, which reads exactly like "the flip is off and
     the camera is not on the axis" even when both are live. Measured directly
     on a staged frame the same build reports gauge 4.712389 and engPos (0,0,-d),
     so the logging, not the engine, was lying. */
  function stageEngineLog() {
    if (!STAGE_LOG || !exps || !stage) return;
    if (!(stage._n === 1 || stage._n % 30 === 0)) return;
    var E = exps, pv = "?", gv = "?";
    try { pv = "(" + fmtN(E.run3_stage_pos_x()) + "," + fmtN(E.run3_stage_pos_y()) + "," + fmtN(E.run3_stage_pos_z()) + ")"; } catch (eP) {}
    try { if (E.run3_stage_gauge) gv = fmtN(E.run3_stage_gauge(), 4); } catch (eG) {}
    slog("[stage] push#" + stage._n + " auth=" + fmtAuth(stage.auth) +
         " engPos=" + pv +
         " dist=" + (E.run3_stage_dist ? fmtN(E.run3_stage_dist()) : "?") +
         " hasCam=" + (E.run3_stage_has_camera ? E.run3_stage_has_camera() : "?") +
         " camPlace=(" + fmtN(E.run3_cam_x()) + "," + fmtN(E.run3_cam_y()) + ")" +
         " gauge=" + gv + (gv === "4.7124" ? " [half-turn rollout live]" : ""));
  }
  /* eased toward the current keyframe; called once per rendered frame */
  function stageTick() {
    if (!stage) return;
    var f = 0.18;
    for (var i = 0; i < stage.cur.length; i++) {
      var c = stage.cur[i], t = stage.tgt[i];
      if (!t) continue;
      c.ring += (t.ring - c.ring) * f;
      c.z += (t.z - c.z) * f;
    }
    for (var p = 0; p < stage.curP.length; p++) {
      var q = stage.curP[p], w = stage.tgtP[p];
      if (!w) continue;
      q.ring += (w.ring - q.ring) * f;
      q.z += (w.z - q.z) * f;
      q.size += ((w.size || 2) - q.size) * f;
      q.inset += ((w.inset || 0) - (q.inset || 0)) * f;
    }
    stage.side += (stage.tside - stage.side) * f;
    stage.lift += (stage.tlift - stage.lift) * f;
    /* the AUTHORED camera eases its pan (the scenes move position every
       frame); the quaternion SNAPS to the target frame's — the original sets
       an exact orientation per camera key, and slerping between two turns
       through angles the scene never authored produces invented poses */
    if (stage.tauth) {
      stage.auth = stage.auth || { x: 0, y: 0, z: 0, zb: 0, q: null };
      stage.auth.zb = stage.tauth.zb || 0;
      stage.auth.x += (stage.tauth.x - stage.auth.x) * f;
      stage.auth.y += (stage.tauth.y - stage.auth.y) * f;
      stage.auth.z += (stage.tauth.z - stage.auth.z) * f;
      var tq = stage.tauth.q, cq = stage.auth.q;
      if (tq && cq && tq.length === 4 && cq.length === 4) {
        /* shortest-path nudge toward the target quaternion, then normalise */
        var dot = cq[0]*tq[0] + cq[1]*tq[1] + cq[2]*tq[2] + cq[3]*tq[3];
        var s2 = dot < 0 ? -f : f;
        for (var k4 = 0; k4 < 4; k4++) cq[k4] += tq[k4] * s2;
        var n4 = Math.sqrt(cq[0]*cq[0] + cq[1]*cq[1] + cq[2]*cq[2] + cq[3]*cq[3]);
        if (n4 > 1e-9) for (var k5 = 0; k5 < 4; k5++) cq[k5] = cq[k5] / n4;
      } else if (tq) {
        stage.auth.q = [tq[0], tq[1], tq[2], tq[3]];
      }
    }
    stagePush();
  }
  function stageClose() {
    slog("[stage] end");
    stage = null;
    /* forget the authored camera: the next scene must not inherit it */
    try { if (exps && exps.run3_stage_camera) exps.run3_stage_camera(0, 0, 0, 0, 0, 0, 1); } catch (e5) {}
    try { if (exps && exps.run3_stage_shot) exps.run3_stage_shot(0, 0, 0); } catch (e7) {}
    try { if (exps && exps.run3_stage_cam) exps.run3_stage_cam(0, 0); } catch (e6) {}
    for (var i = 0; i < NACT; i++) { try { exps.run3_stage_actor(i, 0, 4, 6, 0); } catch (e) {} }
    for (var p = 0; p < NPROP; p++) { try { exps.run3_stage_prop(p, 0, 4, 6, 2, 0, 0); } catch (e2) {} }
    try { if (exps.run3_stage_cam) exps.run3_stage_cam(0, 0); } catch (e3) {}
  }
  var prevLvl = -1, lastMusLvl = -1;
  function midKey(tun, lvl) { return "m" + tun + "_" + lvl; }
  function toast(msg) {
    var n=document.createElement("div");
    n.textContent=msg;
    n.style.cssText="position:fixed;top:20px;left:50%;transform:translateX(-50%);background:rgba(15,23,42,.95);color:#fbbf24;padding:12px 24px;border-radius:999px;font-weight:700;font-size:.9rem;z-index:999;box-shadow:0 4px 20px rgba(0,0,0,.5)";
    document.body.appendChild(n);
    setTimeout(function(){n.style.opacity="0";},2000);
    setTimeout(function(){if(n.parentNode)n.parentNode.removeChild(n);},2500);
  }

  var cv, ctx, imageData, view, words, exps;
  var W = 1280, H = 720; // will be updated from WASM after load (1280x720 fullscreen)
  var inGame = false, curTun = 0;
  var lastState = -1, STEP = 1/60, last = 0, acc = 0, gateBusy = false;
  var keys = { l: false, r: false };
  var pointer = { down: false, x0: 0, y0: 0, t0: 0, moved: 0 };
  var demo = /[?&]demo=1/.test(location.search), demoBusy = false;

  var LS_KEY = "run3tribute-v3";
  var save;
  function loadSave() {
    try { var r = localStorage.getItem(LS_KEY); if (r) { var o = JSON.parse(r); return { cleared: o.cleared||[], best: o.best||{}, renames: o.renames||{}, cuts: o.cuts||{}, char: o.char|0, musicVol: typeof o.musicVol==="number"?o.musicVol:0.5, powercells: o.powercells|0, charUnlocked: o.charUnlocked||[], unlockedExtra: o.unlockedExtra||[], ach: o.ach||{}, achProg: o.achProg||{dislodged:0} }; } } catch(e) {}
    return { cleared:[], best:{}, renames:{}, cuts:{}, char:0, musicVol:0.5, powercells:0, charUnlocked:[], unlockedExtra:[], ach:{}, achProg:{dislodged:0} };
  }
  function persist() { try { localStorage.setItem(LS_KEY, JSON.stringify(save)); } catch(e) {} }
  save = loadSave();
  if (!save.charUnlocked) save.charUnlocked = [];
  if (!save.unlockedExtra) save.unlockedExtra = [];
  if (!save.ach) save.ach = {};
  if (!save.achProg) save.achProg = { dislodged: 0 };

  function cleared(t) { return save.cleared.indexOf(t)>=0; }
  function unlocked(t) {
    if (t===0) return true;
    if (save.unlockedExtra.indexOf(t)>=0) return true;
    return EDGES.some(function(e){ return e[0]!==t && e[1].indexOf(t)>=0 && cleared(e[0]); });
  }
  function syncMapToWasm() {
    if (!exps || !exps.run3_map_sync_state) return;
    for (var i = 0; i < T.length; i++) {
      var lk = unlocked(i) ? 0 : 1;
      var cl = cleared(i) ? 1 : 0;
      try { exps.run3_map_sync_state(i, lk, cl); } catch(e) {}
    }
  }
  /* ===== CHARACTER UNLOCKS =====
     story.js C[] is the ORIGINAL game's character registry order, and C[i].sprite
     is this port's sprite-atlas id. The engine, save.char, the char-lock table
     and the cutscene casts all speak ATLAS ids, so the predicates below take an
     atlas id and go through CHAR_BY_SPRITE.

     Unlocking follows the original (CharacterDef.§<!,§ + §4H§): a progress
     condition, or the power-cell price §1V§ (the original's own "...Or..."
     hints). Only the progress conditions this port can evaluate are modelled
     (the Skater's level-10 scene, the Lizard's 40 levels, the Child's low-power
     area, the Bunny's 8 achievements); every other registry condition depends
     on the original's explore level-group tables (§>K§), which this port does
     not carry, so those characters are purchase-only here. */
  var CHAR_BY_SPRITE = {};
  (function () {
    for (var i = 0; i < CHARS.length; i++) CHAR_BY_SPRITE[CHARS[i].sprite] = CHARS[i];
  })();
  function charBySprite(cid) { return CHAR_BY_SPRITE[cid] || CHARS[0]; }
  /* levels finished in Explore Mode = sum of each tunnel's best checkpoint */
  function exploreLevels() {
    var n = 0, k;
    for (k in save.best) n += (save.best[k] | 0);
    return n;
  }
  function charProgressOk(ch) {
    var u = ch.unlock;
    if (u === "free") return true;
    if (!u) return false;
    if (u.cut) return cutSeen(midKey(u.cut[0], u.cut[1]));
    if (u.levels) return exploreLevels() >= u.levels;
    if (u.tunnel != null) return cleared(u.tunnel);
    if (u.ach) return achCount() >= u.ach;
    return false;
  }
  function charBought(cid) {
    return !!(save.charUnlocked && save.charUnlocked.indexOf(cid) >= 0);
  }
  function charLocked(cid) {
    var ch = charBySprite(cid);
    return !charBought(cid) && !charProgressOk(ch);
  }
  function charUnlockReq(cid) {
    var ch = charBySprite(cid), u = ch.unlock, out = [];
    if (u && u !== "free" && !charProgressOk(ch)) {
      if (u.cut) out.push("Finish Primary level 10 in Explore Mode.");
      else if (u.levels) out.push("Finish " + u.levels + " levels in Explore Mode. (" + exploreLevels() + "/" + u.levels + ")");
      else if (u.tunnel != null) out.push("Complete the low-power area (the Dark tunnel).");
      else if (u.ach) out.push("Earn " + u.ach + " achievements. (" + achCount() + "/" + u.ach + ")");
    }
    if (ch.price > 0) out.push((out.length ? "Or buy for " : "Buy for ") + ch.price + " power cells. (you have " + (save.powercells | 0) + ")");
    return out.length ? out.join(" ") : "Not unlockable here.";
  }
  function syncCharsToWasm() {
    if (!exps || !exps.run3_char_set_locked) return;
    for (var i = 0; i < CHARS.length; i++) {
      var cid = CHARS[i].sprite;
      try { exps.run3_char_set_locked(cid, charLocked(cid) ? 1 : 0); } catch(e) {}
    }
  }
  /* buy a character with power cells, then select it */
  function buyChar(cid) {
    var ch = charBySprite(cid);
    if (!charLocked(cid)) return false;
    if (!(ch.price > 0)) { toast("Not for sale \u2014 earn it in Explore Mode."); return false; }
    var have = save.powercells | 0;
    if (have < ch.price) { toast("Not enough power cells: " + have + "/" + ch.price); return false; }
    save.powercells = have - ch.price;
    save.charUnlocked = save.charUnlocked || [];
    if (save.charUnlocked.indexOf(cid) < 0) save.charUnlocked.push(cid);
    persist(); syncCharsToWasm();
    toast(ch.name + " unlocked!");
    exps.run3_menu_select_char(cid);
    save.char = cid; persist();
    return true;
  }
  function showLockedChar(cid) {
    var ch = charBySprite(cid);
    var body = (ch.desc ? ch.desc + " " : "") + "Locked. " + charUnlockReq(cid);
    if (ch.price > 0 && (save.powercells | 0) >= ch.price) {
      showCard(ch.name + " \u2014 Locked", body, "Locked", "Close", function(){}, null,
               "Buy \u2014 " + ch.price + " cells", function(){ buyChar(cid); });
    } else {
      showCard(ch.name + " \u2014 Locked", body, "Locked", "Close", function(){}, null);
    }
  }
  function syncBestToWasm() {
    if (!exps || !exps.run3_map_set_best) return;
    for (var i = 0; i < T.length; i++) {
      try { exps.run3_map_set_best(i, save.best[i]||0); } catch(e) {}
    }
  }
  function syncAllToWasm() { syncMapToWasm(); syncCharsToWasm(); syncBestToWasm(); syncGatesToWasm(); }
  /* mid-tunnel scene gates: the engine PAUSES (S_GATE) on an armed
     checkpoint instead of rolling on, so the scene stages on the level just
     completed. Only unseen scenes are armed — the engine consumes an arm
     when it fires and the host re-arms after each scene. */
  function syncGatesToWasm() {
    if (!exps || !exps.run3_mid_arm) return;
    try { if (exps.run3_mid_clear) exps.run3_mid_clear(); } catch (e) {}
    for (var i = 0; i < MID_CUTS.length; i++) {
      var m = MID_CUTS[i];
      if (cutSeen(midKey(m.tun, m.lvl))) continue;
      try { exps.run3_mid_arm(m.tun, m.lvl); } catch (e2) {}
    }
  }

  /* ===== MUSIC ===== */
  var musicAudio=null, currentMusic=null, musicMuted=false;
  function playMusic(name) {
    if (!name||musicMuted) return;
    if (currentMusic===name && musicAudio && !musicAudio.ended) return;
    currentMusic=name;
    if (musicAudio) { musicAudio.pause(); musicAudio=null; }
    musicAudio=new Audio("assets/music/"+name+".mp3");
    musicAudio.loop=true; musicAudio.volume=save.musicVol;
    musicAudio.play().catch(function(){});
  }
  function stopMusic() { if(musicAudio){musicAudio.pause();musicAudio=null;} currentMusic=null; }
  function toggleMusic() {
    musicMuted=!musicMuted;
    if(musicMuted) stopMusic();
    else if(inGame) { if(currentMusic) playMusic(currentMusic); else playMusic(levelTrack(curTun)); }
  }

  /* ===== STORY CARD ===== */
  function showCard(title,text,who,btn,cb,img,alt,altCb) {
    document.getElementById("cardtitle").textContent=title;
    document.getElementById("cardtext").textContent=text;
    document.getElementById("cardwho").textContent=who||"";
    document.getElementById("cardbtn").textContent=btn||"Continue";
    /* optional second action (used by the character purchase card) */
    var b2=document.getElementById("cardbtn2");
    if(b2){
      if(alt){b2.textContent=alt;b2.style.display="";b2.onclick=function(){document.getElementById("card").classList.remove("on");if(altCb)altCb();};}
      else {b2.style.display="none";b2.onclick=null;}
    }
    var ci=document.getElementById("cardimg");
    if(img){ci.src="assets/cutscenes/"+img;ci.style.display="block";ci.onerror=function(){ci.style.display="none";};}
    else ci.style.display="none";
    document.getElementById("card").classList.add("on");
    document.getElementById("cardbtn").onclick=function(){document.getElementById("card").classList.remove("on");if(cb)cb();};
  }

  /* ===== CUTSCENES (original dialogue, baked by bake_cutscenes.py) ===== */
  function cutTitle(name) {
    return String(name||"").replace(/([a-z])([A-Z])/g, "$1 $2");
  }
  function cutLines(name) {
    if (name === "ThanksForPlaytesting")
      return [{ m: "New hints unlocked! Replay the Coordination Challenges to view them.", small: false, x: 0, y: 120 }];
    return CUT[name] || null;
  }
  /* The cutscene is composed by the ENGINE, full-window: the held tunnel and
     the cast render behind, and the engine draws the title, the dialogue and
     the Continue prompt over them. The DOM nodes below keep only the click
     target (and their text, which the tests read) — nothing of the card is
     visible. */
  function cutWriteStr(ptr, s) {
    if (!exps || !ptr || !exps.memory) return;
    var n = Math.min(s.length, 500);
    var mem = new Uint8Array(exps.memory.buffer, ptr, n + 1);
    for (var i = 0; i < n; i++) mem[i] = s.charCodeAt(i) & 0xff;
    mem[n] = 0;
  }
  /* ONE FRAME of speech, handed to the engine, which lays it out and draws it.

     The original fills its Speech object a frame at a time (`dialog.bubble(...)`
     calls that share an authored frame show together), so this takes the whole
     frame: its lines are the frame's elements, in order.

     x/y are the line's authored position in DESIGN UNITS (the original's
     3000x2000 space, Main.as' own scaler), s its font as a fraction of the 40
     unit default, w its wrap width. `c` is a connection to another line and `t`
     the speaker; both are indices into the SCENE, so they are resolved here to
     this frame's element index and to a staged cast slot. The DOM copy of the
     bubble is display:none — the engine owns what is on screen. */
  function cutFrame(title, group, step, total, scene) {
    try {
      if (!exps || !exps.run3_cut_item) return;
      cutWriteStr(exps.run3_cut_title_buf(), title || "");
      /* a connection's index counts BUBBLES only (a label never joins the
         speech's own list), across the whole scene */
      var bubbles = [];
      for (var q = 0; q < scene.length; q++) if (scene[q].k !== 2) bubbles.push(scene[q]);
      var n = Math.min(group.length, 10);
      for (var i = 0; i < n; i++) {
        var L = group[i];
        cutWriteStr(exps.run3_cut_text_buf(i), L.m || "");
        var conn = -1;
        if (typeof L.c === "number" && L.c >= 0) {
          var tgt = bubbles[L.c];
          for (var j = 0; j < n; j++) if (group[j] === tgt) { conn = j; break; }
        }
        var slot = -1;
        if (typeof L.t === "number" && stage && stage.cur) {
          for (var s = 0; s < stage.cur.length; s++)
            if (stage.cur[s] && stage.cur[s].ch === L.t) { slot = s; break; }
        }
        exps.run3_cut_item(i, L.k === 2 ? 2 : 1,
                           typeof L.x === "number" ? L.x : 0,
                           typeof L.y === "number" ? L.y : 0,
                           typeof L.s === "number" ? L.s : 1.0,
                           typeof L.w === "number" ? L.w : 0,
                           conn, slot);
      }
      exps.run3_cut_frame(n, step, total, 1);
    } catch (e) {}
  }
  function cutShowOff() {
    try { if (exps && exps.run3_cut_frame) exps.run3_cut_frame(0, 0, 0, 0); } catch (e) {}
  }
  function showCutscene(name, cb) {
    var lines = cutLines(name);
    if (!lines || !lines.length) { if (cb) cb(); return; }
    var view = document.getElementById("cutview"),
        stageEl = document.getElementById("cutstage"),
        bub = document.getElementById("cutbubble"),
        txt = document.getElementById("cuttext"),
        prog = document.getElementById("cutprog"),
        cutbtn = document.getElementById("cutbtn"),
        cuttitle = document.getElementById("cuttitle");
    /* fail open (e.g. stale cached page): never soft-lock the game */
    if (!view || !stageEl || !bub || !txt || !cutbtn) { if (cb) cb(); return; }
    if (cuttitle) cuttitle.textContent = cutTitle(name);
    stageOpen(name, typeof lines[0].f === "number" ? lines[0].f : 0, lines);
    var i = 0, done = false;
    view.classList.add("on");
    function place(L) {
      var w = stageEl.clientWidth || 800, h = stageEl.clientHeight || 600;
      var s = Math.min(w / 800, h / 600);
      var x = (typeof L.x === "number") ? L.x : 0;
      var y = (typeof L.y === "number") ? L.y : 120;
      var left = 50 + (x / 2.5) * s / w * 100;
      var top = 50 + (y / 2.5) * s / h * 100;
      left = Math.max(24, Math.min(76, left));
      top = Math.max(18, Math.min(78, top));
      bub.style.left = left + "%";
      bub.style.top = top + "%";
    }
    function next() {
      if (done) return;
      if (i >= lines.length) {
        done = true;
        view.classList.remove("on");
        view.onclick = null;
        cutShowOff();
        stageClose();
        if (cb) cb();
        return;
      }
      /* THE FRAME, not the line: a bubble's connection and tail only ever
         point at an element of its own authored frame, so a frame is what is
         shown and what a click advances past. */
      var L = lines[i];
      var group = [L];
      if (typeof L.f === "number") {
        for (var g = i + 1; g < lines.length && lines[g].f === L.f; g++) group.push(lines[g]);
      }
      i += group.length;
      txt.textContent = group.map(function (x) { return x.m; }).join("\n");
      bub.className = "cutbubble" + (L.small ? " small" : "");
      prog.textContent = (i < lines.length) ? (i + "/" + lines.length) : cutTitle(name);
      place(L);
      /* the engine draws the visible scene; the DOM above is inert */
      cutFrame(cutTitle(name), group, i, lines.length, lines);
      /* the cast walks to this line's keyframe (custom scenes key on the
         line index, baked ones on the authored dialogue frame) */
      if (stage) {
        var lf = (typeof L.f === "number") ? L.f : (i - 1);
        stageGoto(segIndex(stage.segs, lf), false);
        stageShot(lf);
      }
    }
    cutbtn.onclick = function (ev) { if (ev) ev.stopPropagation(); next(); };
    view.onclick = function () { next(); };
    next();
  }
  function cutSeen(key) { return !!(save.cuts && save.cuts[key]); }
  function markCutSeen(key) { save.cuts = save.cuts || {}; save.cuts[key] = 1; persist(); }
  /* while a scene is open the world must not advance behind it (a tap or
     Space would otherwise release a gate mid-scene) */
  function sceneOpen() {
    var v = document.getElementById("cutview");
    return !!(v && v.classList && v.classList.contains("on"));
  }

  /* ===== CHEAT ===== */
  function cheatUnlockAll() {
    save.powercells=100000;
    for(var i=0;i<T.length;i++){if(save.cleared.indexOf(i)<0)save.cleared.push(i);save.best[i]=999;}
    /* every cutscene seen: sceneSeen() looks at a mid-cut key, a path
       start/end key, an end-chain key or a stage key, so mark all of them */
    if(!save.cuts) save.cuts={};
    for(var mi=0;mi<MID_CUTS.length;mi++) save.cuts[midKey(MID_CUTS[mi].tun,MID_CUTS[mi].lvl)]=1;
    for(var pi=0;pi<PATH_CUT.length;pi++){ if(PATH_CUT[pi]){ save.cuts["s"+pi]=1; save.cuts["e"+pi]=1; } }
    for(var ek in END_CHAIN) save.cuts["x"+ek]=1;
    for(var sk in STAGE){ var sst=STAGE[sk]; if(sst && !sst.end) save.cuts[midKey(sst.tun,sst.lvl)]=1; }
    persist();
    syncAllToWasm();
    document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped";
    var n=document.createElement("div");
    n.textContent="\u2728 100,000 power cells \u2014 all tunnels + all cutscenes unlocked";
    n.style.cssText="position:fixed;top:20px;left:50%;transform:translateX(-50%);background:rgba(15,23,42,.95);color:#fbbf24;padding:12px 24px;border-radius:999px;font-weight:700;font-size:.9rem;z-index:999;box-shadow:0 4px 20px rgba(0,0,0,.5)";
    document.body.appendChild(n);
    setTimeout(function(){n.style.opacity="0";},2000);
    setTimeout(function(){if(n.parentNode)n.parentNode.removeChild(n);},2500);
  }

  /* ===== MAIN FRAME LOOP ===== */
  function frame(now) {
    requestAnimationFrame(frame);
    acc+=Math.min((now-last)/1000,0.1); last=now;
    if(!exps) { acc=0; return; }
    /* staged cast: ease the slots + float staged camera before anything renders */
    if (stage) stageTick();
    var st = exps.run3_state();

    if (st===7) { /* S_MENU */
      try { exps.render_menu(); } catch(e) {}
      blit(); acc=0; return;
    }
    if (st===6) { /* S_MAP */
      try { exps.render_map(); } catch(e) {}
      blit(); acc=0; return;
    }
    if (st===8) { /* S_CUT: staged cutscene backdrop — render, never step */
      try { exps.render_frame(); } catch(e) {}
      stageEngineLog();
      blit(); acc=0; return;
    }

    /* game mode */
    inGame=true;
    var steer=(keys.l?-1:0)+(keys.r?1:0);
    if(pointer.down) steer=Math.max(-1,Math.min(1,(pointer.x0-pointer.down)/70));
    while(acc>=STEP){exps.run3_set_input(steer);exps.run3_step(STEP);acc-=STEP;}
    exps.run3_set_input(steer);
    try { exps.render_frame(); } catch(e) {}
    stageEngineLog();
    blit();
    observe();
    /* low-power tunnels duck the music with the lights */
    try {
      if (musicAudio && !musicMuted && exps.run3_power) {
        var pw = exps.run3_power();
        if (!(pw >= 0)) pw = 1;
        if (pw > 1) pw = 1;
        musicAudio.volume = save.musicVol * pw;
      }
    } catch(e) {}
  }
  /* the render target follows the WINDOW's SHAPE. The backing store keeps the
     engine's composition height (720) and takes its width from the window's
     aspect, so the pixel scale is UNIFORM on both axes — a 4:3 composition is
     never stretched to fill a widescreen; the surplus width is extra world
     (and on a tall window, surplus height). The engine derives its centred 4:3
     base box from whatever it is handed (run3_resize), so the composition is
     centred x and y and the dialogue bubble stays inside it. */
  function fitViewport() {
    if (!exps || !cv) return;
    var r = cv.getBoundingClientRect();
    var cw = r.width || window.innerWidth || 1280;
    var ch = r.height || window.innerHeight || 720;
    if (!(cw >= 16 && ch >= 16)) return;
    var h = 720, w = Math.round(h * cw / ch);
    /* clamp to the engine's capacity WITHOUT changing the aspect */
    if (w > 2560) { h = Math.round(h * 2560 / w); w = 2560; }
    if (w < 320) { h = Math.max(240, Math.round(h * 320 / w)); w = 320; }
    if (w !== cv.width || h !== cv.height) { cv.width = w; cv.height = h; }
    W = w; H = h;
    try { if (exps.run3_resize) exps.run3_resize(W, H); } catch (eFV) {}
  }
  function blit() {
    if(!words || !view) return;
    // refresh WASM view if memory grew (buffer detached)
    if (words.buffer !== exps.memory.buffer || words.length !== W*H) {
      try { words = new Uint32Array(exps.memory.buffer, exps.run3_buffer(), W*H); } catch(e) {}
    }
    var n=W*H;
    // ensure view matches imageData (in case W/H changed)
    if (view.length !== n) {
      // should not happen, but recreate imageData if needed
      try { imageData = ctx.createImageData(W, H); view = new Uint32Array(imageData.data.buffer); } catch(e) {}
    }
    for(var i=0;i<n;i++){var v=words[i];view[i]=(v&0xff000000)|((v>>>16)&0xff)|(v&0x0000ff00)|((v&0xff)<<16);}
    ctx.putImageData(imageData,0,0);
  }
  /* ===== ACHIEVEMENTS (roster copied from the original game) ===== */
  var cellsRun0 = 0, infDeaths = 0;
  var WORMHOLES = { 17: 1, 18: 1, 19: 1, 20: 1, 21: 1, 22: 1, 23: 1, 33: 1 };
  function achCount() { return Object.keys(save.ach || {}).length; }
  function achById(id) {
    for (var i = 0; i < ACHIEVEMENTS.length; i++) {
      if (ACHIEVEMENTS[i].id === id) return ACHIEVEMENTS[i];
    }
    return null;
  }
  function award(id) {
    if (save.ach[id]) return;
    var a = achById(id);
    if (!a) return;
    save.ach[id] = 1;
    persist();
    toast("\uD83C\uDFC6 " + a.name + " (+" + a.pts + ")");
    if (achCount() === ACH_NEED && !cutSeen("m28_0")) {
      toast("8 achievements! Something happened to the Planet...");
    }
  }
  function isInf() {
    try { return !!(exps.run3_is_inf && exps.run3_is_inf()); } catch (e) { return false; }
  }
  function checkAchievements() {
    /* called every running frame; each award fires once ever */
    try {
      if (exps.run3_dislodged) {
        var d = exps.run3_dislodged() | 0;
        if (d > (save.achProg.dislodged || 0)) { save.achProg.dislodged = d; persist(); }
        if ((save.achProg.dislodged || 0) >= 700) award(0);
      }
    } catch (e) {}
    var inf = isInf();
    try {
      if (!inf && exps.run3_powercells && (exps.run3_powercells() - cellsRun0) >= 40) award(5);
    } catch (e2) {}
    if (inf) {
      var rows = 0;
      try { rows = exps.run3_inf_rows() | 0; } catch (e3) {}
      if (rows >= 800) award(4);
      if (rows >= 2000 && infDeaths === 0) award(9);
      if (rows >= 5000) award(10);
    }
  }
  /* Planet Stolen unlocks at 8 achievements; plays at the next level end */
  function drainAchScene() {
    if (achCount() >= ACH_NEED && !cutSeen("m28_0")) {
      return { key: "m28_0", cut: "PlanetStolen", m: { tun: 28, lvl: 0, unlock: 28 } };
    }
    return null;
  }
  /* mid-tunnel discovery: tunnels/characters unlocked by a scene */
  function midUnlock(m) {
    if (m.unlock != null && save.unlockedExtra.indexOf(m.unlock) < 0 && !cleared(m.unlock)) {
      save.unlockedExtra.push(m.unlock);
      persist();
      syncAllToWasm();
      var tn = (T[m.unlock] && (T[m.unlock].kind === "letter" ? T[m.unlock].name + "-Tunnel" : T[m.unlock].name)) || ("Tunnel " + m.unlock);
      toast("New tunnel discovered: " + tn);
      document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped";
    }
    if (m.skater && !charLocked(1)) {
      /* ComingThrough just played: the Skater joins */
      syncCharsToWasm();
      toast("The Skater joined!");
    }
  }
  /* play a queue of cutscenes back-to-back, then done */
  function playSeq(queue, done) {
    var i = 0;
    (function next() {
      if (i >= queue.length) { if (done) done(); return; }
      var q = queue[i++];
      markCutSeen(q.key);
      if (q.m) midUnlock(q.m);
      showCutscene(q.cut, next);
    })();
  }
  /* scenes bound to completing checkpoint lvl of tunnel tun */
  function midScenesFor(tun, lvl) {
    var out = [];
    for (var i = 0; i < MID_CUTS.length; i++) {
      var m = MID_CUTS[i];
      if (m.tun === tun && m.lvl === lvl && !cutSeen(midKey(tun, lvl))) {
        out.push({ key: midKey(tun, lvl), cut: m.cut, m: m });
      }
    }
    return out;
  }
  /* per-level music (authored overrides; 8 = silence). The ids are the
     levelData music enum baked by bake_levels.py; every one of them now has
     an mp3 (MapOfTheStars included — the file used to be missing). */
  var LEVEL_TRACKS = ["leavethesolarsystem", "thevoid", "wormholetosomewhere",
    "crumblingwalls", "travelthegalaxy", "unsafespeeds", "mapofthestars"];
  function levelTrack(tun) {
    var id = 0;
    try { if (exps.run3_level_music) id = exps.run3_level_music() | 0; } catch (e) {}
    if (id === 8) return null;
    if (id >= 1 && id <= LEVEL_TRACKS.length) return LEVEL_TRACKS[id - 1];
    return MUSIC_MAP[tun] || "leavethesolarsystem";
  }
  function observe() {
    var st=exps.run3_state();
    /* continuous tunnels auto-advance past gates within a frame, so track the
       furthest checkpoint every frame (not just on state transitions) */
    if(st===0||st===1||st===2||st===3){
      if (st===2 && st!==lastState && isInf()) infDeaths++;
      checkAchievements();
      try{
        if(exps.run3_tun()===curTun){
          var lv=exps.run3_lvl();
          if(lv>(save.best[curTun]||0)){ save.best[curTun]=lv; persist(); syncBestToWasm(); }
          /* checkpoint gate: fire level-end cutscene triggers, then resume */
          if (prevLvl < 0) prevLvl = lv;
          else if (lv > prevLvl) {
            var gates = [];
            for (var gl = prevLvl; gl < lv; gl++) gates = gates.concat(midScenesFor(curTun, gl));
            prevLvl = lv;
            var da = drainAchScene();
            if (da) gates.push(da);
            if (gates.length) {
              try { if (exps.run3_cutscene_hold) exps.run3_cutscene_hold(); } catch(e2) {}
              playSeq(gates, function(){
                try { if (exps.run3_cutscene_resume) exps.run3_cutscene_resume(); } catch(e3) {}
                lastState = -1;
              });
            }
          } else if (lv < prevLvl) prevLvl = lv;
          /* authored per-level music */
          if(lv!==lastMusLvl){ lastMusLvl=lv; var tr=levelTrack(curTun); if(tr) playMusic(tr); else stopMusic(); }
        }
      }catch(e){}
    }
    if(st===lastState) return;
    lastState=st;
    var t=curTun;
    if(st===2){/* dead */}
    else if(st===3){
      /* S_GATE: the engine paused on a completed checkpoint so its scene
         stages on the level just finished. Play the bound scene, then
         release the gate (run3_gate_resume) to roll into the next one. */
      var clvl = 0;
      try {
        clvl=exps.run3_lvl();
        if((save.best[t]||0) < clvl+1){ save.best[t]=clvl+1; persist(); syncBestToWasm(); }
      } catch(e) {}
      if (!gateBusy) {
        var gq = midScenesFor(t, clvl);
        var gda = drainAchScene();
        if (gda) gq.push(gda);
        if (gq.length) {
          gateBusy = true;
          playSeq(gq, function(){
            gateBusy = false;
            syncGatesToWasm();
            try { if (exps.run3_gate_resume) exps.run3_gate_resume(); } catch(e2) {}
            lastState = -1;
          });
        } else {
          /* nothing bound (already seen, or a stale-cache engine armed one):
             never soft-lock on the pause */
          try { if (exps.run3_gate_resume) exps.run3_gate_resume(); } catch(e3) {}
          lastState = -1;
        }
      }
    }
    else if(st===4){
      save.best[t]=Math.max(save.best[t]||0,exps.run3_tunnel_levels());
      if(save.cleared.indexOf(t)<0)save.cleared.push(t);
      if(t===0) award(1);
      if(t===12) award(2);
      if(save.cleared.length>=4) award(3);
      /* bank the power cells collected during the run into the wallet (the
         original spends these on characters; g_powercells only resets once a
         session, so the delta since the level started is this run's haul) */
      try {
        var runCells = exps.run3_powercells() | 0;
        if (runCells > cellsRun0) { save.powercells = (save.powercells|0) + (runCells - cellsRun0); cellsRun0 = runCells; }
      } catch(e4) {}
      persist();
      syncAllToWasm();
      var showEnd=function(){
        if(RENAME[t]&&!save.renames[t]){
          var r=RENAME[t]; save.renames[t]=r.to; persist();
          showCard(r.title+" \u2014 now \u201c"+r.to+"\u201d",r.text,"Tunnel renamed","Back",function(){
            lastState=-1; exps.run3_enter_menu();
          },r.img||null);
        } else {
          showCard("Mapped: "+T[t].name,T[t].lore,"The Runner's map","Back",function(){
            lastState=-1; exps.run3_enter_menu();
          },null);
        }
      };
      var pc1=PATH_CUT[t], ekey="e"+t;
      /* finish queue: mid-tunnel scenes bound here (e.g. BoatRide on the
         single Home1 level), then the tunnel end scene, then any sequel */
      var queue = midScenesFor(t, exps.run3_tunnel_levels() - 1);
      var daEnd = drainAchScene();
      if (daEnd) queue.push(daEnd);
      if(pc1&&pc1.end&&!cutSeen(ekey)) queue.push({ key: ekey, cut: pc1.end });
      var seq=END_CHAIN[t], xkey="x"+t;
      if(seq&&!cutSeen(xkey)) queue.push({ key: xkey, cut: seq });
      /* freeze the finished tunnel as the stage backdrop (no runner) */
      try { if (exps.run3_cutscene_hold) exps.run3_cutscene_hold(); } catch(e) {}
      playSeq(queue, showEnd);
      document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped";
    }
  }

  function beginPlay(sel, lvl) {
    curTun=sel; lastState=-1; prevLvl=-1; lastMusLvl=-1;
    exps.run3_seek(sel,lvl);
    syncGatesToWasm();
      exps.run3_set_char(Math.min(save.char,16));
    inGame=true;
    try { cellsRun0 = exps.run3_powercells() | 0; } catch (e) {}
    if (WORMHOLES[sel]) award(7);
    var mt=MUSIC_MAP[sel]||"leavethesolarsystem";
    playMusic(mt);
  }

  /* ===== CANVAS EVENTS ===== */
  function canvasCoords(e) {
    var r=cv.getBoundingClientRect();
    // map CSS pixels to framebuffer pixels (WASM is W x H, canvas CSS is 100vw x 100vh)
    var sx = (cv.width || W) / r.width;
    var sy = (cv.height || H) / r.height;
    return { x: (e.clientX-r.left)*sx, y: (e.clientY-r.top)*sy };
  }
  cv = document.getElementById("cv");

  cv.addEventListener("pointerdown",function(e){
    pointer.down=true; pointer.x0=e.clientX; pointer.y0=e.clientY; pointer.lx=e.clientX; pointer.ly=e.clientY; pointer.t0=Date.now(); pointer.moved=0;
    cv.setPointerCapture(e.pointerId);
  });
  cv.addEventListener("pointermove",function(e){
    if(pointer.down) {
      pointer.moved=Math.abs(e.clientX-pointer.x0)+Math.abs(e.clientY-pointer.y0);
    }
    var st = exps ? exps.run3_state() : -1;
    if (st === 6 && pointer.down && exps.run3_map_scroll) {
      /* drag-to-pan: content follows the cursor */
      var r=cv.getBoundingClientRect();
      var fbx=(cv.width||W)/r.width;
      var fby=(cv.height||H)/r.height;
      var ddx=Math.round((e.clientX-pointer.lx)*fbx);
      var ddy=Math.round((e.clientY-pointer.ly)*fby);
      pointer.lx=e.clientX; pointer.ly=e.clientY;
      if (ddx!==0 || ddy!==0) {
        try { if (exps.run3_map_scroll_xy) exps.run3_map_scroll_xy(ddx,ddy); else exps.run3_map_scroll(ddx); }
        catch(err) {}
      }
    }
    if (st === 6 && exps.run3_map_hover) {
      var c2 = canvasCoords(e);
      var hid = exps.run3_map_hover(c2.x, c2.y);
      var hlvl = -1;
      try { hlvl = exps.run3_map_hover_level(c2.x, c2.y); } catch(err) {}
      try { exps.run3_map_set_hover(hid); } catch(err) {}
      try { exps.run3_map_set_hover_level(hlvl); } catch(err) {}
      cv.style.cursor = hid >= 0 ? "pointer" : "grab";
      if (hid >= 0) {
        var t = T[hid];
        var name = t ? (t.kind==="letter" ? t.name+"-Tunnel" : t.name) : "";
        if (hlvl >= 0) name += " " + (hlvl + 1);
        var locked = hid>=0 ? !unlocked(hid) : false;
        var clearedH = hid>=0 ? cleared(hid) : false;
        var sfx = locked ? " (locked)" : (clearedH ? " (mapped)" : " (unlocked)");
        document.getElementById("status").textContent = name + sfx + " — " + (t?t.lore:"");
      } else {
        document.getElementById("status").textContent = T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped — drag or scroll to pan, click a checkpoint to play";
      }
    }
  });
  cv.addEventListener("wheel", function(e){
    var st = exps ? exps.run3_state() : -1;
    if (st === 6 && exps.run3_map_scroll) {
      e.preventDefault();
      // inverted pan: wheel pans horizontally (the map is wide); Shift+wheel or
      // a trackpad's own deltaY pans vertically, a trackpad deltaX horizontally
      var dx = 0, dy = 0;
      if (Math.abs(e.deltaX) > Math.abs(e.deltaY)) {
        dx = e.deltaX > 0 ? -30 : 30;
      } else if (e.shiftKey) {
        dy = e.deltaY > 0 ? -30 : 30;
      } else if (Math.abs(e.deltaY) > Math.abs(e.deltaX)) {
        dx = e.deltaY > 0 ? -30 : 30;
      }
      if (dx||dy) {
        try { if (exps.run3_map_scroll_xy) exps.run3_map_scroll_xy(dx,dy); else exps.run3_map_scroll(dx); }
        catch(err) {}
      }
    }
  }, {passive:false});
  cv.addEventListener("pointerup",function(e){
    if(!pointer.down) return;
    pointer.down=false;
    var c=canvasCoords(e);
    var st=exps?exps.run3_state():-1;
    if(st===7) {
      /* menu: forward click to WASM */
      exps.run3_menu_click(c.x, c.y);
      var hv = exps.run3_menu_hover(c.x, c.y);
      if(hv===0) {
        /* Play button */
        exps.run3_enter_map();
        syncAllToWasm();
      } else if(hv===1) {
        /* Infinite mode */
        exps.run3_start_inf();
        inGame=true; lastState=-1;
        infDeaths=0;
        try { cellsRun0 = exps.run3_powercells() | 0; } catch (e) {}
      } else if(hv>=2) {
        /* character select: hv-2 is the slot in story.js C[] (the ORIGINAL
           registry order); the engine and save.char speak sprite-atlas ids */
        var chSel = CHARS[hv-2];
        if (!chSel) return;
        var cid = chSel.sprite;
        if (charLocked(cid)) { showLockedChar(cid); return; }
        exps.run3_menu_select_char(cid);
        save.char=cid; persist();
      }
    } else if(st===6) {
      /* map: forward click to WASM — checkpoint dots seek straight into the continuous tunnel.
         A drag pans instead, so suppress the click when the pointer moved. */
      if (pointer.moved > 12) return;
      exps.run3_map_click(c.x, c.y);
      var sel=exps.run3_map_selected();
      var sellvl=-1;
      try { sellvl=exps.run3_map_selected_level(); } catch(err) {}
      if(sel>=0) {
        if(!unlocked(sel)){
          showCard(T[sel].kind==="letter"?T[sel].name+"-Tunnel":T[sel].name,T[sel].lore,"The Runner's map","Close",function(){lastState=-1;});
          return;
        }
        /* cutscenes fire at level end now (mid-tunnel gates + tunnel ends),
           never on tunnel entry */
        beginPlay(sel,sellvl>=0?sellvl:(save.best[sel]||0));
      }
    } else if(st===0||st===2||st===3) {
      /* game: tap to start/restart/continue (never while a scene is up) */
      if (!sceneOpen()) { try{exps.run3_flap();}catch(e){} }
    }
  });

  /* ===== KEYBOARD ===== */
  window.addEventListener("keydown",function(e){
    var c=e.code;
    var stMap = exps?exps.run3_state():-1;
    // map: 2D pan with the arrow keys / WASD (content follows the keys)
    if(stMap===6){
      /* 2D pan: left/right move x, up/down move y (content follows the keys) */
      var mdx=(c==="ArrowLeft"||c==="KeyA")?30:((c==="ArrowRight"||c==="KeyD")?-30:0);
      var mdy=(c==="ArrowUp"||c==="KeyW")?30:((c==="ArrowDown"||c==="KeyS")?-30:0);
      if(mdx||mdy){
        e.preventDefault();
        try{ if(exps.run3_map_scroll_xy) exps.run3_map_scroll_xy(mdx,mdy); else exps.run3_map_scroll(mdx); }catch(x){}
        return;
      }
    }
    if(c==="Space"||c==="ArrowUp"||c==="KeyW"){
      e.preventDefault();
      if(!sceneOpen()){ try{exps.run3_flap();}catch(x){} }
    }
    else if(c==="ArrowDown"||c==="KeyS"){
      // handled above for map, for game do nothing (flap already)
    }
    else if(c==="ArrowLeft"||c==="KeyA"){keys.l=true;e.preventDefault();}
    else if(c==="ArrowRight"||c==="KeyD"){keys.r=true;e.preventDefault();}
    else if(c==="Escape"){
      var st=exps?exps.run3_state():-1;
      if(st===6){ e.preventDefault(); try{exps.run3_enter_menu();}catch(x){} return; }
      if(st===7) return;
      inGame=false;lastState=-1;try{exps.run3_enter_menu();}catch(x){}stopMusic();document.getElementById("backbtn").style.display="none";document.getElementById("musicToggle").style.display="none";
    }
    else if(c==="KeyM")toggleMusic();
    else if(c==="KeyH"){ if(exps){ try{exps.run3_hint_toggle();}catch(x){} } }
    else if(c==="AltLeft"){e.preventDefault();cheatUnlockAll();}
  });
  window.addEventListener("keyup",function(e){
    var c=e.code;
    if(c==="ArrowLeft"||c==="KeyA")keys.l=false;
    if(c==="ArrowRight"||c==="KeyD")keys.r=false;
  });

  document.getElementById("backbtn").addEventListener("click",function(){
    inGame=false;lastState=-1;try{exps.run3_enter_menu();}catch(x){}stopMusic();
    document.getElementById("backbtn").style.display="none";
    document.getElementById("musicToggle").style.display="none";
  });
  document.getElementById("musicToggle").addEventListener("click",toggleMusic);

  /* ===== CUTSCENE GALLERY (icons = assets/cutscenes/<name>.png) ===== */
  function sceneIcon(name) { return "assets/cutscenes/" + String(name).toLowerCase() + ".png"; }
  function sceneSeen(name) {
    if (!save.cuts) return false;
    for (var i = 0; i < MID_CUTS.length; i++) {
      if (MID_CUTS[i].cut === name && save.cuts[midKey(MID_CUTS[i].tun, MID_CUTS[i].lvl)]) return true;
    }
    for (var t = 0; t < PATH_CUT.length; t++) {
      var pc = PATH_CUT[t];
      if (pc && (pc.start === name || pc.end === name) && (save.cuts["s" + t] || save.cuts["e" + t])) return true;
    }
    for (var k in END_CHAIN) {
      if (END_CHAIN[k] === name && save.cuts["x" + k]) return true;
    }
    var stg = STAGE[name];
    if (stg && !stg.end && save.cuts[midKey(stg.tun, stg.lvl)]) return true;
    return false;
  }
  function openGallery() {
    var grid = document.getElementById("sceneGrid");
    var menu = document.getElementById("sceneMenu");
    if (!grid || !menu) return;
    grid.innerHTML = "";
    Object.keys(CUT).forEach(function (name) {
      var lines = cutLines(name);
      if (!lines || !lines.length) return;
      var seen = sceneSeen(name);
      var cell = document.createElement("button");
      cell.type = "button";
      cell.className = "scene-cell" + (seen ? "" : " locked");
      var img = document.createElement("img");
      img.alt = "";
      img.src = sceneIcon(name);
      img.onerror = function () { img.style.display = "none"; };
      var label = document.createElement("div");
      label.className = "t";
      label.textContent = seen ? cutTitle(name) : "???";
      cell.appendChild(img);
      cell.appendChild(label);
      if (seen) {
        (function (nm) {
          cell.onclick = function () { replayScene(nm); };
        })(name);
      }
      grid.appendChild(cell);
    });
    menu.classList.add("on");
  }
  function replayScene(name) {
    var menu = document.getElementById("sceneMenu");
    if (menu) menu.classList.remove("on");
    var ret = -1;
    try { ret = exps.run3_state(); } catch (e) {}
    var back = function () {
      lastState = -1;
      try {
        if (ret === 6) { exps.run3_enter_map(); if (st && exps.run3_map_center_on) exps.run3_map_center_on(st.tun); syncAllToWasm(); }
        else if (ret === 7) { exps.run3_enter_menu(); }
        else if (exps.run3_cutscene_resume) exps.run3_cutscene_resume();
      } catch (e2) {}
    };
    var st = STAGE[name];
    try {
      if (st && exps.run3_cutscene_backdrop) {
        var lvl = st.end ? exps.run3_levels_in(st.tun) - 1 : st.lvl;
        /* only a tunnel-opening scene stages at the level head; every other
           scene plays as its checkpoint completes, so it stages at the tail */
        if (st.at !== "start" && exps.run3_cutscene_backdrop_end)
          exps.run3_cutscene_backdrop_end(st.tun, lvl);
        else
          exps.run3_cutscene_backdrop(st.tun, lvl);
      } else if (exps.run3_cutscene_hold) exps.run3_cutscene_hold();
    } catch (e3) {}
    showCutscene(name, back);
  }
  var sceneBtnEl = document.getElementById("sceneBtn");
  if (sceneBtnEl) sceneBtnEl.addEventListener("click", openGallery);
  var sceneCloseEl = document.getElementById("sceneClose");
  if (sceneCloseEl) sceneCloseEl.addEventListener("click", function () {
    document.getElementById("sceneMenu").classList.remove("on");
  });

  /* ===== ACHIEVEMENT GALLERY ===== */
  function openAch() {
    var list = document.getElementById("achList");
    var menu = document.getElementById("achMenu");
    if (!list || !menu) return;
    list.innerHTML = "";
    var sub = document.getElementById("achSub");
    if (sub) sub.textContent = "Earned " + achCount() + " of " + ACHIEVEMENTS.length + " \u2014 earn " + ACH_NEED + " to unlock something strange...";
    ACHIEVEMENTS.forEach(function (a) {
      var got = !!save.ach[a.id];
      var row = document.createElement("div");
      row.className = "ach-row" + (got ? "" : " locked");
      var cup = document.createElement("span");
      cup.className = "cup";
      cup.textContent = got ? "\uD83C\uDFC6" : "\uD83D\uDD12";
      var nm = document.createElement("span");
      nm.className = "nm";
      nm.textContent = got ? a.name : "???";
      var ds = document.createElement("span");
      ds.className = "ds";
      ds.textContent = a.desc;
      var pt = document.createElement("span");
      pt.className = "pt";
      pt.textContent = "+" + a.pts;
      row.appendChild(cup);
      row.appendChild(nm);
      row.appendChild(ds);
      row.appendChild(pt);
      list.appendChild(row);
    });
    menu.classList.add("on");
  }
  var achBtnEl = document.getElementById("achBtn");
  if (achBtnEl) achBtnEl.addEventListener("click", openAch);
  var achCloseEl = document.getElementById("achClose");
  if (achCloseEl) achCloseEl.addEventListener("click", function () {
    document.getElementById("achMenu").classList.remove("on");
  });

  /* version label (top-right) + gallery hotkey fallback.
     The label is painted from the ENGINE's own build string, read back out of
     the wasm once it is loaded (see the WASM LOAD section) - neither this file
     nor index.html carries a version number, so what the label shows is
     exactly which build the browser is running. */
  var verEl = document.getElementById("ver");
  if (verEl) verEl.textContent = "v\u2026";
  window.addEventListener("keydown", function (e) {
    if (!e || e.code !== "KeyG") return;
    var cv = document.getElementById("cutview");
    if (cv && cv.classList.contains("on")) return;
    try { openGallery(); } catch (e2) {}
  });

  /* ===== WASM LOAD ===== */
  document.getElementById("status").textContent="Loading run3.wasm\u2026";
  /* The 30 MB engine is fetched with cache REVALIDATION rather than with a
     version query: the browser revalidates against the server and reuses its
     copy only when the file is byte-identical, so a rebuilt wasm can never be
     served stale and a refresh can never keep running an old build - without
     index.html or the scripts having to know the version to bust the URL. */
  fetch("run3.wasm",{credentials:"same-origin",cache:"no-store"})
    .then(function(r){if(!r.ok)throw new Error("HTTP "+r.status);return r;})
    .then(function(r){
      /* instantiateStreaming only accepts `application/wasm`. A plain static
         server (python -m http.server and some preview hosts) sends the file as
         application/octet-stream, which makes the streaming call throw - so
         fall back to instantiating the bytes directly. */
      try {
        return WebAssembly.instantiateStreaming(r.clone(),{})["catch"](function(){
          return r.arrayBuffer().then(function(b){return WebAssembly.instantiate(b,{});});
        });
      } catch(eSt) {
        return r.arrayBuffer().then(function(b){return WebAssembly.instantiate(b,{});});
      }
    })
    .then(function(res){
      exps=res.instance.exports;
      /* the engine's own build string: the ONE place a version is defined */
      try {
        var vp=exps.run3_version(), vl=exps.run3_version_len();
        var vb=new Uint8Array(exps.memory.buffer,vp,vl), vs="";
        for (var vi=0;vi<vl;vi++) vs+=String.fromCharCode(vb[vi]);
        window.GAME_VERSION=vs;
        if (verEl) verEl.textContent="v"+vs;
      } catch (eVer) {}
      /* size the engine's viewport to the window before anything is drawn
         (it falls back to the engine's own 1280x720 if it cannot measure) */
      try { fitViewport(); } catch(eFV) {}
      try { if (!exps.run3_resize) { W=exps.run3_width(); H=exps.run3_height(); cv.width=W; cv.height=H; } } catch(e) { W=1280; H=720; }
      ctx=cv.getContext("2d");
      imageData=ctx.createImageData(W,H);
      view=new Uint32Array(imageData.data.buffer);
      // re-create view after WASM memory may have grown
      try { words=new Uint32Array(exps.memory.buffer,exps.run3_buffer(),W*H); } catch(e) { words=new Uint32Array(exps.memory.buffer,exps.run3_buffer(),W*H); }
      exps.run3_init((Date.now()^(Math.random()*0xffffffff))>>>0);
      exps.run3_set_char(save.char);
      exps.run3_set_char_count(CHARS.length);
      /* the grid highlight follows the saved character (menu_char is an atlas id) */
      try { exps.run3_menu_select_char(save.char); } catch(e) {}
      exps.run3_enter_menu();
      syncAllToWasm();
      document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped — scroll to pan, click to play";
      document.getElementById("backbtn").style.display="";
      document.getElementById("musicToggle").style.display="";
      var sb2=document.getElementById("sceneBtn"); if(sb2) sb2.style.display="";
      var ab2=document.getElementById("achBtn"); if(ab2) ab2.style.display="";
      last=performance.now();
      requestAnimationFrame(frame);
      // keep words view in sync if memory grows (WASM may grow on later allocs)
      var orig_blit = blit;
      // patch blit to refresh words if buffer detached
      // (words view will be updated each frame if needed)
    })
    .catch(function(e){document.getElementById("status").textContent="Error: "+(e&&e.message?e.message:String(e));});

  window.addEventListener("error",function(e){try{document.getElementById("status").textContent="Error: "+(e.message||e);}catch(x){}});
  /* re-fit on every window change: the 4:3 base is re-derived by the engine,
     so the composition stays centred and unscaled at any shape */
  window.addEventListener("resize",function(){try{fitViewport();}catch(e){}});
  window.addEventListener("orientationchange",function(){try{fitViewport();}catch(e){}});
})();
