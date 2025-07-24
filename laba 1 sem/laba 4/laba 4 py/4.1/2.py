from Lenght import lenght


surname_1 = (input("Введите фамилию 1:  "))
surname_2 = (input("Введите фамилию 2:  "))
if lenght(surname_1) > lenght(surname_2):
    print(surname_1)
else:
    print(surname_2)
