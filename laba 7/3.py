total = 0.0
with open("f.txt","r") as file:
    for line in file:

        total += float(line.strip())**2
print(f"Сумма квадратов компонента: {total}")
file.close()
