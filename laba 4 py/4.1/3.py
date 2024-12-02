from Lenght import lenght


sity1 = input("Введите sity 1 :  ")
sity2 = input("Введите sity 2 :  ")
sity3 = input("Введите sity 3 :  ")
if lenght(sity1) > lenght(sity2):
    if lenght(sity1) > lenght(sity3):
        print(f'{sity1} наибольшее слово ')
elif lenght(sity2) > lenght(sity3):
    print(f'{sity2} наибольшее слово ')
else:
    print(f"{sity3} наибольшее слово ")

if lenght(sity1) < lenght(sity2):
    if lenght(sity1) < lenght(sity3):
        print(f"{sity1} наименьшее слово ")
elif lenght(sity2) < lenght(sity3):
    print(f"{sity2} наименьшее слово ")
else:
    print(f"{sity3} наименьшее слово ")
