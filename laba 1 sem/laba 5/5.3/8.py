def lenght(string):
    count = 0
    for i in string:
        count += 1
    return count
anks = {
    "Петя Э. Д.": [5,4,5,2,5,3,4,1],
    "Икинг Ж. В.": [2,2,4,3,1,4,3,2,5],
    "Елизавета К. А.": [2,3,4,3,2,4,3,3,5],
    "Иван С. С.": [2,1,4,5,5,4,3,5,5],
    "Злодей_Босин К. О.": [1,2,4,3,1,4,3,5,5],
    "Иван П. П.": [4,2,4,4,4,4,3,4,5]
}

class_performance = 0
otlich = 0

fives_counts = 0
fours_counts = 0
threes_counts = 0
grades_counter = 0

for _, grades in anks.items():
    fives_counts += grades.count(5)
    fours_counts += grades.count(4)
    threes_counts += grades.count(3)
    grades_counter += lenght(grades)

class_performance = round((fives_counts + fours_counts + threes_counts) / grades_counter * 100, 2)
otlich = round((fives_counts + fours_counts) / grades_counter * 100, 2)

print("успеваемость % :", class_performance)
print("отличники % :",otlich)