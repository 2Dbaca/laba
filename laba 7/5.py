
with open("f.txt","r") as file:
    for line in file:
        last = line[-1].strip()
print(f"Последний компонента: {line}")
file.close()