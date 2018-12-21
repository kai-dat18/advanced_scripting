library(tidyverse)

?list.files()
files <- list.files(path='Task09', pattern = "csv$", full.names=TRUE)

?map_dfr()
my_data <- map_dfr(files, read_csv, .id='file')

print(my_data)


