a = [1,5,32,1,6,3]
def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count
def f(n):
    if lenght(n) == 1:
        return n[0]
    maxim = f(n[1:])
    if n[0] > maxim:
        return n[0]
    else:
        return maxim


print(f(a))
