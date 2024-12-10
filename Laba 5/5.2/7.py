sogl = 0
sogl1 = set("aeiouy")
gl = 0
gl1 = set('bcdfghjklmnpqrstvwxz')
text = input("Введите текст: ")

for s in text:
    if s in sogl1:
        sogl += 1
    elif s in gl1:
        gl += 1

if sogl > gl:
    print("Гласных больше")
elif sogl < gl:
    print("Согласных больше")
else:
    print("Одинаковое количество гласных и согласных")