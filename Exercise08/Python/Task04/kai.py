import csv
import numpy as np

brand = []
build = []
type = []

with open("python.csv", "r") as csvfile:
    csvreader = csv.reader(csvfile, delimiter = ',')
    for number, row in enumerate(csvreader):
        brand.append(row[0])
        build.append(row[1])
        type.append(row[2])
brand = np.array(brand)
build = np.array(build)
type = np.array(type)

print (brand)