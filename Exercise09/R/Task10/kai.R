trampoline <- function(f, ...) {
  function(...) {
    ret <- f(...)
    while (inherits(ret, "recursion")) {
      ret <- eval(as.call(c(f, unclass(ret))))
    }
    ret
  }
}

recur <- function(...) {
  structure(list(...), class = "recursion")
}

fact<- trampoline(function(n, prod = 1) {
    if (n > 1) recur(n-1, n*prod) else prod
  })
fact(10)

library(tidyverse)
?spread()
?Recall
mean
