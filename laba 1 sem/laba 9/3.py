import re

pattern = r'^\d{2}-\d{2}-\d{2}$'
def is_valid_phone_number(value):
    return bool(re.match(pattern, value))

test_values = ["37-81-40", "12-34-56", "99-99-99", "123-45-67", "37-81-4a", "37-81-400"]

for value in test_values:
    result = is_valid_phone_number(value)
    print(f"{value}: {'Правильный номер' if result else 'Неправильный номер'}")