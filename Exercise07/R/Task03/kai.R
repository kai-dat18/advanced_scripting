library(tidyverse)
library(lubridate)
library(nycflights13)

# f <- flights
# mut <- function(f, col) {
#   mutate(f, col = make_datetime(year=year, month=month, day= day,hour=col %/% 100, min=col %% 100))
# }
# 
# 
# f <- f %>%
#   mut(dep_time) %>%
#   mut(sched_dep_time) %>%
#   mut(arr_time) %>%
#   mut(sched_arr_time)

create_dttm <- function(year, month, day, hour, minute) {
  make_datetime(year=year, month=month, day= day,hour=dep_time %/% 100, min=dep_time %% 100)
}

f <- flights
f <- f %>% 
  mutate(dep_time = make_datetime(year=year, month=month, day= day,hour=dep_time %/% 100, min=dep_time %% 100)) %>% 
  mutate(sched_dep_time = make_datetime(year=year, month=month, day= day,hour=sched_dep_time %/% 100, min=sched_dep_time %% 100)) %>% 
  mutate(arr_time = make_datetime(year=year, month=month, day= day,hour=arr_time %/% 100, min=arr_time %% 100)) %>% 
  mutate(sched_arr_time = make_datetime(year=year, month=month, day= day,hour=sched_arr_time %/% 100, min=sched_arr_time %% 100))

ggplot(f, aes(dep_time)) +
  geom_freqpoly(binwidth=86400)

ggplot(f, aes(sched_dep_time)) +
  geom_freqpoly(binwidth=86400)

ggplot(f, aes(arr_time)) +
  geom_freqpoly(binwidth=86400)

ggplot(f, aes(sched_arr_time)) +
  geom_freqpoly(binwidth=86400)

