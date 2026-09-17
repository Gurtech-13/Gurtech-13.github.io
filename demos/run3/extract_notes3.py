lines = open(r'C:\Users\raman\eclipse-workspace\fastpbrjava\Gurtech-13.github.io\demos\run3\notes.txt', 'r', encoding='utf-8').readlines()
for line in lines:
    if '->' in line and '§' in line:
        import re
        m = re.search(r'(§[^§]+§)', line)
        if m:
            token = m.group(1)
            parts = line.split('->', 1)
            desc = parts[1].strip()
            print(repr(token), '->', repr(desc[:80]))