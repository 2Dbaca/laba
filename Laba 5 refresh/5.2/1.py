text = (input("введите текст: "))
gl = set(text)
x = set("aeiou")
count = 0
for i in gl:
    for y in x:
        if i == y:
            count += 1
print(count)