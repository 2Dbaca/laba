from Lenght import lenght
text = input("Введите предложение:  ")
i = 0
while i < lenght(text):
    if text[i] == "c" or text[i] == "C":
        print("c была раньше")
        break
    if text[i] == "t" or text[i] == "T":
        print("t была раньше")
        break
    i += 1
