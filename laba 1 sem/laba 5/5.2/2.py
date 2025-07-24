def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count
def selection_sort(strings):
    n = len(strings)
    for i in range(n):
        min_index = i
        for j in range(i + 1, n):
            if strings[j] < strings[min_index]:
                min_index = j
        strings[i], strings[min_index] = strings[min_index], strings[i]
    return strings
def sort(tuples, n):
    data = list(tuples)
    n -= 1
    for i in range(len(data)):
        for j in range(i + 1, len(data)):
            if data[i][n] > data[j][n]:
                data[i], data[j] = data[j], data[i]
    return tuple(data)



text = input("Введите текст: ")
gl = set(['а', 'е', 'о', 'у', 'ы', 'э', 'ю', 'я', 'и', 'ё'])
alf = set()

for i in text:
    if i in gl:
        alf.add(i)
print(sorted(alf))

