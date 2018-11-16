import matplotlib.pyplot as plt
import numpy as np

img=plt.imread('convert_to_greyscale.png')

def compress(img):
    reduced = []
    for numx in range(img.shape[0]//2):
        strip = []
        for numy in range(img.shape[1]//2):
            part = img[numx*2:numx*2+2, numy*2:numy*2+2, :]
            erg = np.mean(part, axis=0)
            erg = np.mean(erg, axis=0)
            strip.append(erg)
        reduced.append(strip)
    return reduced

reduced = compress(img)

imgplot = plt.imshow(reduced)

plt.show(imgplot)