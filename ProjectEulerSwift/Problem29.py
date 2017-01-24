hit = []

for i in range(2, 101):
    for j in range(2, 101):
        currentPower = pow(i, j)
        inHit = False
        for num in hit:
            if currentPower == num:
                inHit = True
                break
        if not inHit:
            hit.append(currentPower)

print(len(hit))
