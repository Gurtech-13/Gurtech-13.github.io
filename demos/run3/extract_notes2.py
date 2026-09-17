import re
with open(r'C:\Users\raman\eclipse-workspace\fastpbrjava\Gurtech-13.github.io\demos\run3\notes.txt', 'r', encoding='utf-8') as f:
    text = f.read()
pattern = r'(§[^§]+§)\s*[-→>]\s*([^\n\r]+)'
matches = re.findall(pattern, text)
print('Found', len(matches), 'matches')
for m in matches[:20]:
    print(repr(m[0]), '->', repr(m[1][:80]))