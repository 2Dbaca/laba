st = set(input("Введите строку: "))
count = 0
for s in st:
    if s in "0123456789+-*":
        count += 1
print(count)