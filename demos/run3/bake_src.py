#!/usr/bin/env python3
"""Extract the decompiled ActionScript sources into ./src (reference only).

Reads the local decompiler bundle (Run3.swf_Decompiler.com.zip in the repo
root, gitignored because it is >100 MB) and writes the decompiled classes under
src/, so the source every level/asset/cutscene was decoded from ships with the
demo. Nothing at runtime reads these files.

Layout and what is kept:
  - the bundle holds the app's own tree under scripts/ plus the support
    libraries it linked at the root; both are kept as the decompiler laid them
    out (src/scripts/... = the game, src/... = haxe/flash/lime stubs)
  - the bundle emits many classes twice, once in each tree, byte-identical;
    the first copy wins (scripts/ is visited first), so no class is duplicated
  - __ASSET__*.as are embedded-resource placeholders and DefaultAssetLibrary.as
    is the asset registry: neither is source, so both are skipped
  - identifiers stay exactly as the decompiler emitted them (§-delimited
    obfuscated names, stack-machine method bodies); see ../DEOBFUSCATION.md for
    what they decode to and which repo file each decode produced

Output: src/<path as in the bundle>, re-run any time.
"""
import hashlib
import os
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ZIP = os.path.normpath(os.path.join(HERE, "..", "..", "Run3.swf_Decompiler.com.zip"))
OUT = os.path.join(HERE, "src")

# not source: embedded-asset placeholders + the asset registry
SKIP_NAMES = {"DefaultAssetLibrary.as"}


def skip(name):
    base = name.rsplit("/", 1)[-1]
    return base.startswith("__ASSET__") or base in SKIP_NAMES


def main():
    z = zipfile.ZipFile(ZIP)
    seen = {}   # content hash -> path already kept
    kept = []   # (path, bytes)
    dupes = 0
    # visit the app's own tree first so it wins every duplicate
    order = sorted(z.namelist(), key=lambda n: (0 if n.startswith("scripts/") else 1, n))
    for name in order:
        if not name.lower().endswith(".as") or skip(name):
            continue
        data = z.read(name)
        digest = hashlib.md5(data).hexdigest()
        if digest in seen:
            dupes += 1
            continue
        seen[digest] = name
        kept.append((name, data))
    app = sum(1 for n, _ in kept if n.startswith("scripts/"))
    total = 0
    for name, data in kept:
        dest = os.path.join(OUT, name.replace("/", os.sep))
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        with open(dest, "wb") as f:
            f.write(data)
        total += len(data)
    print("wrote %d classes (%d KB) into %s" % (len(kept), total // 1024, OUT))
    print("  src/scripts/ (the game): %d, src/ (support libraries): %d" % (app, len(kept) - app))
    print("skipped %d byte-identical duplicate copies, %d asset placeholders"
          % (dupes, sum(1 for n in z.namelist()
                        if n.lower().endswith(".as") and skip(n))))


if __name__ == "__main__":
    main()
