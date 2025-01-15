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
