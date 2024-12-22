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
anks = {
    "Петя Э. Д.": 16,
    "Икинг Ж. В.": 19,
    "Елизавета К. А.": 17,
    "Иван С. С.": 18,
    "Злодей_Босин К. О.": 18,
    "Иван П. П.": 19
}
age_layers = {

}

for name, age in anks.items():
    if age in age_layers:
        age_layers[age].append(name)
    else:
        age_layers[age] = [name]

for age, names in simple_sort(age_layers.items(), key=lambda x: x[0]):
    print(f"{age} лет: {', '.join(names)}")