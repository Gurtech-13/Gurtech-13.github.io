#!/usr/bin/env python3
"""Generate levels.c from original Run 3 level data."""
import re, sys, os

# Read the original explore levels
data = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'orig_levels.bin'), 'rb').read()
text = data.decode('latin-1')
lines = text.split('\r\n')

# Parse all levels
levels = []
for line in lines:
    line = line.strip()
    if not line.startswith('id-'):
        continue
    parts = line.split('|')
    lid = int(parts[0].replace('id-',''))
    layout = connection = music = ''
    spawning = []
    props = {}
    for p in parts:
        if p.startswith('layout-'): layout = p[7:]
        elif p.startswith('connection-'): connection = p[12:]
        elif p.startswith('music-'): music = p[6:]
        elif p.startswith('spawn-'): pass  # skip spawn data
        elif p.startswith('tileWidth-'): props['tileWidth'] = int(p[9:])
        elif p.startswith('color0-'): props['color'] = p[7:]
        elif 'crumbling' in p: props['crumbling'] = True
        elif 'fast' in p: props['fast'] = True
        elif 'slow' in p: props['slow'] = True
    nl, kl = layout.replace('tunnel','').split(',')
    n, k = int(nl), int(kl)
    levels.append({
        'id': lid, 'n': n, 'k': k, 'connection': connection,
        'music': music, 'spawning': spawning, 'props': props
    })

# Map connection paths to tunnel groups
# Each path gets a range of level IDs from the original game
PATH_RANGES = {
    'primary':       (0, 13, 0),     # levels 0-13
    'winter':        (14, 15, 1),    # level 14 branches off
    'primary2':      (15, 31, 0),    # levels 15-31 continue primary
    'dark':          (32, 32, 2),    # level 32
    'sidePathM':     (33, 33, 3),    # level 33
    'primary3':      (34, 36, 0),    # levels 34-36
    'sidePathB':     (37, 37, 4),    # level 37
    'primary4':      (38, 45, 0),    # levels 38-45
    'sidePathG':     (46, 46, 5),    # level 46
    'primary5':      (47, 73, 0),    # levels 47-73
    'sidePathL':     (74, 74, 6),    # level 74
    'primary6':      (75, 82, 0),    # levels 75-82
    'sidePathT':     (83, 83, 7),    # level 83
    'primary7':      (84, 98, 0),    # levels 84-98
    'sidePathA':     (99, 99, 8),    # level 99
    'primary8':      (100, 107, 0),  # levels 100-107
    'home0':         (108, 108, 9),  # level 108
    'primary9':      (109, 120, 0),  # levels 109-120
    'river':         (121, 121, 10), # level 121
    'primary10':     (122, 139, 0),  # levels 122-139
    'wormholeC':     (140, 140, 11), # level 140
    'primary11':     (141, 151, 0),  # levels 141-151
    'sidePathD':     (152, 152, 12), # level 152
    'primary12':     (153, 196, 0),  # levels 153-196
    'memory':        (197, 197, 13), # level 197
    'primary13':     (198, 207, 0),  # levels 198-207
    'dark2':         (208, 208, 14), # level 208 (dark again)
    'primary14':     (209, 272, 0),  # levels 209-272
    'homeLaunchC':   (273, 273, 15), # level 273
    'homeLaunchA':   (274, 274, 16), # level 274
    'primary15':     (275, 284, 0),  # levels 275-284
    'home3':         (285, 285, 17), # level 285
    'primary16':     (286, 287, 0),  # levels 286-287
    'home2':         (288, 288, 18), # level 288
    'primary17':     (289, 372, 0),  # levels 289-372
    'wormholeI':     (373, 373, 19), # level 373
    'primary18':     (374, 398, 0),  # levels 374-398
    'wormholeH':     (399, 399, 20), # level 399
    'primary19':     (400, 418, 0),  # levels 400-418
}

# Build a lookup from original level ID to level data
level_by_id = {l['id']: l for l in levels}

# Now build our tunnel definitions
# We'll consolidate the primary path segments into one long tunnel
# and make each branch a separate tunnel

# Primary path: collect all primary segments
primary_ids = []
for name, (start, end, _) in sorted(PATH_RANGES.items()):
    if name.startswith('primary'):
        for lid in range(start, end + 1):
            if lid in level_by_id:
                primary_ids.append(lid)

# Branch paths: each is a separate tunnel
branches = {}
for name, (start, end, tun_id) in sorted(PATH_RANGES.items()):
    if not name.startswith('primary'):
        branch_ids = []
        for lid in range(start, end + 1):
            if lid in level_by_id:
                branch_ids.append(lid)
        if branch_ids:
            branches[name] = (branch_ids, tun_id)

# Determine theme from music
MUSIC_THEME = {
    'LeaveTheSolarSystem': 0,
    'TheVoid': 4,
    'WormholeToSomewhere': 2,
    'CrumblingWalls': 1,
    'TravelTheGalaxy': 3,
    'UnsafeSpeeds': 1,
}

# Generate tunnel configs
def make_tunnel(name, lid_list, tun_id):
    """Generate a tunnel_t entry from a list of level IDs."""
    if not lid_list:
        return None
    # Use the most common n/k layout
    from collections import Counter
    layout_counts = Counter()
    for lid in lid_list:
        l = level_by_id[lid]
        layout_counts[(l['n'], l['k'])] += 1
    (n, k), _ = layout_counts.most_common(1)[0]
    n = min(n, 32)
    k = min(k, 8)

    # Theme from music
    music = level_by_id[lid_list[0]]['music']
    theme = MUSIC_THEME.get(music, 0)

    # Number of checkpoint levels (group original levels into 45s checkpoints)
    num_levels = max(1, len(lid_list) // 3)  # ~3 original levels per checkpoint
    num_levels = min(num_levels, 200)

    # Difficulty ramp based on position in game
    base_rps = 2.2 + tun_id * 0.12
    rps_per = 0.016 + tun_id * 0.001
    max_rps = min(base_rps + rps_per * num_levels * 0.5, 7.0)
    hole_start = 0.04 + tun_id * 0.003
    hole_per = 0.0014 + tun_id * 0.0001
    max_hole = min(hole_start + hole_per * num_levels, 0.26)
    block_every = max(4, 26 - tun_id * 2) if tun_id < 12 else max(4, 12 - (tun_id - 12))
    block_start = max(2, num_levels // 3)

    # Base tile size inversely proportional to n*k
    base_tile = 1.0 / (1.0 + (n * k - 16) * 0.01)
    if n <= 4: base_tile = 0.7
    elif n <= 6: base_tile = 0.85
    elif n <= 8: base_tile = 1.0
    elif n <= 12: base_tile = 1.2
    elif n <= 16: base_tile = 1.4
    else: base_tile = 1.6

    return f'  /* {tun_id:2d} {name:20s} - tunnel{n},{k} ({num_levels} levels) */\n' + \
           f'  {{ {n:2d}, {k:1d}, {theme}, {num_levels:3d}, {block_every:2d}, {block_start:3d}, ' + \
           f'{base_rps:.2f}, {rps_per:.4f}, {max_rps:.2f}, {hole_start:.4f}, {hole_per:.5f}, {max_hole:.4f}, {base_tile:.3f} }},'

# Generate the C file
print('/*')
print(' * levels.c - faithful recreation of the original Run 3 tunnel structure.')
print(' * Generated from decompiled SWF level data. 419 original levels mapped')
print(' * to our tunnel system with matching layouts (4x2 through 30x1).')
print(' */')
print('#include "../run3.h"')
print()
print(f'const uint16_t NTUNNELS = {len(branches) + 1};')
print()
print('const tunnel_t TUNNELS[MAX_TUNNELS] = {')

# Primary tunnel (all primary path levels consolidated)
t = make_tunnel('Primary Path', primary_ids, 0)
print(t)

# Branch tunnels
for name, (lid_list, tun_id) in sorted(branches.items(), key=lambda x: x[1][1]):
    t = make_tunnel(name, lid_list, tun_id)
    if t:
        print(t)

print('};')
