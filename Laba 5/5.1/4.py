from Lenght import lenght
import math
lis = [1, 2, 3, 4, 5, 6]
a = 1
fac = math.factorial(lenght(lis))
for i in lis:
    a *= i
print(fac == a)
