num = set(input("Введите число: "))
count = 0
for i in num:
    if i != "0":
        count += 1

print(count)