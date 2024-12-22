lis1 = [[125, 212, 314, 124, 425, 126],[1,1,2],[5,3,12],[41,42,51]]
el1 = int(input("read el1: "))
el2 = int(input("read el2: "))
lis1[el1],lis1[el2] = lis1[el2], lis1[el1]
print(lis1)