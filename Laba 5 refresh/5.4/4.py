def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count
def count(l, el):
    c = 0
    for i in l:
        if i == el:
            c += 1
    return c
line = (input("Введите символы через пробел: ").split())
print(count(line, line[0]) == lenght(line))