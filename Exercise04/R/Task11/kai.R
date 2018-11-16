?append()

sort <- function(u) {
  s <- numeric()
  for (ue in u) {
    index <- 0
    for (se in s) {
      if (se > ue){
        break
      }
      else {
        index <- index + 1
      }
    }
    s <- append(x=s, values=ue, after=index)
  }
  s
}

print (sort(c(5, 7,  -4, 3, 9, 1)))
