from Lenght import lenght
text = input("Введите предложение:  ")
i = 0
x = 0
y = 0
x1 = 1
y1 = 1
while i < lenght(text):
    if text[i] == "," and x == 0:
        x = i
        x1 = x
    if text[i] == "," and x != i:
        y = i
        y1 = y
    i += 1
if x == x1 and y == y1:
    print(text[1+x:y])
if x == x1 and y != y1:
    print(text[1+x:])

