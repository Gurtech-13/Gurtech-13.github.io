#!/usr/bin/env python3
"""Make every file in src readable by replacing all obfuscated identifiers with generic names.

This script walks through the src directory, collects all tokens (text between §§),
assigns each a generic name (like T0001, T0002, ...), and then replaces every
occurrence of each token with its generic name in the readable_src directory.

It also renames directories and files if their names are tokens.

Usage:  python3 make_all_readable.py
"""

import os
import re
import shutil
import sys
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "src")
DST = os.path.join(HERE, "readable_src")

S = "\u00a7"  # the decompiler's identifier delimiter (U+00A7)
TOKEN_RE = re.compile(r"§([^§\r\n]+)§")  # matches inner text of a token


def tok(inner):
    """Render an emitted token from its inner text: "<!C" -> the token."""
    return S + inner + S


def detokenize(inner):
    """Return the token string for given inner text, or None if not a token."""
    if inner is None:
        return None
    return S + inner + S


def collect_tokens():
    """Walk src and count all token inner texts."""
    token_count = defaultdict(int)
    for root, dirs, files in os.walk(SRC):
        for f in files:
            path = os.path.join(root, f)
            try:
                with open(path, 'r', encoding='utf-8') as fp:
                    text = fp.read()
            except UnicodeDecodeError:
                with open(path, 'r', encoding='latin-1') as fp:
                    text = fp.read()
            for inner in TOKEN_RE.findall(text):
                token_count[inner] += 1
    return token_count


def build_mapping(token_count):
    """Build a mapping from token inner to a generic name."""
    mapping = {}
    # Sort tokens by frequency (descending) to give shorter names to more common tokens?
    # For simplicity, we sort alphabetically.
    sorted_tokens = sorted(token_count.keys())
    for idx, inner in enumerate(sorted_tokens, start=1):
        # Generic name: T0001, T0002, ... (ensure it's a valid identifier)
        name = f"T{idx:04d}"
        mapping[inner] = name
    return mapping


def replace_in_file(path, mapping):
    """Replace all tokens in a single file with their generic names."""
    try:
        with open(path, 'r', encoding='utf-8') as fp:
            text = fp.read()
    except UnicodeDecodeError:
        with open(path, 'r', encoding='latin-1') as fp:
            text = fp.read()

    # Replace each token
    for inner, name in mapping.items():
        token = detokenize(inner)
        if token is None:
            continue
        text = text.replace(token, name)

    # Write back
    try:
        with open(path, 'w', encoding='utf-8') as fp:
            fp.write(text)
    except UnicodeEncodeError:
        with open(path, 'w', encoding='latin-1') as fp:
            fp.write(text)


def main():
    print("Collecting tokens from src...")
    token_count = collect_tokens()
    print(f"Found {len(token_count)} unique tokens, total occurrences {sum(token_count.values())}")

    print("Building mapping...")
    mapping = build_mapping(token_count)
    print(f"Mapping built with {len(mapping)} entries.")

    # Prepare destination
    if os.path.exists(DST):
        shutil.rmtree(DST)
    shutil.copytree(SRC, DST)

    print("Processing files in readable_src...")
    for root, dirs, files in os.walk(DST):
        # Rename directories if their name is a token
        for d in list(dirs):
            # Check if the directory name is a token (starts and ends with §)
            if d.startswith(S) and d.endswith(S):
                inner = d[1:-1]
                if inner in mapping:
                    new = mapping[inner]
                    os.rename(os.path.join(root, d), os.path.join(root, new))
                    # Update the dirs list for os.walk
                    dirs.remove(d)
                    dirs.append(new)

        # Process files
        for f in files:
            path = os.path.join(root, f)
            # Rename file if its name (without extension) is a token
            name, ext = os.path.splitext(f)
            if name.startswith(S) and name.endswith(S):
                inner = name[1:-1]
                if inner in mapping:
                    new_name = mapping[inner] + ext
                    if new_name != f:
                        os.rename(path, os.path.join(root, new_name))
                        path = os.path.join(root, new_name)
                        f = new_name

            # Replace tokens in file content
            replace_in_file(path, mapping)

    print("Done.")

if __name__ == "__main__":
    sys.exit(main())