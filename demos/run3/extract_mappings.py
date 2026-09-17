import re
import sys

text = open(r'C:\Users\raman\eclipse-workspace\fastpbrjava\Gurtech-13.github.io\demos\run3\notes.txt', 'r', encoding='utf-8').read()
# Find patterns like §...§ -> description or §...§ - description
# We'll look for lines that contain -> or → or - and have a § token
lines = text.splitlines()
mappings = []
for line in lines:
    if '§' in line and ('->' in line or '→' in line or ' - ' in line):
        # find the first token
        m = re.search(r'(§[^§]+§)', line)
        if m:
            token = m.group(1)
            # get description after the arrow
            # split on -> → or -
            parts = re.split(r'->|→| - ', line, maxsplit=1)
            if len(parts) == 2:
                desc = parts[1].strip()
                mappings.append((token, desc))
print('Found', len(mappings), 'candidate mappings')
for token, desc in mappings[:30]:
    print(repr(token), '->', desc[:60])