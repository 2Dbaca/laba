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

for age, names in sorted(age_layers.items(), key=lambda x: x[0]):
    print(f"{age} лет: {', '.join(names)}")