
def collatz (number):
    if number==1:
        return 0
    if number%2 == 0:
        return 1 + collatz(number/2)
    return 1 + collatz(3 * number + 1)

num = 10000

l = []
for i in range(1, num):
    l.append(collatz(i))

import matplotlib.pyplot as plt

plt.scatter(range(1, num), l, s=1)
plt.show()