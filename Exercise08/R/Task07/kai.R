linear_interpolation_factory <- function(a, b) {
  function (x) {
    return (a[2] + (b[2]-a[2]) / (b[1]-a[1]) * (x - a[1]))
  }
}

i1 <- linear_interpolation_factory(c(1, 2), c(5, 6))

i1(c(3, 4))
