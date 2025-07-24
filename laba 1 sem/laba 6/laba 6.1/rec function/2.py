
def f(a,b):
    if a <= b:
        if a==b:
            print(a)
        else:
            print(a)
            f(a + 1, b)
    else:
        if a==b:
            print(a)

        else:
            print(a)
            f(a - 1, b)

print(f(5,-5))
