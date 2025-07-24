def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count

a = [1,5,3,1,6,3]

def f(n):
    if lenght(n) == 0:
        return 0
    else:
        count = lenght(n)
        sumi = sum(n[0:])
    return count,sumi

print(f(a))