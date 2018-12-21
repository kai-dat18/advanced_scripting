library(tidyverse)

f <- factor(c("b", "b", "a", "c", "c", "c", "a"))
f
fct_inorder(f)
fct_infreq(f)

fct_inorder(f, ordered = TRUE)


x <- factor(rep(LETTERS[1:9], times = c(40, 10, 5, 27, 4, 3, 2, 1, 1)))

x %>% fct_lump(n=-3) %>% table()

