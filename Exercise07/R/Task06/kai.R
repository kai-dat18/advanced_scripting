library(tidyverse)
library(lubridate)
library(nycflights13)

f <- flights
f <- f %>% 
  mutate(dep_time = make_datetime(year=year, month=month, day= day,hour=dep_time %/% 100, min=dep_time %% 100)) %>% 
  mutate(sched_dep_time = make_datetime(year=year, month=month, day= day,hour=sched_dep_time %/% 100, min=sched_dep_time %% 100)) %>% 
  mutate(arr_time = make_datetime(year=year, month=month, day= day,hour=arr_time %/% 100, min=arr_time %% 100)) %>% 
  mutate(sched_arr_time = make_datetime(year=year, month=month, day= day,hour=sched_arr_time %/% 100, min=sched_arr_time %% 100)) %>% 
  mutate(arr_time = ifelse(dep_time > arr_time, arr_time +ddays(1), arr_time)) %>% 
  mutate(sched_arr_time = ifelse(dep_time > arr_time, sched_arr_time +ddays(1), sched_arr_time))
f %>%  filter(dep_time > arr_time)
f
