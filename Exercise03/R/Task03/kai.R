test <- function(ar) {
  print(ar[1,1,1,1] == 1)
  print(ar[1,1,2,1] == 2)
  print(ar[1,1,3,1] == 3)
  print(ar[1,1,4,1] == 4)
  print(ar[2,1,1,1] == 5)
  print(ar[2,1,4,1] == 8)
  print(ar[1,1,1,2] == 13)
}


ar <- array(1:120, dim = c(4, 3, 5, 2))
parr <- aperm(ar, c(2, 4, 1, 3))
test(parr)
apply(parr, c(1, 4), sum)
