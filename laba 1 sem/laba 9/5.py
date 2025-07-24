import re

pattern = r'^[^\d]*$'

def contains_no_digits(value):
    return bool(re.match(pattern, value))

test_values = [
    "Hello World",
    "Hello123",
    "Test!",
    "12345",
    "NoDigitsHere",
    "Test 2023!"
]

for value in test_values:
    result = contains_no_digits(value)
    print(f"{value}: {'Не содержит цифр' if result else 'Содержит цифры'}")
