countri_cities = {
    "Россия": ["Москва", "Санкт-Петербург", "Новосибирск", "Екатеринбург"],
    "Украина": ["Киев", "Львов", "Одесса", "Харьков"],
    "Япония": ["Токио", "Киото", "Хиросима", "Нагасаки"]
}

for countri, cities in countri_cities.items():
    for city in cities:
        print(city, "-", countri)
    print()
