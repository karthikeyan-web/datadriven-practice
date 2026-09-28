def dominant_element(readings: list[int]):

    frequency = {}
    for i in readings:
        frequency[i] = frequency.get(i, 0) + 1

    result = [k for k, v in sorted(frequency.items(), key=lambda x: x[1], reverse=True)]
    return result[0]


print(dominant_element([3, 3, 4, 3, 5]))
