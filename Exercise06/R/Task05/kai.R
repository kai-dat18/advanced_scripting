library(nycflights13)
library(maps)

flights %>%  select(c("year", "month", "day", "tailnum")) %>% unique()

airports

flights %>%
  group_by(dest) %>% 
  summarise(mean=mean(arr_delay, na.rm=T)) %>% 
  inner_join(airports, by=c("dest" = "faa")) %>% 
  ggplot(aes(lon, lat, color=mean)) +
  borders("state") +
  geom_point() +
  coord_quickmap()

flights %>%
  inner_join(airports, by=c("dest" = "faa")) %>% 
  rename(dest_lat = lat) %>% 
  rename(dest_lon = lon) %>% 
  inner_join(airports, by=c("origin" = "faa")) %>% 
  rename(origin_lat = lat) %>% 
  rename(origin_lon = lon)
  

flights %>%
  group_by(year, month, day) %>% 
  summarise(mean=mean(arr_delay, na.rm=T)) %>% 
  arrange(desc(mean)) %>% 
  head(10) %>% 
  inner_join(flights, by=c("year", "month", "day"))

