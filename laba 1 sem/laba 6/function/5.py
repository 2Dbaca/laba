def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count

a = [1,5,3,1,6,3]

def f(n):
    b = lenght(n)
    count = 0
    for i in (n):
        count +=i
    return b,count

print(f(a))