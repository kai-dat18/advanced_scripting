library(tidyverse)
library(lubridate)

f <- nycflights13::flights
f <- f %>% 
  mutate(dep_sch_m = sched_dep_time %% 100) %>% 
  mutate(dep_act_m = dep_time %% 100)
  
delay_scheduled <- f %>% group_by(dep_sch_m) %>% 
  summarize(mean(arr_delay, na.rm=T))

delay_actual <- f %>% group_by(dep_act_m) %>% 
  summarize(mean(arr_delay, na.rm=T))
