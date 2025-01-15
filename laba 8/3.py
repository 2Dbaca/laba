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

min_value = array[0][0]

for i in range(N):
    for j in range(M):
        if array[i][j] < min_value:
            min_value = array[i][j]
print(min_value)