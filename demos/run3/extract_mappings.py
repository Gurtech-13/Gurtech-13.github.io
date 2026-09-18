#!/usr/bin/env python3
"""Dump the obfuscated-token -> readable-name pairs this project has established.

The mapping's source of truth is `make_readable.py`'s tables; `make_readable.py`
writes them out to `readable_src/RENAME_MAP.md`, which is what this reads (so it
always agrees with the tree that was actually generated, and needs no other
input).

    python3 extract_mappings.py            # every pair
    python3 extract_mappings.py --no-src   # names only, no emitted token column
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
MAP = os.path.join(HERE, "readable_src", "RENAME_MAP.md")
S = "\u00a7"  # the decompiler's identifier delimiter (U+00A7)


def pairs(path=MAP):
    """Yield (emitted token, readable name, section) from the generated map."""
    if not os.path.exists(path):
        raise SystemExit("no %s - run make_readable.py first" % path)
    section = "?"
    with open(path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.rstrip("\n")
            if line.startswith("## "):
                section = line[3:].strip()
                continue
            # table rows only: | `emitted` | `readable` | evidence |
            cells = [c.strip() for c in line.split("|")[1:-1]]
            if len(cells) < 2 or not cells[0].startswith("`"):
                continue
            if cells[0].startswith("| ---") or cells[0] == "`emitted`":
                continue
            if S not in cells[0]:
                continue
            token = cells[0].split("`")[1].strip()
            name = cells[1].strip().strip("`").strip()
            yield token, name, section


def main(argv):
    want_token = "--no-src" not in argv
    n = 0
    for token, name, section in pairs():
        n += 1
        if want_token:
            print("%r -> %s   [%s]" % (token, name, section))
        else:
            print(name)
    print("found %d mappings" % n)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
