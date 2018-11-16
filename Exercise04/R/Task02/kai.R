mymax <- function (numbers, na.rm = FALSE) {
  max <- -Inf
  for (n in numbers) {
    if (is.na(n)) {
      if (na.rm) {
        next
      } else {
        return (NA)
      }
    }
    if (n > max) {
      max = n
    }
  }
  max
}

mymean <- function (numbers, na.rm = FALSE) {
  mean <- 0
  count <- 0
  for (n in numbers) {
    if (is.na(n)) {
      if (na.rm) {
        next
      } else {
        return (NA)
      }
    }
    mean <- mean + n
    count <- count + 1
  }
  mean / count
}

mymax (c(1, 2, -3, NA), TRUE)
mymax (c(1, 2, -3, NA))


mymean (c(5, 2, -3, NA), TRUE)
mymean (c(5, 2, -3, NA))