library(tidyverse)

l <- list('a','b', 'c', FALSE)

(ln <- l[map_lgl(l, function(x) class(x) == "character")])

n_numeric_elements <- function (obj) {
  if (is.numeric(obj)) {
    length = length(obj)
  }
  else {
    length = 0
  }
  length
}

n_numeric_elements(c(1, 2, 3, 4))        
n_numeric_elements(c(1, 2, 3, "b"))

lc <- c(list(1, 2, 3), list(4, "a"), list ("r", 4))

sum(map_dbl(lc, n_numeric_elements))




