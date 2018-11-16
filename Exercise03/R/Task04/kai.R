library(tidyverse)
data <- tibble(Username = c("a", "b", "c", "d", "e"), UserID=c(1, 2, 3, 4, 5), Age = c(23, 24, 25, 26, 27), Gender = c("m", "f", "f", "m", "f"))

data$Username
data[1]
data["Username"]

data[data$Gender == "m", "UserID"]

data[c("Gender", "Age")]

(data <- data[c(1, 3, 2, 4)])

