def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count

line = set(input("Введите строку: "))
sym = set()

for s in line:
    sym.add(s)
print(lenght(sym), sym)
