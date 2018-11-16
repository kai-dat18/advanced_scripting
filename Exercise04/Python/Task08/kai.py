import matplotlib.pyplot as plt
import numpy as np

img=plt.imread('convert_to_greyscale.png')

def divideHor(img, numStrips):
    sizeStripe = img.shape[0] // numStrips
    remainderStrips = img.shape[0] % numStrips
    strips = []
    for num in range(numStrips):
        strips.append(img[num * sizeStripe:(num+1) * sizeStripe, :, :])
    if (remainderStrips != 0):
        strips.append(img[img.shape[0] - remainderStrips:img.shape[0], :, :])
    return strips

def combHor(strips):
    ung = []
    ger = []
    for num, s in enumerate(strips):
        if num % 2 == 0:
            ger.append(s)
        else:
            ung.append(s)
    img = np.concatenate([np.concatenate(ger, axis=0), np.concatenate(ung, axis=0)], axis=0)
    return img

def divideVert(img, numStrips):
    sizeStripe = img.shape[1] // numStrips
    remainderStrips = img.shape[1] % numStrips
    strips = []
    for num in range(numStrips):
        strips.append(img [:, num * sizeStripe:(num+1) * sizeStripe, :])
    if (remainderStrips != 0):
        strips.append(img[:, img.shape[1] - remainderStrips:img.shape[1], :])
    return strips

def combVert(strips):
    ung = []
    ger = []
    for num, s in enumerate(strips):
        if num % 2 == 0:
            print (s.shape)
            ger.append(s)
        else:
            print(s.shape)
            ung.append(s)
    img = np.concatenate([np.concatenate(ger, axis=1), np.concatenate(ung, axis=1)], axis=1)
    return img

img1 = combVert(divideVert(img, 31))
img2 = combHor(divideHor(img1, 31))

imgplot = plt.imshow(img2)

plt.show(imgplot)