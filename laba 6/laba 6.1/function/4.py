a = [1,5,32,1,6,3]
def f(n):
    count = 0
    for i in (n):
        if i > count:
            count = i
    return count
print(f(a))
