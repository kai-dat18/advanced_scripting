
def collatz (number):
    n = number
    counter = 0
    while (True):
        counter+= 1
        if (n % 2 == 0):
            n =  n // 2
        else:
            n = 1 + 3 * n
        if (n ==1):
            return counter


num = 1000

l = []
for i in range(1, num):
    l.append(collatz(i))

import matplotlib.pyplot as plt

plt.scatter(range(1, num), l, s=1)
plt.show()