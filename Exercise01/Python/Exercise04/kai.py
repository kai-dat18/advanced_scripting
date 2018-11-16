import numpy as np

a = np.arange(1, 11)
a[3] = 99
a[0:2] = 77
a[4] = 77
a[2] = 66
a[7:9] = 55, 44
type(a[0])
a[9] = 9.99
a[6] = "a"
