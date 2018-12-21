
library(tidyverse)

?nesting
data <- read_delim('Task10/treatments.csv', delim=",")
data
expand(data, name, treatment)
all <- data %>% expand(nesting(name, treatment), repetition)
all
data %>% right_join(all)

experiment <- tibble(
  name = rep(c("Alex", "Robert", "Sam"), c(3, 2, 1)),
  trt  = rep(c("a", "b", "a"), c(3, 2, 1)),
  rep = c(1, 2, 3, 1, 2, 1),
  measurment_1 = runif(6),
  measurment_2 = runif(6)
)
experiment
all <- experiment %>% expand(nesting(name, trt), rep)
all
experiment %>% right_join(all)
