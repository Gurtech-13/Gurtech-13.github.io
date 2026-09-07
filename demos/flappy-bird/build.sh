#!/usr/bin/env bash
# Build flappy.wasm from flappy.c using the local Zig toolchain (repo root /zig).
# Run from the repo root:  bash demos/flappy-bird/build.sh
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
  -Wl,--export=flappy_init -Wl,--export=flappy_flap \
  -Wl,--export=flappy_step -Wl,--export=flappy_score \
  -Wl,--export=flappy_state -Wl,--export=flappy_width \
  -Wl,--export=flappy_height -Wl,--export=flappy_buffer \
  -o flappy.wasm flappy.c

echo "built $(pwd)/flappy.wasm ($(wc -c < flappy.wasm) bytes)"
