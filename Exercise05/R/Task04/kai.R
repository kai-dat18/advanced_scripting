#install.packages(c("nycflights13"))
library(tidyverse)
library(nycflights13)

?flights
means <- flights %>% group_by(dest) %>% 
  summarize(mean_arr_delay=mean(arr_delay, na.rm = TRUE))
arrange(means, desc(means$mean_arr_delay))

nf <- mutate(flights, arr_delay_pos = ifelse(arr_delay >= 0,arr_delay,0))
means <- nf %>% group_by(dest) %>% summarize(mean_arr_delay=mean(arr_delay_pos, na.rm = TRUE))
arrange(means, desc(means$mean_arr_delay))

means <- flights %>% group_by(carrier) %>% summarize(mean_arr_delay=mean(arr_delay, na.rm = TRUE))
arrange(means, desc(means$mean_arr_delay))

 
gp <- group_by(flights, dest, carrier) %>% summarise() %>% tally() %>%  filter (n > 1)
ff <- filter(flights, dest %in% gp$dest)
#means <- filter(flights, dest %in% gp$dest) %>% summarize(mean_arr_delay=mean(arr_delay, na.rm = TRUE))
#arrange(means, desc(means$mean_arr_delay))
pf <- filter(ff, dest %in% gp$dest) %>% mutate(arr_delay_pos = ifelse(arr_delay >= 0,arr_delay,0))
means <- pf %>% group_by(dest) %>% summarize(mean_arr_delay=mean(arr_delay_pos, na.rm = TRUE))
arrange(means, desc(means$mean_arr_delay))

gt1 <- group_by(flights, dest, carrier) %>% summarise() %>% tally() %>%  filter (n > 1)
filter(flights, dest %in% gt1$dest) %>% 
  mutate(arr_delay_pos = ifelse(arr_delay >= 0,arr_delay,0)) %>% 
  group_by(dest) %>% 
  summarize(mean_arr_delay=mean(arr_delay_pos, na.rm = TRUE)) %>%  
  arrange(desc(mean_arr_delay))

flights %>% 
  filter(dest %in% gt1$dest) %>% 
  na.omit() %>% 
  mutate(arr_delay_pos = ifelse(arr_delay >= 0,arr_delay,0)) %>% 
  group_by(dest, carrier) %>% 
  summarise(mean_arr_delay=mean(arr_delay_pos)) %>%
  mutate(max_arr_delay=max(mean_arr_delay), 
         difference=mean_arr_delay - max_arr_delay) %>%
  arrange(desc(dest))

# na.omit() löscht nicht permanent!