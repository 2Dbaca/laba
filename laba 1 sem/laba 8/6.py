from random import *
from numpy import *
N = int(input("Введите количество строк (N): "))
M = int(input("Введите количество столбцов (M): "))

array = []

for i in range(N):
    row = []
    for j in range(M):
        value = randint(5,10)
        row.append(value)
    array.append(row)

for row in array:
    print(row)

flat_array = []
for row in array:
    for value in row:
        flat_array.append(value)
frequency = {}
for value in flat_array:
    if value in frequency:
        frequency[value] += 1
    else:
        frequency[value] = 1
sort_array = []
for value in flat_array:
    sort_array.append((frequency[value], value))
sort_array.sort(key=lambda x: (-x[0], x[1]))
sorted_array = [value for freq, value in sort_array]
print(sorted_array)