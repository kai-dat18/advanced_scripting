library(tidyverse)
library(readr)
?read_delim()
f1 <- read_delim('Task01/file1.csv', delim='\t')
f1



f2 <- read_delim('Task01/file2.csv', delim=';', quote = "\"", skip = 5, col_types = cols('date' = col_datetime(format="%Y-%m-%d %I:%M:%S%p"), 'money' = col_number()), locale = locale(decimal_mark = ","))
f2
?parse_date_time
