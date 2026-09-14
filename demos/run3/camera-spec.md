# Run 3 Web Port — Camera Model Spec

Status: **implemented** (v0.8.8). The camera model landed with `verify_cam.js`
as its contract test; the space-scene placement, the engine-drawn cutscenes and
the H-guide envelope landed alongside it. Base revision: **v0.8.7** (`c9585c9`).

---

## 1. The request

> "constraint broken player must be upright compared to tunnel floor."
> "tunnel only rotates. it should pan too. and for rotation, if it has 4 sides it
> should rotate in 90 deg steps, if it has 6 sides, it should rotate in 60 deg
> steps. etc."
> "runner never moves on screen. yes, but that only makes sure the camera and
> runner never move relative to each other. the tunnel doesn't really have many
> constraint except the 3 mentioned."
> "pan as in camera can move side to side (I know that isn't what pan means but
> go with it)"
> "up and down too for camera should be allowed too for jump."
> "runner never moves on screen except for cutscenes and the in place animation."
> "runner cannot move vertically for jump. (on screen, it should move in world
> space though)."

The runner sprite is the origin of the whole camera; the **level** is what
moves, rotates and morphs. The camera has very few constraints, and every one
of them is currently violated or approximated:

| # | Constraint | Today | Wanted |
|---|------------|-------|--------|
| C1 | Runner never moves on screen (except cutscenes + in-place anim) | Holds horizontally only by luck of the roll formula; breaks the moment the roll is quantized | Holds exactly, in all axes, always |
| C2 | Runner is upright relative to the tunnel floor | **Broken** — the roll points at the runner's exact wall point, so the flat chord under them is tilted (up to ±π/n) | Floor facet is horizontal → exact `360/n` steps |
| C3 | The tunnel may pan (translate), not just rotate | **Broken** — camera sits on the axis projection, so the axis is nailed to the screen centre and the tunnel is a pure spin | Camera translates laterally; the tunnel/axis slides |

---

## 2. Current implementation (what this replaces)

All in `demos/run3`, three translation units sharing `render_int.h`:
`run3.c` (sim + state + exports), `render.c` (tube/sky/cast/map),
`math.c`, `gfx.c` (framebuffer), `space.c` (outside the tube).

- **Roll**: `run3.c` `cam_rot_target()` →
  `-PI/2 - satan2(Py, Px) + g_rotOff`, where `(Px,Py)` come from
  `runner_wall_pt()` — the runner's *exact* point on the (gently blended)
  n-gon, in unit-circumradius space. Copied straight into `G.rot` every step
  (`run3.c` ~line 1240), not eased: the comment there argues the target is
  already continuous.
- **Camera position**: `render.c` `proj()` places the camera at
  `(0, -cam_out)` in the *rolled view frame*, with
  `cam_back = CAM_BACK * rrad`, `cam_out = CAM_OUT * rrad`
  (`CAM_BACK 1.25`, `CAM_OUT 0.35`), and `rrad = run3_runner_rad()` — the
  runner's own distance from the axis. There is **no** lateral camera offset,
  hence no pan.
- **Pitch**: solved so the runner lands at `2H/3`
  (`x = (h + t*cam_back)/(t*h - cam_back)`, `h = rrad - cam_out`,
  `t = (CY - 2H/3)/FOCAL`).
- **Jump**: drawn as a world-space lift `lift = 0.02 + G.jump` on the runner
  only, so the runner visibly rises on screen.
- **Death**: `S_DEAD` drifts the runner down (`lift = 0.02 - dd*1.1`) and
  shrinks them; the camera is fixed.
- **Facet steps**: `poly_u()`/`tube_pt()` put corner `c` at
  `a_c = -π/2 - π/n + 2π c/n`, so **side `s`'s midpoint is at
  `m_s = -π/2 + 2π s/n`** and side `s` is the flat facet spanning
  `a_s → a_{s+1}`.
- **Authored roll**: `BAKED_ROT` per level, read into `g_rotOff`
  (`run3.c` ~line 355), added to the roll.
- **Seams**: `rowcross_t` + `ROWXC_ROWS 12` in `render.c`/`run3.h` already
  blend sides/size/colour across a level boundary over a 12-row seam
  (`SEAM_SOLID 6` solid rows either side).
- **Test seams**: `run3_rot()`, `run3_rot_at(row)`, `run3_runner_offset()`,
  `run3_runner_rad()`, `run3_runner_pt()`, `run3_stage_cam()`,
  `run3_stage_liftf()`, `run3_stage_sidef()`, `run3_space_visible()`,
  `run3_space_survived()`.
- **Cutscenes**: a DOM overlay (`#cutview`, `run3.css .cutstage`) with the
  wasm drawing only the tunnel backdrop; the host drives
  `run3_cutscene_hold/backdrop/backdrop_end` + `run3_stage_actor/prop/cam`.
- **Level load**: `open_level()` sets `G.rot = cam_rot_target()` so there is
  no spin-in; `open_level_continue()` deliberately preserves the roll.

---

## 3. Interview decisions (final)

| Topic | Decision |
|---|---|
| Lateral pan | **Pan fully** — camera translates by the runner's offset along the chord; runner stays dead-centre-x, tunnel slides sideways |
| Roll step timing | **Ease, until steering settles** — ease toward the target while `vRing` is active; snap to the exact angle once `vRing` settles |
| Seam roll | **Blend the two quantized angles** across the seam (same `t` as the shape blend) |
| Jump vertical follow | **100%** — camera rises exactly with the jump; runner is perfectly pinned, the tunnel drops |
| Other vertical uses | **Dead / falling out**, **landing bob**, and jump. *Not* cross-section size changes, *not* cutscene lift |
| Death camera | **Follow the runner out** — camera tracks the fall so the tunnel/space slides away |
| Screen anchor | **Fixed low-third**, feet at `2H/3`, horizontally centred, at every size and shape |
| Sprite motion | **Frames + a run-cycle bob** allowed; no other translation |
| Pan clamping | **Unclamped** — even if the axis leaves the frame on a narrow tunnel |
| Airborne roll | **Freeze the roll in the air**; re-quantize on landing (matches the `gravSide` latch) |
| Camera distance | **Keyed to the facet apothem** — constant across a side, so no zoom while walking a facet |
| Authored `BAKED_ROT` | **Dropped in gameplay** so the floor is exactly level; staged scenes may still use it |
| Scope | Camera model **plus** space-scene placement, cutscenes→wasm/full-window, H-guide followability, level-load camera |

---

## 4. Math specification

### 4.1 The facet roll

Side `s` of an `n`-gon has midpoint angle `m_s = -π/2 + 2π s/n`. To lay that
facet flat (its outward normal straight down, the runner upright) rotate by

```
roll_facet(s, n) = -π/2 - m_s = -2π s / n          ( == -360°·s/n )
```

This is exactly the requested step function:

- `n = 4` → `0°, -90°, -180°, -270°` (90° steps)
- `n = 6` → 60° steps
- `n` sides → 360°/`n` steps

Every tile on one side shares the same angle (a side is one flat chord), so
`k > 1` does not affect the roll — only the runner's position *along* it.

### 4.2 Lateral pan and the pinned runner

Let `P = (Px, Py)` be the runner's point in tube space (unit-gon point scaled
by the row's blended circumradius `R`), and `θ` the roll actually in effect
(blended across a seam and eased while steering). Rolled coordinates:

```
rx = Px·cosθ − Py·sinθ
ry = Px·sinθ + Py·cosθ
```

The camera is placed at

```
cam_cx = rx
cam_cy = ry + cam_off + lift_world
```

and `proj()` subtracts the camera position *in the rolled view frame*:

```
xr = x − cam_cx
yr = y − cam_cy
```

so the runner always lands at relative `(0, −cam_off)` → screen
`(CX, 2H/3)` exactly. **C1 holds by construction**, not by algebra that
happens to cancel.

When settled (`θ = −2πs/n`) this has a closed form — the facet is horizontal at
height `−apothem`:

```
apothem a = R·cos(π/n)
cam_cx = (f − 0.5) · 2R·sin(π/n)          f = frac(ring / k) ∈ [0,1)
cam_cy = −a + cam_off + lift_world
```

so the pan is a pure linear sweep across the side: at a facet corner it is at
its extreme, at the facet midpoint it is zero (the axis is centred). This is
the "pan" — the tunnel translates by the runner's chord offset while the
runner holds still.

### 4.3 Camera distance (framing)

Keyed to the **apothem**, not the runner's running distance:

```
a      = R · cos(π/n)                      (blended across a seam)
cam_back = CAM_BACK · a
cam_off  = (1 − CAM_OUT) · a               (0.65·a keeps today's framing)
pitch:  x = (cam_off + t·cam_back) / (t·cam_off − cam_back),
        t = (CY − 2H/3)/FOCAL,  pitch = x − x³/3
```

Because `cam_off` is constant along a facet, the framing is rock-steady across
a whole side, and because it scales with the apothem it stays the same in a
0.30-tile level as in a 3.00-tile one. The runner's sprite remains a fixed
pixel size (unchanged requirement).

### 4.4 Vertical axis

`lift_world` is the vertical world offset the camera follows:

| Source | Amount |
|---|---|
| Jump / fall | `0.02 + G.jump`, **100%** |
| Death drift | the full `S_DEAD` downward drift (`dd`, `VOID_TIME`-normalised) |
| Landing bob | small dip driven by `G.landT` (amplitude TBD, ~2-4 px) |
| Run-cycle bob | allowed on the **sprite** (drawn), not on the camera |

Net effect during a jump: camera and runner rise together, the runner holds
its screen row and the **tunnel drops**. The jump is real world-space motion
(never a screen-space offset).

### 4.5 Roll blending and easing

1. **Seam**: `θ_target = lerp(roll_facet(s_own, n_own),
   roll_facet(ring_remap(s), n_neighbour), xc.t)` using the existing
   `rowcross_t.t` and `ring_remap()`, so the roll morphs with the shape over
   the 12-row seam.
2. **Ease**: `G.rot += (θ_target − G.rot) · k_ease`, and when
   `|G.vRing| < ε` set `G.rot = θ_target` exactly. The floor is exactly level
   whenever the player is not actively steering onto a new side; a steering
   player sees a smooth rotation instead of a one-frame 90° snap.

### 4.6 Airborne freeze

While `G.jump > 0 || G.jv > 0` (not touching down), freeze `G.rot` at the
takeoff angle — reuse the `gravSide` latch semantics (`gravSide` already only
changes on touchdown, `run3.c` ~line 1222). On landing, recompute the target
from the landing side and let the ease run.

---

## 5. Requirements checklist

**Camera model (primary)**

- [x] R1 Roll is `−360°·side/n` when settled; a test asserts every settled roll
      is an integer multiple of `360/n` within 1e-6.
- [x] R2 Camera translates laterally; `cam_cx` exposed; a test asserts the pan
      range across a lap of a 4-gon is ≈ the chord length, not 0.
- [x] R3 Runner screen offset is 0 in every state (straight, turning, jumping,
      landing, on every side, every `n`), asserted over a full lap.
- [x] R4 Jump is followed 100%: runner offset stays 0 through a jump and the
      tunnel's screen row moves by the jump amount.
- [x] R5 Vertical follow also covers `S_DEAD` drift and a landing bob.
- [x] R6 Roll is frozen airborne and re-quantized on landing.
- [x] R7 Seam roll blends the two quantized angles over the seam (monotone,
      no jump larger than `360/n_max`).
- [x] R8 Camera distance keyed to the apothem (no zoom while walking a facet).
- [x] R9 `BAKED_ROT` has no effect on gameplay roll; staged scenes may keep it.
- [x] R10 Cutscenes are exempt: the staged camera keeps full freedom via
      `run3_stage_cam(side, lift)`; the gameplay pin does not apply in `S_CUT`.
- [x] R11 `run3_runner_offset()` redefined to mean "screen-x offset after the
      camera pan" and pinned at 0.
- [x] R12 Pan is unclamped.

**Level load**

- [x] R13 `open_level()` sets the roll to `roll_facet()` for the spawn ring (a
      snap, since `vRing = 0`), and `open_level_continue()` re-quantizes to the
      new level's facet after `ring_remap` — no spin-in, no step at the seam.

**Space scene placement**

- [x] R14 Distant tunnels are drawn at their real `TunnelSection` transform
      (`level/<Space>.as` re-parents the Planet and Wormhole onto the nearest
      section's own map position) rather than a map-node ring.
- [x] R15 The **planet** is added (baked art exists in the source's backdrop
      class; today only tunnels + wormhole are drawn).
- [x] R16 Render order stays `sky → outer tunnels → wormhole → own tube →
      player`, with the tube occluding the layers behind it.

**Cutscenes → wasm, full window**

- [x] R17 Cutscene content is composed by the wasm renderer filling the whole
      window (same framing as gameplay), not a DOM popup card.
- [x] R18 The engine owns cutscene playback state; the host keeps only input,
      timing and audio.
- [x] R19 `.cutstage`/`#cutview` popup styling is retired or reduced to a
      full-window letterbox with no card.

**H-guide followability**

- [x] R20 The planner only emits moves inside the physics envelope
      (lateral distance per row ≤ what `LATSPD`/`rowsPer` allow; leap rows ≤
      what `JUMPV`/`GRAV` allow; mid-air drift bounded).
- [x] R21 A follower bot clears the extended tunnels (F 0..5+, S, V, Shoal),
      not just `F 0..3`; `verify_hint` asserts both geometric validity *and*
      drivability.

---

## 6. Files to touch

| File | Change |
|---|---|
| `run3.c` | `cam_rot_target()` → facet roll; add seam blend + ease-until-settled; airborne freeze; drop `g_rotOff` from gameplay; expose `cam_cx/cam_cy`, `roll_step()`, `roll_is_facet()`; `open_level` / `open_level_continue` roll handling |
| `render.c` | `proj()` takes the camera position in the rolled frame; `cam_off`/`cam_back` off the apothem; `lift_world` for jump/death/land; `draw_runner()` uses the true rolled runner point + run-cycle bob; re-check `draw_hint()` (uses the roll), `sky_project()`, `space*()` |
| `space.c` | planet; real `TunnelSection` transforms |
| `run3.h` | new exports/seams, updated comments for the model |
| `render_int.h` | shared camera globals |
| `app.js` / `run3.css` / `index.html` | cutscene full-window rendering path (R17-R19) |
| `verify_stage.js` | R1-R7, R11, R13 assertions |
| `verify_hint.js` | R21 drivability |
| a new `verify_cam.js` | lap/pan/jump/death/seam camera suite |
| `DEOBFUSCATION.md` | document the facet camera, the pan, and the src provenance |

---

## 7. Verification plan

New / updated suites (all must stay green alongside the existing nine:
`verify_app`, `_chars`, `_crumb`, `_feet`, `_hint`, `_hitbox`, `_inf`,
`_levels`, `_stage`):

1. **`verify_cam.js`**
   - settled roll ∈ `{−360°s/n}` for every level shape in the baked corpus;
   - full-lap pan range and `run3_runner_offset() == 0` for `n ∈ {4,5,6,8,16}`;
   - jump: offset stays 0, tunnel row shifts by the jump;
   - death: camera follows the drift;
   - seam: walk a transition row by row, roll monotone, no jump `> 360/n_max`;
   - airborne: roll constant between takeoff and landing.
2. **`verify_stage.js`** — keep sections 5/6 (authored pan, rolled-wall culling);
   add the facet-roll and no-spin-on-load assertions.
3. **`verify_app.js`** — keep the end-to-end autopilot green (it exercises the
   cutscene staging path end-to-end).
4. **`verify_hint.js`** — follower bot per extended tunnel; fail on a stall that
   is a planner error rather than a difficulty wall.

## 8. Regression risks / notes

- **`verify_stage` staged-camera test** (roll spans 0.56 rad; 41k px change per
  pan) depends on `cam_rot_target()` + `g_stageSide·0.28`. The staged path must
  keep the authored side offset *on top of* the facet roll so this stays
  meaningful.
- **Hint dots and gravity shading** read the roll; re-verify after the change.
- **Framing retune**: keying off the apothem instead of the runner's running
  distance is a small visual change; `CAM_BACK`/`CAM_OUT` may need a retune.
- **Ease vs constraint**: C2 is exact only when settled. That is the accepted
  trade-off (interview: "ease… until steering settles"). Document it, don't
  chase a false "always exactly upright" assertion.
- The **cutscene→wasm** and **H-guide** items are larger than the camera model
  and should land as separate commits after the camera is proven.

## 9. Open questions — resolved in the implementation

1. **Landing bob** — `LAND_BOB_AMP 0.030` world units, a `p²` dip over the
   `G.landT` = 0.25 s landing pose, folded into `run3_runner_lift()` so the
   camera follows it exactly like the jump.
2. **Roll ease** — `ROLL_EASE_RATE 12.0`/s toward the facet, snapping as soon as
   the residual is `ROLL_SNAP_FRAC 0.012` of a step, with a hard
   `ROLL_MAX_RATE 6.0` rad/s cap so a big re-quantize (landing a long jump on
   another wall) is a visible glide rather than a snap.
3. **Run-cycle bob** — stays on the sprite (`animT`-driven, as before); the
   camera only follows jump / death / landing, per R5.
4. **`BAKED_ROT`** — dropped from gameplay entirely (`cam_rot_target()` no
   longer adds it) so the steps are exactly `360/n`; kept for `S_CUT` staging,
   where `run3_stage_cam` re-adds it to the held-frame roll.

Also settled while implementing: the *level-load* snap is `open_level()`
setting `G.rot` to the new facet (which makes the corridor section of a seam
blend glideless when the runner crosses it at speed).
