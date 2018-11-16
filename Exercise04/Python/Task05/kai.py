# a
l = ["a", 1, 5, "b"]
print ([x for x in l if isinstance(x, str)])

filter (lambda x: isinstance(x, str), l)

# b
print ([n ** 2 for n in range (4, 12) if n % 2 ==0])

# c
l = [[1, 2], [3, 4, 5], [6, 7, 8, 9]]
print([x[1] for x in l if len(x) > 3])

# d
import numpy as np
print (np.array([[x ** 2 for x in range(y, y + 3)] for y in [2, 6, 7]]))