/*
 * verify_menu - the main menu is the 2014 build's own screen.
 *
 * runIII.swf's menu class (com/player03/run3/menu/§-__-_--__-_-§.as) lays the
 * screen out by writing absolute x/y per element, so the port transcribes its
 * expressions. What this suite pins:
 *
 *   1. the scale IS the rule: k = min(BASE_W/3000, BASE_H/2000), bitmaps at 2k
 *   2. each element sits where the original's expression puts it — including
 *      the two numbers the original does NOT scale by k
 *      (`stageHeight * 0.3`, `stageHeight * 0.05`, lines 477 / 483)
 *   3. the screen is well formed: every box inside the frame, and the
 *      transcribed chain in the order the original has it, so no element lands
 *      on another (the grid-on-the-title regression was exactly this)
 *   4. hit-testing agrees with the drawing, for the chrome AND for every
 *      character box
 *   5. the screen is actually RENDERED, and the selection highlight follows the
 *      selected character
 */
const fs = require("fs");
(async () => {
  const { instance } = await WebAssembly.instantiate(fs.readFileSync("run3.wasm"), {});
  const e = instance.exports;
  const need = ["run3_menu_scale", "run3_menu_rect", "run3_menu_icon_w",
    "run3_menu_char_rect", "run3_menu_hover", "run3_menu_click", "run3_menu_char",
    "run3_menu_select_char", "run3_char_order", "run3_char_pres", "run3_enter_menu",
    "render_menu", "render_menu_text_w", "render_menu_text_h", "run3_buffer",
    "run3_width", "run3_height", "run3_base_w", "run3_base_h", "run3_base_x0",
    "run3_base_y0"];
  for (const n of need) if (typeof e[n] !== "function") throw new Error("missing export " + n);

  const W = e.run3_width(), H = e.run3_height();
  const BW = e.run3_base_w(), BH = e.run3_base_h();
  const BX = e.run3_base_x0(), BY = e.run3_base_y0();
  const SP = 1 << 20;                       // scratch area in linear memory
  const box = (fn, arg) => {
    if (!fn(arg, SP, SP + 4, SP + 8, SP + 12)) return null;
    const a = new Int32Array(e.memory.buffer, SP, 4);
    return { x: a[0], y: a[1], w: a[2], h: a[3] };
  };
  const rect = (id) => box(e.run3_menu_rect, id);
  const charRect = (pres) => box(e.run3_menu_char_rect, pres);

  const near = (a, b, what) => {
    if (Math.abs(a - b) > 1.0) throw new Error(`${what}: got ${a}, want ${b}`);
  };
  const rnd = (v) => Math.round(v);

  // 0. THE SCALE IS THE 2014's OWN RULE.
  const k = e.run3_menu_scale();
  const kWant = Math.min(BW / 3000, BH / 2000);
  if (Math.abs(k - kWant) > 1e-9)
    throw new Error(`menu scale ${k} is not min(baseW/3000, baseH/2000) = ${kWant}`);
  const two = 2 * k;
  const textH = e.render_menu_text_h();

  const ID = { TITLE: 0, PLAY: 1, EXPLORE: 2, INFINITE: 3, MAP: 4, SHOP: 5,
               LEADERBOARDS: 6, ACHIEVEMENTS: 7, EDIT: 8, OPTIONS: 9 };
  const NAME = Object.fromEntries(Object.entries(ID).map(([n, i]) => [i, n]));
  const R = {};
  for (const n of Object.keys(ID)) {
    R[n] = rect(ID[n]);
    if (!R[n]) throw new Error("no rect for MENU_" + n);
  }

  // 1. THE ORIGINAL'S EXPRESSIONS, one per element.
  const cx = BX + BW / 2;
  // title: centred, y = ScaledAssets(90), drawn at 2k
  near(R.TITLE.w, rnd(two * 642), "title.width = Run3.png(642) * 2k");
  near(R.TITLE.h, rnd(two * 212), "title.height = Run3.png(212) * 2k");
  near(R.TITLE.x + R.TITLE.w / 2, cx, "title is centred (sw/2 - w/2)");
  near(R.TITLE.y, BY + rnd(k * 90), "title.y = ScaledAssets(90)");
  // credits: top-right, 20*sx in from each edge
  near(R.OPTIONS.x + R.OPTIONS.w, BX + BW - rnd(k * 20), "credits 20*sx from the right edge");
  near(R.OPTIONS.y, BY + rnd(k * 20), "credits 20*sx from the top edge");
  near(R.OPTIONS.w, rnd(two * 123), "credits.width = CreditsIcon(123) * 2k");
  // the character row: `stageHeight * 0.3`, NOT scaled by k, then the row
  // below it at row.y + grid height + ScaledAssets(90)
  const grid = charRect(0);
  near(grid.y, BY + rnd(BH * 0.3), "character row y = stageHeight * 0.3 (no k)");
  near(grid.h, 80, "a character box is 80px");
  const rows = Math.ceil(17 / 9);
  const rowY = grid.y + rows * 80 + rnd(k * 90);
  // Play: `row.y + stageHeight * 0.05`, again NOT scaled by k
  near(R.PLAY.y, rowY + rnd(BH * 0.05), "play.y = row.y + stageHeight * 0.05 (no k)");
  near(R.PLAY.x + R.PLAY.w / 2, cx, "play is centred");
  near(R.PLAY.w, rnd(two * 298), "play.width = PlayGame(298) * 2k");
  // the two mode labels flank the centre by 40*sx
  near(R.EXPLORE.y, rowY, "explore sits on the row");
  near(R.INFINITE.y, rowY, "infinite sits on the row");
  near(R.EXPLORE.x + R.EXPLORE.w, BX + BW / 2 - rnd(k * 40), "explore ends 40*sx left of centre");
  near(R.INFINITE.x, BX + BW / 2 + rnd(k * 40), "infinite starts 40*sx right of centre");
  // stacked below Play, 30*sy apart (see the deviation note in run3.c)
  near(R.MAP.x + R.MAP.w / 2, cx, "galaxy map is centred");
  near(R.MAP.y, R.PLAY.y + R.PLAY.h + rnd(k * 30), "galaxy map is 30*sy below play");
  near(R.SHOP.y, R.MAP.y + R.MAP.h + rnd(k * 30), "shop is 30*sy below the map");
  // a text button is as tall as its text; its icon is scaled to that height
  if (R.EXPLORE.h !== textH || R.INFINITE.h !== textH || R.MAP.h !== textH ||
      R.SHOP.h !== textH) throw new Error("a text button is not as tall as its text");
  near(textH, rnd(k * 100), "text box is the original's size 100 through k");
  if (e.run3_menu_icon_w(ID.MAP) !== rnd(163 * textH / 135))
    throw new Error("map icon is not scaled to the text height");
  if (e.run3_menu_icon_w(ID.SHOP) !== rnd(64 * textH / 64))
    throw new Error("shop icon is not scaled to the text height");
  if (e.run3_menu_icon_w(ID.PLAY) !== 0) throw new Error("Play should carry no icon");
  // bottom-left row: 25*sx off each edge, each icon 25*sx right of the last
  near(R.LEADERBOARDS.x, BX + rnd(k * 25), "leaderboards.x = 25*sx");
  near(R.LEADERBOARDS.y + R.LEADERBOARDS.h, BY + BH - rnd(k * 25),
       "leaderboards sit 25*sx off the foot");
  near(R.LEADERBOARDS.w, rnd(two * 100), "leaderboards.width = 100 * 2k");
  near(R.ACHIEVEMENTS.x, R.LEADERBOARDS.x + R.LEADERBOARDS.w + rnd(k * 25),
       "achievements are 25*sx right of leaderboards");
  near(R.ACHIEVEMENTS.y, R.LEADERBOARDS.y, "achievements share the row");
  near(R.EDIT.x, R.ACHIEVEMENTS.x + R.ACHIEVEMENTS.w + rnd(k * 25),
       "edit is 25*sx right of achievements");
  near(R.EDIT.y + R.EDIT.h, R.ACHIEVEMENTS.y + R.ACHIEVEMENTS.h,
       "edit rests on the row's baseline");
  near(R.EDIT.h, rnd(two * 133), "edit.height = EditIcon(133) * 2k");
  console.log(`menu layout OK (k=${k.toFixed(4)}, text box ${textH}px, ${rows} char rows)`);

  // 2. A WELL-FORMED SCREEN. The chain above is the original's; this is the
  //    check that the chain's ORDER leaves nothing on top of anything, which
  //    is what a stage-fraction double scale silently breaks.
  const ids = Object.keys(ID).map((n) => ID[n]);
  for (const id of ids) {
    const r = R[NAME[id]];
    if (r.x < 0 || r.y < 0 || r.x + r.w > W || r.y + r.h > H)
      throw new Error(`${NAME[id]} ${JSON.stringify(r)} leaves the ${W}x${H} frame`);
    if (r.w <= 0 || r.h <= 0) throw new Error(NAME[id] + " has no area");
  }
  for (let i = 0; i < ids.length; i++)
    for (let j = i + 1; j < ids.length; j++) {
      const a = R[NAME[ids[i]]], b = R[NAME[ids[j]]];
      if (a.x < b.x + b.w && b.x < a.x + a.w && a.y < b.y + b.h && b.y < a.y + a.h)
        throw new Error(`${NAME[ids[i]]} overlaps ${NAME[ids[j]]}`);
    }
  // the vertical order down the screen, and the grid clear of both title and row
  const order = ["TITLE", "PLAY", "SHOP", "LEADERBOARDS"];
  for (let i = 1; i < order.length; i++)
    if (!(R[order[i]].y > R[order[i - 1]].y))
      throw new Error(`${order[i]} is not below ${order[i - 1]}`);
  if (grid.y < R.TITLE.y + R.TITLE.h)
    throw new Error(`the character grid (top ${grid.y}) is not clear of the title ` +
                    `(foot ${R.TITLE.y + R.TITLE.h})`);
  if (grid.y + rows * 80 > R.EXPLORE.y)
    throw new Error("the character grid runs into the mode row");
  console.log("menu is inside the frame, in the original's order, nothing overlapping OK");

  // 3. HIT-TESTING AGREES WITH THE DRAWING, including the character grid (whose
  //    boxes are inside the row the chrome stacks off, so they win a hit).
  for (const id of ids) {
    const r = R[NAME[id]];
    const px = r.x + (r.w >> 1), py = r.y + (r.h >> 1);
    if (e.run3_menu_hover(px, py) !== id)
      throw new Error(`${NAME[id]} centre (${px},${py}) hovered as ${e.run3_menu_hover(px, py)}`);
    if (e.run3_menu_hover(r.x - 3, py) === id)
      throw new Error(`${NAME[id]} hovers 3px left of its own box`);
    if (e.run3_menu_hover(r.x + r.w + 2, py) === id)
      throw new Error(`${NAME[id]} hovers 2px right of its own box`);
  }
  if (e.run3_menu_hover(W + 5, H + 5) !== -1) throw new Error("off-screen hover is not MENU_NONE");
  for (let pres = 0; pres < 17; pres++) {
    const r = charRect(pres);
    if (!r) throw new Error("no box for character slot " + pres);
    const px = r.x + (r.w >> 1), py = r.y + (r.h >> 1);
    const got = e.run3_menu_hover(px, py);
    if (got !== 16 + pres)
      throw new Error(`character slot ${pres} centre hovered as ${got} (want ${16 + pres})`);
  }
  // clicking a character box selects THAT slot's character (atlas id -> back)
  for (const pres of [0, 4, 8, 9, 16]) {
    const r = charRect(pres);
    e.run3_menu_click(r.x + 1, r.y + 1);
    if (e.run3_char_pres(e.run3_menu_char()) !== pres)
      throw new Error(`clicking slot ${pres} selected the character in slot ` +
                      e.run3_char_pres(e.run3_menu_char()));
    if (e.run3_char_order(pres) !== e.run3_menu_char())
      throw new Error("the selected id is not run3_char_order(slot)");
  }
  // a click on the chrome selects no character
  const held = e.run3_menu_char();
  e.run3_menu_click(R.TITLE.x + 2, R.TITLE.y + 2);
  if (e.run3_menu_char() !== held) throw new Error("clicking the title changed the character");
  console.log("menu hit-testing agrees with the layout OK");

  // 4. IT IS RENDERED, from the original's own bitmaps. The metric is INK: the
  //    number of pixels inside a box that are not the star sky. The title logo
  //    is grey-toned (its commonest colours are 130,130,130 and 51,51,51), so
  //    a "brightness" threshold would undercount it — what proves a bitmap
  //    drew is that it put pixels down where its rect is.
  const shot = () => new Uint32Array(e.memory.buffer, e.run3_buffer(), W * H).slice();
  const isSky = (p) => p === skyPx;
  const inkIn = (fb, r) => {
    let n = 0;
    for (let y = r.y; y < r.y + r.h; y++)
      for (let x = r.x; x < r.x + r.w; x++) if (!isSky(fb[y * W + x])) n++;
    return n;
  };
  e.run3_enter_menu();
  e.render_menu();
  const menu = shot();
  /* the sky is whatever colour covers most of the frame — the menu's own
     backdrop, taken from the frame rather than hardcoded here */
  const hist = new Map();
  for (let i = 0; i < menu.length; i++) hist.set(menu[i], (hist.get(menu[i]) || 0) + 1);
  let skyPx = 0, best = -1;
  for (const [c, n] of hist) if (n > best) { best = n; skyPx = c; }
  if (best < W * H / 2) throw new Error("the menu has no backdrop colour");
  const titlePx = inkIn(menu, R.TITLE);
  if (titlePx < 8000)
    throw new Error("the title bitmap did not draw (" + titlePx + " inked px)");
  if (inkIn(menu, R.PLAY) < 1500) throw new Error("the Play bitmap did not draw");
  if (inkIn(menu, R.OPTIONS) < 1500) throw new Error("the credits bitmap did not draw");
  if (inkIn(menu, R.LEADERBOARDS) < 1000) throw new Error("the leaderboards bitmap did not draw");
  // a drawn label: the port's own font colour must be present in the button's box
  const labelPx = (fb, r, c) => {
    let n = 0;
    for (let y = r.y; y < r.y + r.h; y++)
      for (let x = r.x; x < r.x + r.w; x++) if (fb[y * W + x] === c) n++;
    return n;
  };
  const LABEL = 0xffe4e8f0;   // 0xAARRGGBB for the menu labels' rgb(228,232,240)
                             // (a literal: `0xff<<24|x` is signed and would not
                             //  equal the Uint32Array's own value)
  for (const n of ["EXPLORE", "INFINITE", "MAP", "SHOP"]) {
    const got = labelPx(menu, R[n], LABEL);
    if (got < 200) throw new Error(`${n}'s label did not draw (${got} label px)`);
  }
  // the grid is drawn: every box is filled, highlight and sprite and all
  let gridPx = 0;
  for (let pres = 0; pres < 17; pres++) gridPx += inkIn(menu, charRect(pres));
  if (gridPx < 17 * 1000)
    throw new Error("the character grid did not draw (" + gridPx + " inked px)");

  // selecting a different character repaints — and only inside the boxes that
  // changed, which is what proves the highlight is the grid's, not stray.
  const slotA = e.run3_char_pres(e.run3_menu_char());
  const slotB = (slotA + 5) % 17;
  let m2 = menu;
  for (let tries = 0; tries < 17; tries++) {
    const cand = (e.run3_char_pres(0) + tries) % 17;
    if (e.run3_char_pres(e.run3_char_order(cand)) !== cand)
      throw new Error("run3_char_pres/run3_char_order are not inverses at slot " + cand);
  }
  e.run3_menu_select_char(e.run3_char_order(slotB));
  e.render_menu();
  m2 = shot();
  let diff = 0, outside = 0;
  const boxA = charRect(slotA), boxB = charRect(slotB);
  const inside = (r, x, y) =>
    x >= r.x - 2 && x < r.x + r.w + 2 && y >= r.y - 2 && y < r.y + r.h + 2;
  for (let y = 0; y < H; y++)
    for (let x = 0; x < W; x++) {
      const i = y * W + x;
      if (menu[i] === m2[i]) continue;
      diff++;
      if (!inside(boxA, x, y) && !inside(boxB, x, y)) outside++;
    }
  if (diff < 100) throw new Error("changing the selection repainted nothing (" + diff + " px)");
  if (outside > 0)
    throw new Error(`the selection repainted ${outside} px outside the two boxes that changed`);
  console.log(`menu renders OK (title ${titlePx} inked px, grid ${gridPx}, ` +
              `selection moves ${diff} px, all inside its boxes)`);

  console.log("all menu checks passed");
})();
