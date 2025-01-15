import re

pattern = r'^\(\d{3}\) \d-\d{2}-\d{2}$'

def is_valid_phone_number(value):
    return bool(re.match(pattern, value))

test_values = [
    "(231) 5-94-00",
    "(123) 4-56-78",
    "(999) 1-23-45",
    "(12) 5-94-00",
    "(231) 55-94-00",
    "231 5-94-00",
    "(231) 594-00" ]

for value in test_values:
    result = is_valid_phone_number(value)
    print(f"{value}: {'Правильный номер' if result else 'Неправильный номер'}")
