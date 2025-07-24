total = 0.0
total1 = 1
with open("f.txt","r") as file:
    for line in file:

        total += float(line.strip())
        total1 *= float(line.strip())
total = abs(total)
total1 = total1**2
print(f"Модуль суммы элементов компонента: {total}")
print(f"квадрат произведения компонент файла: {total1}")
