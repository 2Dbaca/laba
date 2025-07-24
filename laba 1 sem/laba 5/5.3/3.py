items = {
    "Картошка": (10, 25),
    "Черника": (30, 100),
    "Морковь": (10, 40)
}

for name, (old_price, new_price) in items.items():
    if old_price < new_price:
        print(f"{name}: {old_price}₽ -> {new_price}₽ (на {round((new_price - old_price) / old_price * 100, 1)}%)")

