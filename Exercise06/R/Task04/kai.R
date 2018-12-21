

a <- function(x) {
  x + 1
}
  

c <- function(x) {
  d <- function(y) {
    y * 3
  }
  x + d(x)
}

c(1)
l = list(1, "abc", function(x) x ** 2, function(x) a(x) ** 2, c)

e <- function(x) x ** 2

print (e)
print(l[[3]](3))
print(l[[4]](3))
print(l[[5]](1))

saveRDS(l, file="task04")

m <- readRDS("task04")
print(m[[3]](3))
print(m[[4]](3))
print(m[[5]](1))
