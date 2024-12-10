birthdays = {
    "Петя Э. Д.": "20.10.2006",
    "Икинг Ж. В.": "7.07.2007",
    "Елизавета К. А.": "2.06.2007",
    "Иван С. С.": "01.01.2006",
    "Злодей_Босин К. О.": "31.12.2008",
    "Иван П. П.": "30.11.2006"
}
days = 0
mothes = 0
years = 0
for name, birthday in birthdays.items():
    birthday_list = birthday.split(".")
    days += int(birthday_list[0])
    mothes += int(birthday_list[1])
    years += int(birthday_list[2])

print(f"День рождения класса: {round(days / len(birthdays))}.{round(mothes / len(birthdays))}.{round(years / len(birthdays))}")
