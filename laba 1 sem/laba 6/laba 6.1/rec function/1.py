def f(a,b):
    if a <= b:
        print(a)
        f(a+1,b)
print(f(1,10))
