telephon = {
    "Peta": "338952521",
    "Rina": "63424212",
    "Alesha": "33623621742"
}

for name, number in telephon.items():
    if number[:2] == "33":
        print(name, number)