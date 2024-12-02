from Lenght import lenght
text = input("Введите предложение:  ")
x = 0
while x < lenght(text)-1:
    x1 = text[x]
    x2 = text[x+1]
    if x1 == x2:
        print(x+1)
        x = lenght(text)
    else:
        print("такого значения нет")
        x = lenght(text)
    x += 1