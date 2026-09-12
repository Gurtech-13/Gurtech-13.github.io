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

  var cv, ctx, imageData, view, words, exps;
  var W = 1280, H = 720; // will be updated from WASM after load (1280x720 fullscreen)
  var inGame = false, curTun = 0;
  var lastState = -1, STEP = 1/60, last = 0, acc = 0;
  var keys = { l: false, r: false };
  var pointer = { down: false, x0: 0, y0: 0, t0: 0, moved: 0 };
  var demo = /[?&]demo=1/.test(location.search), demoBusy = false;

  var LS_KEY = "run3tribute-v3";
  var save;
  function loadSave() {
    try { var r = localStorage.getItem(LS_KEY); if (r) { var o = JSON.parse(r); return { cleared: o.cleared||[], best: o.best||{}, renames: o.renames||{}, cuts: o.cuts||{}, char: o.char|0, musicVol: typeof o.musicVol==="number"?o.musicVol:0.5, powercells: o.powercells|0 }; } } catch(e) {}
    return { cleared:[], best:{}, renames:{}, cuts:{}, char:0, musicVol:0.5, powercells:0 };
  }
  function persist() { try { localStorage.setItem(LS_KEY, JSON.stringify(save)); } catch(e) {} }
  save = loadSave();

  function cleared(t) { return save.cleared.indexOf(t)>=0; }
  function unlocked(t) {
    if (t===0) return true;
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
  function charLocked(cid) {
    var need = CHARS[cid] ? CHARS[cid].need : 999;
    return save.cleared.length < need;
  }
  function syncCharsToWasm() {
    if (!exps || !exps.run3_char_set_locked) return;
    for (var i = 0; i < CHARS.length; i++) {
      try { exps.run3_char_set_locked(i, charLocked(i) ? 1 : 0); } catch(e) {}
    }
  }
  function syncBestToWasm() {
    if (!exps || !exps.run3_map_set_best) return;
    for (var i = 0; i < T.length; i++) {
      try { exps.run3_map_set_best(i, save.best[i]||0); } catch(e) {}
    }
  }
  function syncAllToWasm() { syncMapToWasm(); syncCharsToWasm(); syncBestToWasm(); }

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
    if(musicMuted) stopMusic(); else if(inGame && currentMusic) playMusic(currentMusic);
  }

  /* ===== STORY CARD ===== */
  function showCard(title,text,who,btn,cb,img) {
    document.getElementById("cardtitle").textContent=title;
    document.getElementById("cardtext").textContent=text;
    document.getElementById("cardwho").textContent=who||"";
    document.getElementById("cardbtn").textContent=btn||"Continue";
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
  /* Positioned-bubble cutscene viewer. The original dialog calls carry each
     bubble's on-screen position (dialog units, /2.5 = px on the 800x600
     stage, center origin) — positions only, no speaker tracking. */
  function showCutscene(name, cb) {
    var lines = cutLines(name);
    if (!lines || !lines.length) { if (cb) cb(); return; }
    var view = document.getElementById("cutview"),
        stage = document.getElementById("cutstage"),
        bub = document.getElementById("cutbubble"),
        txt = document.getElementById("cuttext"),
        prog = document.getElementById("cutprog");
    document.getElementById("cuttitle").textContent = cutTitle(name);
    var i = 0, done = false;
    view.classList.add("on");
    function place(L) {
      var w = stage.clientWidth || 800, h = stage.clientHeight || 600;
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
        if (cb) cb();
        return;
      }
      var L = lines[i++];
      txt.textContent = L.m;
      bub.className = "cutbubble" + (L.small ? " small" : "");
      prog.textContent = (i < lines.length) ? (i + "/" + lines.length) : cutTitle(name);
      place(L);
    }
    document.getElementById("cutbtn").onclick = function (ev) { if (ev) ev.stopPropagation(); next(); };
    view.onclick = function () { next(); };
    next();
  }
  function cutSeen(key) { return !!(save.cuts && save.cuts[key]); }
  function markCutSeen(key) { save.cuts = save.cuts || {}; save.cuts[key] = 1; persist(); }

  /* ===== CHEAT ===== */
  function cheatUnlockAll() {
    save.powercells=100000;
    for(var i=0;i<T.length;i++){if(save.cleared.indexOf(i)<0)save.cleared.push(i);save.best[i]=999;}
    persist();
    syncAllToWasm();
    document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped";
    var n=document.createElement("div");
    n.textContent="\u2728 100,000 power cells \u2014 all tunnels unlocked";
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
    var st = exps.run3_state();

    if (st===7) { /* S_MENU */
      try { exps.render_menu(); } catch(e) {}
      blit(); acc=0; return;
    }
    if (st===6) { /* S_MAP */
      try { exps.render_map(); } catch(e) {}
      blit(); acc=0; return;
    }

    /* game mode */
    inGame=true;
    var steer=(keys.l?-1:0)+(keys.r?1:0);
    if(pointer.down) steer=Math.max(-1,Math.min(1,(pointer.x0-pointer.down)/70));
    while(acc>=STEP){exps.run3_set_input(steer);exps.run3_step(STEP);acc-=STEP;}
    exps.run3_set_input(steer);
    try { exps.render_frame(); } catch(e) {}
    blit();
    observe();
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
  function observe() {
    var st=exps.run3_state();
    /* continuous tunnels auto-advance past gates within a frame, so track the
       furthest checkpoint every frame (not just on state transitions) */
    if(st===0||st===1||st===2||st===3){
      try{
        if(exps.run3_tun()===curTun){
          var lv=exps.run3_lvl();
          if(lv>(save.best[curTun]||0)){ save.best[curTun]=lv; persist(); syncBestToWasm(); }
        }
      }catch(e){}
    }
    if(st===lastState) return;
    lastState=st;
    var t=curTun;
    if(st===2){/* dead */}
    else if(st===3){
      /* checkpoint cleared inside a continuous tunnel — unlock its next dot */
      try {
        var clvl=exps.run3_lvl();
        if((save.best[t]||0) < clvl+1){ save.best[t]=clvl+1; persist(); syncBestToWasm(); }
      } catch(e) {}
    }
    else if(st===4){
      save.best[t]=Math.max(save.best[t]||0,exps.run3_tunnel_levels());
      if(save.cleared.indexOf(t)<0)save.cleared.push(t);
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
      if(pc1&&pc1.end&&!cutSeen(ekey)){
        markCutSeen(ekey);
        showCutscene(pc1.end,showEnd);
      } else showEnd();
      document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped";
    }
  }

  function beginPlay(sel, lvl) {
    curTun=sel; lastState=-1;
    exps.run3_seek(sel,lvl);
      exps.run3_set_char(Math.min(save.char,16));
    inGame=true;
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
      var ddx=Math.round((e.clientX-pointer.lx)*fbx);
      pointer.lx=e.clientX; pointer.ly=e.clientY;
      if (ddx!==0) { try { exps.run3_map_scroll(ddx); } catch(err) {} }
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
        document.getElementById("status").textContent = T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped — scroll to pan, click a checkpoint to play";
      }
    }
  });
  cv.addEventListener("wheel", function(e){
    var st = exps ? exps.run3_state() : -1;
    if (st === 6 && exps.run3_map_scroll) {
      e.preventDefault();
      // 1D horizontal scroll, inverted — use deltaX if present, else deltaY
      var dx = 0;
      if (Math.abs(e.deltaX) > Math.abs(e.deltaY)) dx = e.deltaX > 0 ? -30 : 30;
      else dx = e.deltaY > 0 ? -30 : 30;
      try { exps.run3_map_scroll(dx); } catch(err) {}
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
        inGame=true;
      } else if(hv>=2) {
        /* character select */
        var cid = hv-2;
        if (charLocked(cid)) {
          var ch = CHARS[cid];
          showCard(ch.name + " — Locked", "Clear " + ch.need + " tunnels to unlock. ("+save.cleared.length+"/"+ch.need+")", "Locked", "Close", function(){});
          return;
        }
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
        var startLvl=sellvl>=0?sellvl:(save.best[sel]||0);
        var pc0=PATH_CUT[sel], skey="s"+sel;
        if(pc0&&pc0.start&&startLvl===0&&!cutSeen(skey)){
          markCutSeen(skey);
          showCutscene(pc0.start,function(){beginPlay(sel,startLvl);});
        } else {
          beginPlay(sel,startLvl);
        }
      }
    } else if(st===0||st===2||st===3) {
      /* game: tap to start/restart/continue */
      try{exps.run3_flap();}catch(e){}
    }
  });

  /* ===== KEYBOARD ===== */
  window.addEventListener("keydown",function(e){
    var c=e.code;
    var stMap = exps?exps.run3_state():-1;
    // map: 1D horizontal scroll with arrows/horizontal wheel (inverted)
    if(stMap===6){
      if(c==="ArrowLeft"||c==="KeyA"){ e.preventDefault(); try{exps.run3_map_scroll(30);}catch(x){} return; }
      if(c==="ArrowRight"||c==="KeyD"){ e.preventDefault(); try{exps.run3_map_scroll(-30);}catch(x){} return; }
      if(c==="ArrowUp"||c==="KeyW"||c==="ArrowDown"||c==="KeyS"){ e.preventDefault(); try{exps.run3_map_scroll(c==="ArrowUp"||c==="KeyW"?30:-30);}catch(x){} return; }
    }
    if(c==="Space"||c==="ArrowUp"||c==="KeyW"){
      e.preventDefault();try{exps.run3_flap();}catch(x){}
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

  /* ===== WASM LOAD ===== */
  document.getElementById("status").textContent="Loading run3.wasm\u2026";
  fetch("run3.wasm",{credentials:"same-origin"})
    .then(function(r){if(!r.ok)throw new Error("HTTP "+r.status);return WebAssembly.instantiateStreaming(r,{});})
    .then(function(res){
      exps=res.instance.exports;
      // update W/H from WASM (framebuffer now 1280x720, covers whole page)
      try { W=exps.run3_width(); H=exps.run3_height(); cv.width=W; cv.height=H; } catch(e) { W=1280; H=720; }
      ctx=cv.getContext("2d");
      imageData=ctx.createImageData(W,H);
      view=new Uint32Array(imageData.data.buffer);
      // re-create view after WASM memory may have grown
      try { words=new Uint32Array(exps.memory.buffer,exps.run3_buffer(),W*H); } catch(e) { words=new Uint32Array(exps.memory.buffer,exps.run3_buffer(),W*H); }
      exps.run3_init((Date.now()^(Math.random()*0xffffffff))>>>0);
      exps.run3_set_char(save.char);
      exps.run3_set_char_count(CHARS.length);
      exps.run3_enter_menu();
      syncAllToWasm();
      document.getElementById("status").textContent=T.length+" tunnels, "+save.cleared.length+"/"+T.length+" mapped — scroll to pan, click to play";
      document.getElementById("backbtn").style.display="";
      document.getElementById("musicToggle").style.display="";
      last=performance.now();
      requestAnimationFrame(frame);
      // keep words view in sync if memory grows (WASM may grow on later allocs)
      var orig_blit = blit;
      // patch blit to refresh words if buffer detached
      // (words view will be updated each frame if needed)
    })
    .catch(function(e){document.getElementById("status").textContent="Error: "+(e&&e.message?e.message:String(e));});

  window.addEventListener("error",function(e){try{document.getElementById("status").textContent="Error: "+(e.message||e);}catch(x){}});
})();
