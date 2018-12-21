
a <- 1
b <- 2
f <- function(x) {
  # Hier sieht man das a und b von globalen Kontext!
  # Das x kommt vom ursprünglichen Funktionsaufruf.
  a*x + b
}
g <- function(x) {
  a <- 2
  b <-1
  f(x)
}
g(2)
