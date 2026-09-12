#!/usr/bin/env bash
# Build run3.wasm: engine = run3.c + render.c (shared run3.h); levels/levels.c
# holds the tunnel/level data. Run from the repo root: bash demos/run3/build.sh
set -euo pipefail
cd "$(dirname "$0")"

ZIG=../../zig/zig.exe
if [ ! -x "$ZIG" ] && ! command -v zig >/dev/null 2>&1; then
  echo "Zig not found. Download it into /zig (see .gitignore) or put 'zig' on PATH." >&2
  exit 1
fi
[ -x "$ZIG" ] || ZIG=zig

"$ZIG" cc -target wasm32-freestanding -O2 -nostdlib \
  -Wall -Wextra \
  -Wl,--no-entry -Wl,--export-memory \
  -Wl,--export=run3_init -Wl,--export=run3_open -Wl,--export=run3_seek -Wl,--export=run3_flap \
  -Wl,--export=run3_step -Wl,--export=run3_set_input -Wl,--export=run3_set_char \
  -Wl,--export=run3_state -Wl,--export=run3_tun -Wl,--export=run3_lvl \
  -Wl,--export=run3_tunnel_count -Wl,--export=run3_tunnel_levels -Wl,--export=run3_levels_in \
  -Wl,--export=run3_progress -Wl,--export=run3_rows_per \
  -Wl,--export=run3_sides -Wl,--export=run3_lanes -Wl,--export=run3_theme \
  -Wl,--export=run3_side -Wl,--export=run3_lane -Wl,--export=run3_ring \
  -Wl,--export=run3_row -Wl,--export=run3_rowf -Wl,--export=run3_level_rows \
  -Wl,--export=run3_tile -Wl,--export=run3_solid \
  -Wl,--export=run3_buffer -Wl,--export=run3_width -Wl,--export=run3_height \
  -Wl,--export=run3_start_inf -Wl,--export=run3_inf_score -Wl,--export=run3_inf_rows \
  -Wl,--export=run3_powercells -Wl,--export=run3_add_cells -Wl,--export=run3_spend_cells \
  -Wl,--export=run3_cutscene_backdrop -Wl,--export=run3_cutscene_hold -Wl,--export=run3_power \
  -Wl,--export=run3_cutscene_resume -Wl,--export=run3_level_color0 -Wl,--export=run3_level_color1 -Wl,--export=run3_level_music -Wl,--export=run3_stage_cam \
  -Wl,--export=run3_enter_map -Wl,--export=run3_map_click -Wl,--export=run3_map_hover \
  -Wl,--export=run3_map_scroll -Wl,--export=run3_map_scroll_y -Wl,--export=run3_map_scroll_x -Wl,--export=run3_map_scroll_delta -Wl,--export=run3_map_selected \
  -Wl,--export=run3_map_hovered -Wl,--export=run3_map_set_hover \
  -Wl,--export=run3_map_set_locked -Wl,--export=run3_map_set_cleared \
  -Wl,--export=run3_map_is_locked -Wl,--export=run3_map_is_cleared -Wl,--export=run3_map_is_discovered -Wl,--export=run3_map_sync_state \
  -Wl,--export=run3_map_checkpoint_count -Wl,--export=run3_map_hover_level -Wl,--export=run3_map_selected_level -Wl,--export=run3_map_set_hover_level \
  -Wl,--export=run3_map_set_best -Wl,--export=run3_map_best \
  -Wl,--export=run3_enter_menu -Wl,--export=run3_menu_click -Wl,--export=run3_menu_hover \
  -Wl,--export=run3_menu_select_char -Wl,--export=run3_menu_char -Wl,--export=run3_set_char_count \
  -Wl,--export=run3_char_set_locked -Wl,--export=run3_char_is_locked \
  -Wl,--export=render_map -Wl,--export=render_menu -Wl,--export=render_frame \
  -o run3.wasm run3.c render.c levels/levels.c

echo "built $(pwd)/run3.wasm ($(wc -c < run3.wasm) bytes)"
