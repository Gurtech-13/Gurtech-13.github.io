#!/usr/bin/env python3
"""Analyze the original Run 3 level data structure."""
import sys
from collections import Counter

data = open('/tmp/run3assets/binaryData/1019___ASSET__text_explorelevels_txt.bin', 'rb').read()
text = data.decode('latin-1')
lines = text.split('\r\n')

levels = []
for line in lines:
    line = line.strip()
    if not line.startswith('id-'):
        continue
    parts = line.split('|')
    lid = int(parts[0].replace('id-',''))
    layout = ''
    connection = ''
    music = 'LeaveTheSolarSystem'
    color = ''
    for p in parts:
        if p.startswith('layout-'): layout = p.replace('layout-','')
        if p.startswith('connection-'): connection = p.replace('connection-','')
        if p.startswith('music-'): music = p.replace('music-','')
        if p.startswith('color0-'): color = p.replace('color0-','')
    levels.append({
        'id': lid, 'layout': layout, 'connection': connection,
        'music': music, 'color': color
    })

# Layout distribution
layout_counts = Counter()
for l in levels:
    parts2 = l['layout'].replace('tunnel','').split(',')
    n = int(parts2[0])
    k = int(parts2[1])
    layout_counts[f'{n}x{k}'] += 1

print('=== LAYOUT DISTRIBUTION ===')
for layout, count in sorted(layout_counts.items(), key=lambda x: -x[1]):
    print(f'  {layout}: {count} levels')

# Show first 50 levels
print()
print('=== FIRST 50 LEVELS (primary path) ===')
for l in levels[:50]:
    conn = f' -> {l["connection"]}' if l['connection'] else ''
    print(f'  Level {l["id"]:3d}: {l["layout"]:12s} {l["music"]:25s}{conn}')

# Show all connection points
print()
print('=== ALL CONNECTION POINTS ===')
for l in levels:
    if l['connection']:
        print(f'  Level {l["id"]:3d}: {l["layout"]:12s} -> {l["connection"]}')

# Count levels per path (rough grouping by connection points)
print()
print('=== PATH SIZES (approximate) ===')
# The primary path goes from level 0 to the first connection at level 14
# Then it continues with various side paths
conn_levels = [(l['id'], l['connection']) for l in levels if l['connection']]
print(f'  Connection points: {len(conn_levels)}')
for cid, cpath in conn_levels:
    print(f'    Level {cid}: -> {cpath}')

# Max sides used
max_n = max(int(l['layout'].replace('tunnel','').split(',')[0]) for l in levels)
max_k = max(int(l['layout'].replace('tunnel','').split(',')[1]) for l in levels)
print(f'\n  Max sides (n): {max_n}')
print(f'  Max tiles per side (k): {max_k}')
