from Lenght import lenght
text = input("Введите предложение:  ")
for x in range(2,lenght(text),3):
    print(text[x])