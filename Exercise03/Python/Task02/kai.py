import matplotlib.pyplot as plt

img=plt.imread('convert_to_greyscale.png')


grey = img[:, :, 0] * 0.299 + img[:, :, 1] * 0.587 + img[:, :, 2] * 0.144


imgplot = plt.imshow(grey, cmap = plt.get_cmap('gray'))

plt.show(imgplot)