nums = tuple(float(s) for s in input("Введите числа : ").split())
max_num, min_num = None, None

for num in nums:
    if max_num is None or num > max_num:
        max_num = num
    if min_num is None or num < min_num:
        min_num = num

print(min_num, max_num, min_num + max_num)
