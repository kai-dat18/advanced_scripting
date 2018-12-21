library(tidyverse)

# part 1 ------------------------------------------------------------------

stocks <- tibble(
  year   = c(2015, 2015, 2016, 2016),
  half  = c(   1,    2,     1,    2),
  return = c(1.88, 0.59, 0.92, 0.17)
)

stocks %>%
  spread(year, return) %>%
  gather("year", "return", `2015`:`2016`, factor_key = TRUE, convert=T)
stocks


# part 2 ------------------------------------------------------------------

table4a
table4a %>%
  gather(key = "year", value = "cases", `1999`, `2000`)
