library(tidyverse)
library(lubridate)
library(nycflights13)

f <- flights
f <- f %>% 
  mutate(dep_time = make_datetime(year=year, month=month, day= day,hour=dep_time %/% 100, min=dep_time %% 100)) %>% 
  mutate(dep_time = format(dep_time, format="%Y-%m-%d %h:%m:%s"))
f
print (getwd())
?readr::write_delim()
readr::write_delim(f, "flights.csv")

