import matplotlib.pyplot as plt
import numpy as np

def enlargeOneDir (img):
    result = []
    for zeile in img:
        longer = [None] * (2*len(zeile) - 1)
        for num, i in enumerate(zeile):
            longer[num * 2] = i
        for num in range(len(zeile)-1):
            longer[2 * num + 1] = np.mean([longer[2*num], longer[2*num+2]], axis = 0)
        result.append(longer)
    return result

def enlarge(img):
    oneDir = np.array(enlargeOneDir(img))
    twoDir= np.array(enlargeOneDir(oneDir.transpose((1, 0, 2))))
    return twoDir.transpose((1, 0, 2))

img=plt.imread('convert_to_greyscale.png')

large = enlarge(img)

imgplot = plt.imshow(large)

plt.show(imgplot)
