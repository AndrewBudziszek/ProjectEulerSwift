last = 1
current = 0
total = 0
index = 1

while len(str(total)) < 1000:
    print len(str(total))
    index += 1
    total += current
    temp = last + current
    last = current
    current = temp

print len(str(total))
print index
