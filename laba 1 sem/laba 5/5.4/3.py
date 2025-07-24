def sort(tuples, n):
    data = list(tuples)
    n -= 1

    for i in range(len(data)):
        for j in range(i + 1, len(data)):
            if data[i][n] > data[j][n]:
                data[i], data[j] = data[j], data[i]

    return tuple(data)

data = {
    ('красный', 33, 55),
    ('зеленый', 17, 44),
    ('синий', 12, 3),
    ('черный', 2, 5)}
print(sort(data, 3))