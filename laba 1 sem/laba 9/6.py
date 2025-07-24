import re

pattern = r'^[^a-zA-Z]*$'

def contains_no_letters(value):
    return bool(re.match(pattern, value))

test_values = [
    "12345",
    "Hello123",
    "!!!",
    "2023",
    "Test!",
    "!!!2023"
]

for value in test_values:
    result = contains_no_letters(value)
    print(f"{value}: {'Не содержит букв' if result else 'Содержит буквы'}")
