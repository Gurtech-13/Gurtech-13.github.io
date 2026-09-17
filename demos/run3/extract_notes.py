import re
with open('notes.txt', 'r', encoding='utf-8') as f:
    text = f.read()
pattern = r'(§[^§]+§)\s*[-→>]\s*([^\n\r]+)'
matches = re.findall(pattern, text)
print('Found', len(matches), 'matches')
for m in matches[:20]:
    print(repr(m[0]), '->', repr(m[1][:80]))