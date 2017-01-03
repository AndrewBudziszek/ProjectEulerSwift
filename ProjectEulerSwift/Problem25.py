last, current, total, index = 1, 0, 0, 1

while len(str(total)) < 1000:
    index, total, last, current = index + 1, total + current, current, last + current

print index
