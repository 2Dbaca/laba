# Определите, равен ли «центральный» элемент числового списка произведению
# крайних элементов.
from Lenght import lenght
lis = [1, 8, 7, 4, 6, 7]
a = lenght(lis)//2
if lis[a-1] == lis[0]*lis[-1]:
    print("равен")
else:
    print("не равен")

