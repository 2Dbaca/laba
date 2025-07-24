M = set(i for i in range(100))
A = (1,521, 123, 13, 63, 31)
count = 0

for i in A:
    if i in M:
        count += 1

print(count)