from Lenght import lenght
lis = [125, 212, 314, 124, 425, 126]
i = 0
for i in range(lenght(lis)):
    if lis[i]//100 != 0:
        print("трехзначное")
    else:
        print("не трехзначное")

