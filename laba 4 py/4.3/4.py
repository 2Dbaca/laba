text = input("Введите предложение:  ")
x1 = input("Первый символ:  ")
x2 = input("Второй символ:  ")
y1 = 0
y2 = 0
for i in text:
    if (i == x1):
        y1 += 1
    elif (i == x2):
        y2 += 1
print(f"количество {x1} равно {y1}")
print(f"количество {x2} равно {y2}")