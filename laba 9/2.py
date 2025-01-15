import re
pattern = r'^[+-]?(\d+(\.\d*)?|\.\d+)([eE][+-]?\d+)?$'

def is_float(value):
    return bool(re.match(pattern, value))

test_values = ["123.45", "-456.78", "0.0","1f"]

for value in test_values:
    result = is_float(value)
    print(f"{value}: {'Вещественное число' if result else 'Не вещественное число'}")