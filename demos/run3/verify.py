import os
total = 0
for root, dirs, files in os.walk(r'C:\Users\raman\eclipse-workspace\fastpbrjava\Gurtech-13.github.io\demos\run3\readable_src'):
    for f in files:
        if f.endswith('.as'):
            path = os.path.join(root, f)
            try:
                text = open(path, 'r', encoding='utf-8').read()
            except UnicodeDecodeError:
                text = open(path, 'r', encoding='latin-1').read()
            if '§' in text:
                print('Found § in', path)
                total += 1
print('Files with §:', total)