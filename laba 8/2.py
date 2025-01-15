from random import *
from numpy import *
N = int(input("Введите количество строк (N): "))
M = int(input("Введите количество столбцов (M): "))

def RecursiveMin(L):
    if len(L)==2:
        if L[0]<L[1]:
            return L[0]
        else:
            return L[1]
    else:
        X= RecursiveMin(L[1:])
        if L[0]<X:
            return L[0]
        else:
            return X

array = []

for i in range(N):
    row = []
    for j in range(M):
        value = randint(5,10)
        row.append(value)
    array.append(row)
for row in array:
    print(row)


sumer = 0
for i in range(N):
    for j in range(M):
        sumer += array[i][j]
print(sumer)
