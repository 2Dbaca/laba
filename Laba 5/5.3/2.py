def gto_results(students, norms):

    failed = []
    passed_count = 0
    results = {}

    for student, scores in students.items():
        total_score = (1/scores["100m"]) + scores["long_jump"]
        results[student] = total_score
        if scores["100m"] > norms["100m"] or scores["long_jump"] < norms["long_jump"]:
            failed.append(student)
        else:
            passed_count += 1

    sorted_results = sorted(results.items(), key=lambda item: item[1], reverse=True)
    top_3 = [student for student, score in sorted_results[:3]]


    return {
        "failed": failed,
        "passed_count": passed_count,
        "top_3": top_3
    }


gto_norms = {"100m": 13.5, "long_jump": 4.0}

student_data = {
    "Alerch": {"100m": 12.8, "long_jump": 4.5},
    "Aboba": {"100m": 14.2, "long_jump": 3.8},
    "Charlie_chapman": {"100m": 13.2, "long_jump": 4.2},
    "David_rukojop": {"100m": 12.5, "long_jump": 4.8},
    "Eva_elf": {"100m": 15.0, "long_jump": 3.5},
    "Jona_sina": {"100m": 12.1, "long_jump": 5.2}
}


results = gto_results(student_data, gto_norms)
print("Не выполнили:", results["failed"])
print("Сдали:", results["passed_count"])
print("Top 3 студента:", results["top_3"])