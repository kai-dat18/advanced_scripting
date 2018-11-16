import math
import random

numSims = 100000

def is_in_circle(x, y):
    return math.sqrt(x ** 2 + y ** 2) <=1

def simulate():
    x = random.uniform(-1, 1)
    y = random.uniform(-1, 1)
    return is_in_circle(x, y)

erg = map(lambda x: simulate(), range(numSims))

#erg = [simulate() for _ in range(numSims)]
print (sum(filter(lambda x: x, erg)) * 4 / numSims)