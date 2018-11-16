import numpy as np

mynumbers = np.arange(1, 51)
b = mynumbers[mynumbers < 10]
c = mynumbers[mynumbers >= 37]
d = mynumbers[(mynumbers >=20) & (mynumbers < 27)]
e = mynumbers[(mynumbers <20) | (mynumbers >= 27)]
f = mynumbers[mynumbers % 2 == 0]
g = mynumbers[np.in1d(mynumbers % 4, [2, 3])]

