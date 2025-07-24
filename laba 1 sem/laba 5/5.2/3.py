# Дан текст из строчных латинских букв. Напечатать: а) первые вхождения букв в текст,
# по возможности, сохраняя их исходный взаимный порядок; б) все буквы, входящие в
# текст не менее двух раз; в) все буквы, входящие в текст по одному разу.
def count(l, el):
    c = 0
    for i in l:
        if i == el:
            c += 1
    return c

text = input("Введите текст: ")
word_grabber_a = set()
output_b = set()
output_c = set()

print("a)")
for word in text.split():
    for s in word:
        if s not in word_grabber_a:
            word_grabber_a.add(s)
            print(s)


for s in text:
    if count(text, s) >= 2:
        output_b.add(s)

for s in text:
    if count(text, s) == 1:
        output_c.add(s)
print(word)
print("b)",output_b)
print("c)",output_c)