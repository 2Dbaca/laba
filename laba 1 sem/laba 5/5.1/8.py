# Напишите программу, определяющую в списке, содержащем списки це- лых чисел,
# количество таких списков, содержащих заданное число.
from Lenght import lenght
lis1 = [[125, 212, 314, 124, 425, 126],[1,1,2],[5,3,12],[41,42,51]]
num = int(input("read num:  "))
t = 0
for i in range(lenght(lis1)):
    a = lis1[i]
    for y in range(lenght(a)):
        if a[y] == num:
            t += 1
print(t)


