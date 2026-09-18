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

- **Staged camera sign**: the authored cutscene `y` runs along **gravity**
  (the floor side: the level starts with the floor at +y), and the port's tube
  space has the runner's floor at **-y** (`corner()` puts side 0 below the
  axis) — so the staged `lift` is negated before the offset is rolled by the
  held frame's `G.rot`. Without the negation the camera sat on the wrong side
  of the axis in every scene: the cast fell off the bottom of the frame and
  only the distant sprites, bunched near the screen centre, were left.
- **`verify_stage` staged-camera test**: the authored per-frame cutscene camera
  is a *position* (the original's camera is an unparented `Point3D` at rest on
  the tunnel axis), so a staged scene places it on the **axis plus the authored
  offset** at one facet apothem per unit — never on the gameplay chase camera's
  spot (a facet apothem up the runner's wall) and never with the chase pitch.
  The offset is rolled by `G.rot`, so `side`/`lift` are pinned against the
  rolled model rather than a fixed screen direction.
  The held tunnel keeps its own facet roll and is viewed straight down the bore
  (`cam_pitch = 0`); the runner's screen spot shifts the other way. The staged
  distance is `CAM_BACK_STAGE` (closer than the chase camera) and a scene that
  fires on a tunnel's FINAL checkpoint backs the camera off the level tail
  (`STAGE_TAIL_BACK`), since no next level is drawn past it. A final level whose
  authored `result-win` row sits before the end of its terrain keeps its own
  rows past the finish, so that back-off is skipped there.
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
   where `run3_stage_cam` re-adds it to the held-frame roll.Also settled while implementing: the *level-load* snap is `open_level()`
setting `G.rot` to the new facet (which makes the corridor section of a
seam blend glideless when the runner crosses it at speed).

## 10. Staged cutscene camera — authored position + quaternion

A cutscene in the original sets its camera itself, per frame:

```as
Point3D = tunnel.<cam>.<position>;  _loc1_.x/y/z = <x>, <y>, <z>;
var _loc2_ = tunnel.<cam>.<rotation>;      // a quaternion
_loc2_.x = a*sin(A); ... .w = cos(A);      // a turn of 2A about (a, b, c)
```

and the renderer projects with a fixed **vertical** fov of 72°
(`Context3DUtils.init(render, 1.2566370614359172, 15, 3000, ...)`), so only the
horizontal extent follows the window. `run3.h` therefore derives `FOCAL` from
the stage height instead of hard-coding it, and the port stages an authored
scene the same way the original does:

| | model |
|---|---|
| **world scale** | 1 unit per original pixel (`STAGE_PX = 1.0`, §11 — the engine's unit IS the original's world pixel); a level's tile is its own `tileWidth` in world px, so a cast row advances `tilew` px and a camera `z` of 4129 is 4129 px down the bore |
| **pan** | the authored `x`/`y` minus the camera rig's own offset `(2, 106)` (`STAGE_PAN_X`/`STAGE_PAN_Y`, calibrated on ComingThrough), turned into the port's cross-section frame by the inverse of `STAGE_GAUGE` and used as the camera's place |
| **orientation** | the authored quaternion, consumed as ONE turn: the view applies the original's own `QuaternionUtils.rotateVector(conj(q), p - camPos)`, no Euler decomposition |
| **place** | the authored `z`, resolved against the level (see below), used AS IT IS |
| **cast size** | the original's own spritesheet size: a frame is `frame.h * 0.45681063122923593` world px, so the sprite is `FOCAL * that / shot` tall — pure perspective |

**The original writes the camera in two forms, and the bake reads both.**

```as
// A) field writes (the common one)
Point3D = tunnel.<cam>.<position>;  _loc1_.x/y/z = <x>, <y>, <z>;
// B) the decompiler's push/pop form (Candy)
§§push(tunnel.<cam>); §§push(0); §§push(150); §§push(<z>);
§§push(§§pop() - 800); §§pop().<setPosition>(§§pop(),§§pop(),§§pop());
QuaternionUtils.setFromEuler(<x>, <y>, <z>, tunnel.<cam>.<rotation>);
```

Form B was missed entirely before, so Candy and friends fell to the fallback
path — where the port rolls the whole LEVEL by the held frame's facet roll and
comes out with the wrong angle. Candy's real camera is
`setPosition(0, 150, endZ - 800)` with a small Euler tilt and **no level roll**.

**The `z` has a base** (`STAGE_CAMSHOT` runs are `[frame, x, y, z, rot, zb]`),
and only the level-relative one resolves:

| zb | what `z` is | the port |
|---|---|---|
| 1 | `endZ + z` — the level's own end, where a cutscene fires | `D = front*tw - z*STAGE_PX` (the level's length cancels) |
| 0 | a bare literal, in the SCENE's section chain | `front*tw - z*STAGE_PX` **only if it lands in 15..3000 px**, else the port's own shot |
| 2 | `startZ + z` | `D = z*STAGE_PX - front*tw` |

(`STAGE_PX = 1.0` in run3.c: the engine's unit IS the original's world pixel,
so the authored number is used verbatim. Earlier revisions of this table wrote
`z/100`.)

**Only the level-relative form (`zb` 1 and 2) resolves exactly.** For those the
cast's rows (`placeAt`) and the camera's `z` are the same coordinate — the
level's own row chain — so the difference IS the shot, and the port uses it as
it is.

The bare literal is different: its origin is the scene's OWN section chain while
the cast's rows are level-local, so as a distance it lands anywhere from -12948
to +6375 px across the baked scenes. Believing it unconditionally staged most
scenes with the cast BEHIND the camera, drawing an empty frame (`OfCourse`
resolves to -9739 px that way). 215 of the 219 authored segments are this form
and only 68 of them land in band, so the port keeps its own shot
(`stage_own_dist`, `CAM_BACK_STAGE` apothems) for the rest. This decides the
DISTANCE only — the authored pan, quaternion and gauge are unaffected.

The scenes the original gives NO camera at all (`STAGE_TIMELINE[name].ca ===
false`) keep the port's own staged camera (`run3_stage_cam`, `CAM_BACK_STAGE`
apothems), the same model the out-of-band bare literals above fall back to.
`ca` lives on the TIMELINE, not on its segments — reading it off a segment is
the bug that made every authored scene take this path: `bake_cutscenes.py`
writes `ca` once per SCENE, on the timeline object, while `stageGoto` read it
off the SEGMENT — and no segment carries one, so every authored scene silently
took this legacy branch. `stageOpen` now derives `stage.authored` from the
timeline's `ca` and `stageGoto` tests `stage.authored || s.ca || stage.cams`.

**Cast size is the original's own spritesheet size.** `StageActor` builds its
spritesheet quad at `(spriteSourceSize.x, spriteSourceSize.y, frame.w, frame.h)
* 0.45681063122923593` world px — its own constant, in the same world pixels the
level's own geometry is in. Nothing in a cutscene rescales the cast: its PLACE
is authored, its size is the game's, so its screen height is simply what the
authored camera's perspective makes of it (`FOCAL * frame.h * 0.4568 / 100 /
D`). A close shot really does draw a big character and a distant one a small
one, and the frame that is on screen is the animation's own cropped frame.

**A shot is never backed off the wall.** A cast member is drawn around its own
ring point, on the wall a tube radius off the axis, so a shot nearer than
`R / tan(fov/2)` (about 1.4 apothems) projects that point past the frame's edge.
The port uses the authored distance anyway — putting a floor there was the
port's own invention, and a scene shot from inside the wall looks exactly like
what the original would draw.

**The staged view is the original's own transform**, `R^-1 * (p - camPos)`:
the camera's position is subtracted **in world axes first** (its authored x/y
pan and its z are a place in the tunnel, not a screen offset — the two only
coincide while the rotation is identity), and only then is the offset turned
into the view basis. Subtracting the pan afterwards put a rolled camera's pan
in the wrong direction.

**`R^-1` is one quaternion turn, never an Euler chain.** The authored
quaternions mix a roll about the bore with a small tilt of it, and
`bake_cutscenes.euler_quat` builds them as `Rx*Ry*Rz`, so their x/y/z Euler
components are the angles about x/y/z *in that order*. Decomposing them and
applying each about a different axis (the x component as the view roll's axis,
the y about x, the z about y) turns a scene's **roll about the bore into a tilt
across it** — the tunnel leans instead of the frame turning. The renderer
applies the conjugate as the single rotation matrix the original's own
`QuaternionUtils.rotateVector` uses, so every component of the authored
orientation lands where the original puts it.

**`STAGE_GAUGE` = a quarter turn about the bore, plus a half turn.** The port's cross-section frame puts side
0's midpoint at `-PI/2` (§4.1, `m_s = -PI/2 + TAU*s/n`); the original indexes
its sides by the angle of the point turned into the LEVEL's own frame —
`TunnelLayout3D.getIndexNearest` takes `atan2(y, x)` (mirrored: `atan2(y, -x)`)
and rounds it by `TAU/n` — so side `s` sits at `TAU*s/n`: the `+x` axis, a
quarter turn the other way. Gameplay cannot see the difference (turning the
world by a constant and the camera by the same constant is the same picture,
which is why the roll only ever pinned the *steps*), but a staged frame is
viewed through the *authored* camera, whose position and rotation are absolute
in the original's frame — so the port turns its world offsets by `+PI/2` about
the bore. It moves the cast and the props around the tube but not the tube,
which is why the places read correctly while the shot did not. It applies to
**authored** scenes only: a fallback scene is shot in the port's own frame (the
level already rolled to the runner's facet), so it takes no gauge.

On top of that quarter turn the frame is rolled a **half turn** about the bore —
a genuine 180° rotation of the picture, not a mirror — so `STAGE_GAUGE` is
`PI/2 + PI` and the camera's pan converts as the matching inverse `(x, y) ->
(-y, x)`. The two must move together: turning the world without turning the
camera's own place leaves the camera where the scene never put it.

**The camera's pan carries the rig's own offset.** A scene's authored `x`/`y` is
a place in the original's cross-section, and the original's camera rig sits at
`(2, 106)` in it — ComingThrough's frame 0 sets exactly that. Subtracting the
offset (`run3.c`'s `STAGE_PAN_X`/`STAGE_PAN_Y`) before the gauge turn puts
ComingThrough's camera ON the bore axis, so that frame's centre pixel is the
tunnel axis at every depth, while every other scene keeps its authored pan
relative to the same rig. The shot distance is never clamped: a negative
distance just means the camera is on the far side.

**The cast and the props turn with the frame.** The original's billboards do
not take their up axis from the camera: a `StageActor` sets its up to
`(0,-1,0)` turned by the actor's own rotation and hands that to the billboard
(`StageActor.updateBillboard`), so a rolled camera tilts the sprite on screen
along with the level. The port draws its sprites axis-aligned in screen space
(which is exactly right in gameplay, whose level is rolled to put the runner's
facet at the bottom), so a staged frame carries the tilt by hand: each actor
and prop is blitted rotated by the frame's own roll, measured at its own depth.
An identity camera gives exactly 0, so scenes that were already right keep the
pixel they had.

**The sky and the space layers go through the same transform.** In the original
they are ordinary children of the one scene, placed by `Scene3D.project` like
the walls, so a cutscene's authored camera places them too. The port's
chase-camera model (`cam_pitch`/`view_roll`/`cam_back`, gameplay only) is
bypassed in a staged frame: `stage_view_map` is the one transform, and the tube,
the cast, the props, the star sphere, the ghost tunnels and the wormhole all
come through it.

**The screen map is the original's own, and its y runs DOWN.** `Scene3D.project`
applies `perspectiveFieldOfViewLH(fovY, width/height, 15, 3000)` with
`appendScale(1,-1,1)` on top, and `StageActor.getBounds` converts NDC with
`((ndc.x+1)/2*W, (1-ndc.y)/2*H)` — expanding those gives
`sx = W/2 + vx*FOCAL/vz` and `sy = H/2 + vy*FOCAL/vz`. Subtracting `vy` here
(the port's own gameplay sign) mirrored the whole shot, and a mirror reverses
every rotation: a scene that rolled its camera about the bore came out rolling
the other way — the tilt-along-the-tunnel-axis error. The frame's centre is
`(W/2, H/2)` exactly; the gameplay `(CX, CY)` nudge has no counterpart in the
original.

`verify_stage.js` §6i/§6i1/§6i1b pin all of this: the axis base and authored pan
of the fallback path, Candy's recovered push-form camera (`endZ - 800`, zb 1, a
real quaternion), the endZ shot resolving to 800.0 px exactly, the cast's size
coming from the original's own frame size (and scaling with the shot), a short
authored shot used as it is, the cross-section quarter turn plus the half-turn
rollout (side 0 half a turn off the `+x` axis with side 4 a quarter turn UP,
both radii equal — equal radii are what tell a rollout from a mirror), and the
roll: a
pure authored roll must move the cast exactly like a rotation about the bore's
own screen point (15/30/45/90°, `< 2 px`) and must leave the whole frame the
identity frame's rigidly-turned likeness.

## 11. World units — the original's own (1 unit = 1 world pixel)

**The engine used to have its own unit (1 unit = 100 original world pixels), and
that was wrong.** The original is authored in pixels everywhere: a level's
`tileWidth` is a pixel count, the scene cameras are positioned in pixels, and a
spritesheet frame is drawn at `frame.w * 0.45681063122923593` of those pixels.
Carrying a rescaled unit meant every piece of authored data had to be converted
on the way in, and two of those conversions had been mis-set:

* `level_tilew()` divided `BAKED_TILEW` by 100 — i.e. it treated the stored
  value as centi-units. The stored value is the original's own `tileWidth`
  **verbatim** (bake_levels.py copies `ex["tilew"]` straight from the level's
  `tileWidth-...` section parameter), so the division threw away the scale.
* levels with no `tileWidth` in their data fell back to a hand-set per-tunnel
  `baseTile` (1.00 = "100px"). The original's loader defaults that parameter to
  **75** — `TunnelSection`: `parseInt(getParam(param2, "tileWidth"), 75)`. 858
  of the 1005 baked levels carry no explicit `tileWidth`, so most of the game
  was running 33 % bigger tiles than the original, which is why a character
  (whose size IS fixed in pixels by the spritesheet) read too small against the
  tunnel.

**The unit is now the world pixel.** Everything length-valued was multiplied by
100 once, so the rendered result is unchanged except where a bug was fixed:

| constant | before | now |
|---|---|---|
| `DCAM`, `VIEW`, `NEARZ` | 5.0 / 34.0 / -4.55 | 500.0 / 3400.0 / -455.0 |
| `GRAV`, `JUMPV` | 10.0 / 5.6 | 1000.0 / 560.0 |
| `LAND_BOB_AMP`, the lift's `0.02`, the void drift's `1.1` | 0.030 / 0.02 / 1.1 | 3.0 / 2.0 / 110.0 |
| `VIEWPLANE_EPS` | 0.25 | 25.0 |
| `STAGE_PX`, `STAGE_PX_UNITS` | 0.01 | 1.0 (no conversion left) |
| `level_tilew`, `level_xsec`, `G.tile` | `BAKED_TILEW/100` | `BAKED_TILEW` verbatim |
| the fallback tile | `t->baseTile` | `DEFAULT_TILEW` = 75 (the loader's default) |
| the sky sphere | `0.01 * st->x` | `st->x` (the bake is already the radius in px) |
| `draw_ghost`'s planet offset | 22.0 | 2200.0 |

`g_jump`/`G.jv` are lengths/velocities too, so their sentinel thresholds and the
two animation terms that read them as a phase were rescaled with them
(`G.jump = 0.1` to leave the ground, the 0.5/20.0 airborne tests, `ssin(jump *
0.03)`, `jh = G.jump / 100`).

**The character's screen size now comes from the original, in both places.**
`draw_runner` had a port-invented "~24 px tall at 360p", i.e. 48 px at 720p,
which is about two thirds of the character's real size. It now uses the same
`stage_sprite_h` the cutscene cast uses — the original's own spritesheet scale
through the frame's real projection, `FOCAL * frame.h * 0.45681063122923593 /
depth`. On Primary that is 91.7 px at 720p (12.7 % of the screen), and the
character-to-tile ratio is the original's `0.4568 * frame.h / tileWidth`. The
contact shadow and the dead-runner tile are sized from the character instead of
from `H/360`, so they stay in proportion.

**Verification.** A pure unit change must not move a single screen pixel, so the
whole `verify_*.js` battery is the regression net: all 11 suites pass. Two
assertions in `verify_stage.js` were unit-dependent and were restated in pixels
(the endZ shot is 800 px, the authored dolly is 80 px, a one-unit shot is 100 px,
`PX_UNITS` is 1.0); the pan check's absolute `1e-6` tolerance became relative,
because the port's own `ssin`/`scos` are approximations (~1.5e-7) and an
absolute tolerance on a value that is now 100x larger was measuring the
trig approximation rather than the camera.
