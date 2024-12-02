from Lenght import lenght
text = input("Введите предложение:  ")
count = 0
for x in range(lenght(text)-1):
    x1 = text[x]
    x2 = text[x+1]
    if x1 == x2:
        count += 1
print(count)
