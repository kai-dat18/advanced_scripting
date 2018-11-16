for i in range(3):
    for j in range (i):
        print (i, j)
print ("=====")
for i in range(3):
    i += 1
    for j in range (i):
        print (i, j)
print ("=====")
for i in range(3):
    for j in range (i):
        i += 1
        j += 1
        print (i, j)