total = 1
with open("f.txt","r") as file:
    for line in file:

        total *= float(line.strip())
print(f"Произведение элементов компонента: {total}")
file.close()
a = 1.4 * 2.5 * 2.5 * 3.5

print(a)
