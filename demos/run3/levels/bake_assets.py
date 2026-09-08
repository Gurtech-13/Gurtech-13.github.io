#!/usr/bin/env python3
"""Bake character sprite sheets + tile textures into a C header.

Uses the JSON atlas metadata to extract individual animation frames from
the packed sprite sheets. The original Run 3 uses a grid layout:
frames go left-to-right, then top-to-bottom.

Animation frame ranges (from original ActionScript source):
  AnimationSet A (§9!@§ - used by runner, skater, child):
    run:    left=(46,18) center=(28,18) right=compound([46,9],[55,9])
    jump:   left=(14,1)  center=(0,1)
    fall:   left=(15,8)  center=(1,8)
    land:   left=(23,5)  center=(9,5)

  AnimationSet B (§[!Z§ - used by other characters):
    run:    left=(60,18) center=(42,18) right=(78,18)
    jump:   left=(14,1)  center=(0,1)   right=(28,1)
    fall:   left=(15,8)  center=(1,8)   right=(29,8)
    land:   left=(23,5)  center=(9,5)   right=(37,5)
"""
from PIL import Image
import json
import os

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "assets_data.h")
BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ASSETS_DIR = os.path.join(BASE, "assets")

# Character definitions: (id, name, png_relpath, json_relpath, anim_set)
# anim_set: 'A' = §9!@§, 'B' = §[!Z§
CHARS = [
    (0,  "runner",      "images/character_runner.png",      "atlas/runner.json",      "A"),
    (1,  "skater",      "images/character_skater.png",      "atlas/skater.json",      "A"),
    (2,  "child",       "images/character_child.png",       "atlas/child.json",       "A"),
    (3,  "angel",       "images/character_angel.png",       "atlas/angel.json",       "B"),
    (4,  "ghost",       "images/character_ghost.png",       "atlas/ghost.json",       "B"),
    (5,  "lizard",      "images/character_lizard.png",      "atlas/lizard.json",      "B"),
    (6,  "ninja",       "images/character_ninja.png",       "atlas/ninja.json",       "B"),
    (7,  "student",     "images/character_student.png",     "atlas/student.json",     "B"),
    (8,  "gentleman",   "images/character_gentleman.png",   "atlas/gentleman.json",   "B"),
    (9,  "pastafarian", "images/character_pastafarian.png", "atlas/pastafarian.json", "B"),
    (10, "bunny",       "images/character_bunny.png",       "atlas/bunny.json",       "B"),
    (11, "climber",     "images/character_climber.png",     "atlas/climber.json",     "B"),
    (12, "duplicator",  "images/character_duplicator.png",  "atlas/duplicator.json",  "B"),
    (13, "pirate",      "images/character_pirate.png",      "atlas/pirate.json",      "B"),
    (14, "skier",       "images/character_skier.png",       "atlas/skier.json",       "B"),
    (15, "iceskater",   "images/character_iceskater.png",   "atlas/iceskater.json",   "B"),
    (16, "jackolantern","images/character_jackolantern.png","atlas/jackolantern.json","B"),
]

# Animation frame ranges (start, length) for each set
# Derived from original ActionScript source code
ANIM_A = {
    # AnimationSet §9!@§ (runner/skater/child)
    "run_center": (28, 18),   # center wall
    "run_left":   (46, 18),   # left wall
    "run_right":  (46, 18),   # right wall (mirrored left)
    "run_right_mirror": True,  # mirror left horizontally for right wall
    "jump_center": (0, 1),
    "jump_left":   (14, 1),
    "jump_right":  (14, 1),
    "jump_right_mirror": True,
    "fall_center": (1, 8),
    "fall_left":   (15, 8),
    "fall_right":  (15, 8),
    "fall_right_mirror": True,
    "land_center": (9, 5),
    "land_left":   (23, 5),
    "land_right":  (23, 5),
    "land_right_mirror": True,
}

ANIM_B = {
    # AnimationSet §[!Z§ (other characters)
    "run_center": (42, 18),
    "run_left":   (60, 18),
    "run_right":  (78, 18),
    "run_right_mirror": False,
    "jump_center": (0, 1),
    "jump_left":   (14, 1),
    "jump_right":  (28, 1),
    "jump_right_mirror": False,
    "fall_center": (1, 8),
    "fall_left":   (15, 8),
    "fall_right":  (29, 8),
    "fall_right_mirror": False,
    "land_center": (9, 5),
    "land_left":   (23, 5),
    "land_right":  (37, 5),
    "land_right_mirror": False,
}

ANIM_MAP = {"A": ANIM_A, "B": ANIM_B}

# Tile textures (single images, trim transparent padding)
TILE_TEXTURES = [
    ("tex_crumbling",   "images/singledpi_texture_crumblingtile.png"),
    ("tex_warnstripes", "images/singledpi_texture_warningstripes.png"),
    ("tex_icetile",     "images/singledpi_texture_icetile.png"),
    ("tex_ruinedtile",  "images/singledpi_texture_ruinedtile.png"),
    ("tex_balloon",     "images/singledpi_texture_balloon.png"),
    ("tex_plus",        "images/singledpi_texture_plus.png"),
    ("tex_arrow",       "images/singledpi_texture_arrow.png"),
    ("tex_battery",     "images/singledpi_texture_battery.png"),
    ("tex_accel",       "images/singledpi_texture_acceleration.png"),
    ("tex_locked",      "images/menu_characterselection_lockedcharacteroverlay.png"),
]


def load_atlas(json_path, png_path):
    """Load a sprite atlas and return (PIL Image, list of frame dicts)."""
    with open(json_path, "rb") as f:
        data = json.loads(f.read())
    im = Image.open(png_path).convert("RGBA")
    return im, data["frames"]


def extract_frame(atlas, frame_data, max_w=90, max_h=92):
    """Extract a single frame from the atlas, trimmed to content.
    Pads to a common size so frames are comparable."""
    fr = frame_data["frame"]
    ss = frame_data["spriteSourceSize"]
    crop = atlas.crop((fr["x"], fr["y"], fr["x"] + fr["w"], fr["y"] + fr["h"]))
    return crop, ss


def image_to_rgba(im):
    """Convert PIL image to flat RGBA uint32 array in 0xAARRGGBB format."""
    w, h = im.size
    pixels = list(im.getdata())
    data = []
    for r, g, b, a in pixels:
        data.append((a << 24) | (r << 16) | (g << 8) | b)
    return w, h, data


def write_frame_array(f, name, w, h, data):
    """Write a C array of uint32_t pixels."""
    f.write(f"static const uint32_t {name}[] = {{\n")
    for y in range(h):
        f.write("  ")
        for x in range(w):
            f.write(f"0x{data[y * w + x]:08X},")
        f.write("\n")
    f.write("};\n")


def mirror_image(im):
    """Mirror an image horizontally."""
    return im.transpose(Image.FLIP_LEFT_RIGHT)


os.makedirs(os.path.dirname(OUT), exist_ok=True)

total_bytes = 0
char_info = []  # (id, name, anim_data_per_direction)

with open(OUT, "w") as f:
    f.write("/* assets_data.h - baked sprite animation frames + tile textures.\n")
    f.write(" * Generated by bake_assets.py. Do not edit manually.\n")
    f.write(" * Frame indices match the JSON atlas metadata from the original Run 3 SWF. */\n")
    f.write("#ifndef ASSETS_DATA_H\n#define ASSETS_DATA_H\n\n")
    f.write("#include <stdint.h>\n\n")

    # Process character sprite sheets
    for char_id, char_name, png_rel, json_rel, anim_set in CHARS:
        png_path = os.path.join(ASSETS_DIR, png_rel)
        json_path = os.path.join(ASSETS_DIR, json_rel)

        if not os.path.exists(png_path):
            print(f"  {char_name}: PNG NOT FOUND ({png_path})")
            continue
        if not os.path.exists(json_path):
            print(f"  {char_name}: JSON NOT FOUND ({json_path})")
            continue

        atlas, frames = load_atlas(json_path, png_path)
        anim = ANIM_MAP[anim_set]
        print(f"  {char_name}: {len(frames)} atlas frames, anim_set={anim_set}")

        # Extract all unique frame indices we need
        needed_frames = set()
        for key in ["run_center", "run_left", "run_right",
                     "jump_center", "jump_left", "jump_right",
                     "fall_center", "fall_left", "fall_right",
                     "land_center", "land_left", "land_right"]:
            start, length = anim[key]
            for i in range(start, start + length):
                if i < len(frames):
                    needed_frames.add(i)

        print(f"    Needed frames: {sorted(needed_frames)} ({len(needed_frames)} unique)")

        # Extract and store each needed frame
        frame_data_map = {}  # frame_index -> (w, h, data_name)
        for fi in sorted(needed_frames):
            if fi >= len(frames):
                print(f"    WARNING: frame {fi} out of range (max {len(frames)-1})")
                continue
            crop, ss = extract_frame(atlas, frames[fi])
            w, h, data = image_to_rgba(crop)
            data_name = f"f_{char_name}_{fi}"
            write_frame_array(f, data_name, w, h, data)
            f.write(f"#define {data_name}_W {w}\n")
            f.write(f"#define {data_name}_H {h}\n\n")
            frame_data_map[fi] = (w, h, data_name)
            total_bytes += w * h * 4

        # Write animation lookup structures
        # frame_t stores pixel pointer + dimensions
        f.write(f"/* {char_name}: frame lookup */\n")
        f.write(f"static const uint32_t *{char_name}_frames[{len(needed_frames)}] = {{\n")
        for fi in sorted(needed_frames):
            if fi in frame_data_map:
                f.write(f"  {frame_data_map[fi][2]}, /* frame {fi} */\n")
            else:
                f.write(f"  NULL, /* frame {fi} MISSING */\n")
        f.write(f"}};\n")
        f.write(f"static const int {char_name}_frames_w[{len(needed_frames)}] = {{")
        for fi in sorted(needed_frames):
            if fi in frame_data_map:
                f.write(f"{frame_data_map[fi][0]},")
            else:
                f.write("0,")
        f.write(f"}};\n")
        f.write(f"static const int {char_name}_frames_h[{len(needed_frames)}] = {{")
        for fi in sorted(needed_frames):
            if fi in frame_data_map:
                f.write(f"{frame_data_map[fi][1]},")
            else:
                f.write("0,")
        f.write(f"}};\n")
        f.write(f"static const int {char_name}_frame_index[{len(needed_frames)}] = {{")
        for fi in sorted(needed_frames):
            f.write(f"{fi},")
        f.write(f"}};\n\n")

        # Store animation ranges as (start_in_our_array, length) for each state/direction
        # Map from atlas frame index to our compact array index
        compact_map = {}
        for idx, fi in enumerate(sorted(needed_frames)):
            compact_map[fi] = idx

        f.write(f"/* {char_name}: animation ranges (compact_index, length) */\n")
        anim_ranges = []
        for state in ["run", "jump", "fall", "land"]:
            for direction in ["left", "center", "right"]:
                key = f"{state}_{direction}"
                start, length = anim[key]
                # Convert atlas start to compact index
                if start in compact_map:
                    compact_start = compact_map[start]
                else:
                    # Find the first frame >= start that we have
                    compact_start = 0
                mirror = anim[f"{key}_mirror"] if f"{key}_mirror" in anim else False
                anim_ranges.append((state, direction, compact_start, length, mirror))
                cname_upper = char_name.upper()
                f.write(f"#define {cname_upper}_{state}_{direction}_START {compact_start}\n")
                f.write(f"#define {cname_upper}_{state}_{direction}_LEN {length}\n")
                f.write(f"#define {cname_upper}_{state}_{direction}_MIRROR {'1' if mirror else '0'}\n")

        f.write(f"\n#define {char_name.upper()}_FRAME_COUNT {len(needed_frames)}\n\n")
        char_info.append((char_id, char_name, anim_set))

    # Write tile textures
    f.write("/* ===== TILE TEXTURES ===== */\n\n")
    for name, relpath in TILE_TEXTURES:
        full = os.path.join(ASSETS_DIR, relpath)
        if not os.path.exists(full):
            print(f"  {name}: NOT FOUND")
            continue
        im = Image.open(full).convert("RGBA")
        bbox = im.getbbox()
        if bbox:
            im = im.crop(bbox)
        w, h, data = image_to_rgba(im)
        write_frame_array(f, name, w, h, data)
        f.write(f"#define {name}_W {w}\n")
        f.write(f"#define {name}_H {h}\n\n")
        total_bytes += w * h * 4
        print(f"  {name}: {w}x{h} (trimmed)")

    # ===== CHARACTER INDEX TABLE =====
    # Generic C accessors for the WASM renderer
    f.write("/* ===== CHARACTER INDEX TABLE ===== */\n\n")
    f.write(f"#define CHAR_COUNT {len(char_info)}\n\n")

    # Per-character frame count
    f.write("static const int char_frame_counts[] = {\n")
    for cid, cname, _ in char_info:
        f.write(f"  {cname.upper()}_FRAME_COUNT, /* {cid}: {cname} */\n")
    f.write("};\n\n")

    # Per-character frame pointer arrays
    f.write("static const uint32_t **char_frame_data[] = {\n")
    for cid, cname, _ in char_info:
        f.write(f"  {cname}_frames, /* {cid}: {cname} */\n")
    f.write("};\n\n")

    f.write("static const int *char_frame_widths[] = {\n")
    for cid, cname, _ in char_info:
        f.write(f"  {cname}_frames_w, /* {cid}: {cname} */\n")
    f.write("};\n\n")

    f.write("static const int *char_frame_heights[] = {\n")
    for cid, cname, _ in char_info:
        f.write(f"  {cname}_frames_h, /* {cid}: {cname} */\n")
    f.write("};\n\n")

    f.write("static const int *char_frame_indices[] = {\n")
    for cid, cname, _ in char_info:
        f.write(f"  {cname}_frame_index, /* {cid}: {cname} */\n")
    f.write("};\n\n")

    # Animation range accessors: given (char_id, state, direction) -> (start, length, mirror)
    # States: 0=run, 1=jump, 2=fall, 3=land
    # Directions: 0=left, 1=center, 2=right
    f.write("/* Animation ranges table: [char_id][state*3 + direction] = {start, length, mirror} */\n")
    f.write("typedef struct { int start, length, mirror; } anim_range_t;\n\n")

    f.write("static const anim_range_t anim_ranges[CHAR_COUNT][12] = {\n")
    for cid, cname, _ in char_info:
        f.write(f"  /* {cid}: {cname} */ {{\n")
        for state in ["run", "jump", "fall", "land"]:
            for direction in ["left", "center", "right"]:
                start_def = f"{cname.upper()}_{state}_{direction}_START"
                len_def = f"{cname.upper()}_{state}_{direction}_LEN"
                mir_def = f"{cname.upper()}_{state}_{direction}_MIRROR"
                f.write(f"    {{ {start_def}, {len_def}, {mir_def} }}, /* {state}_{direction} */\n")
        f.write(f"  }},\n")
    f.write("};\n\n")

    f.write("/* Generic accessors — map assets are in map_assets.h (1280x720 stretched) */\n")
    f.write("#define CHAR_ANIM_RANGE(cid, state, dir) (anim_ranges[cid][(state)*3+(dir)])\n")
    f.write("#define STATE_RUN  0\n")
    f.write("#define STATE_JUMP 1\n")
    f.write("#define STATE_FALL 2\n")
    f.write("#define STATE_LAND 3\n")
    f.write("#define DIR_LEFT   0\n")
    f.write("#define DIR_CENTER 1\n")
    f.write("#define DIR_RIGHT  2\n\n")

    f.write("#endif /* ASSETS_DATA_H */\n")

print(f"\nTotal: {total_bytes} bytes ({total_bytes/1024:.0f} KB)")
print(f"Characters: {len(char_info)}")
print(f"Done: {OUT}")
