"cutoff<-" <- function(x, value){
  x[x > value] <- Inf
  x[x < -value] <- -Inf
  x
}
x <- c(-3, 4, -5, -6, 0, 1, -2, 8, 9)
cutoff(x) <- 4
x
