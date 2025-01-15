import re

pattern = r'^[+-]?\d+$'

def is_integer(value):
    return bool(re.match(pattern, value))


test_values = [
    "123",
    "-456",
    "+789",
    "0",
    "12.34",
    "abc",
    "123abc",
    "--77"
]

for value in test_values:
    result = is_integer(value)
    print(f"{value}: {'Целое число' if result else 'Не целое число'}")
