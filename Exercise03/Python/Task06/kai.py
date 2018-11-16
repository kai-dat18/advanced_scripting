import matplotlib.pyplot as plt
import numpy as np


x = np.linspace(0, 10, 500)
y = np.sin(x)

plt.plot(x, y, color = 'green', linestyle='dashed')
#line.set_dashes([10, 5, 20, 5])
plt.show()
#print(plt.style.available)

N = 50
x = np.random.rand(N)
y = np.random.rand(N)
colors = np.random.rand(N)
area = (30 * np.random.rand(N))**2  # 0 to 15 point radii

plt.scatter(x, y, s=area, c=colors, alpha=0.5)
plt.show()