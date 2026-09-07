#!/usr/bin/env bash
# Build run3.wasm from run3.c using the local Zig toolchain (repo root /zig).
# Run from the repo root:  bash demos/run3/build.sh
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
  -Wl,--export=run3_init -Wl,--export=run3_flap -Wl,--export=run3_level \
  -Wl,--export=run3_step -Wl,--export=run3_state -Wl,--export=run3_level_idx \
  -Wl,--export=run3_cells -Wl,--export=run3_level_count \
  -Wl,--export=run3_progress -Wl,--export=run3_width -Wl,--export=run3_height \
  -Wl,--export=run3_buffer \
  -o run3.wasm run3.c

echo "built $(pwd)/run3.wasm ($(wc -c < run3.wasm) bytes)"
