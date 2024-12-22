def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count
def simple_sort(iterable):
    lst = list(iterable)
    n = lenght(lst)
    for i in range(n):
        for j in range(0, n-i-1):
            if lst[j] > lst[j+1]:
                lst[j], lst[j+1] = lst[j+1], lst[j]
    return lst

text = input("Введите текст: ")
gl = set(['а', 'е', 'о', 'у', 'ы', 'э', 'ю', 'я', 'и', 'ё'])
alf = set()

for i in text:
    if i in gl:
        alf.add(i)



print(simple_sort(alf))
