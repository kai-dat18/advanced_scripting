
for (i in 0:2) {
  for (j in 0:i) {
    cat(sprintf("\"%i\" \"%i\"\n", i, j))
  }
}
print ("=====")
for (i in 0:2) {
  i <- i + 1
  for (j in 0:i) {
    cat(sprintf("\"%i\" \"%i\"\n", i, j)) 
  }
}
print ("=====")
for (i in 0:2) {
  for (j in 0:i) {
    i <- i + 1
    j <- j + 1
    cat(sprintf("\"%i\" \"%i\"\n", i, j))
  }
}

