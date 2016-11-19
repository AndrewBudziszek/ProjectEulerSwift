from math import factorial

def combination(n, k):
    numerator = factorial(n)
    denominator = (factorial(k) * factorial(n - k))
    return numerator/denominator

print(combination(20 + 20, 20))
