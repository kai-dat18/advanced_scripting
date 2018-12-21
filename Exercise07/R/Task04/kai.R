library(tidyverse)
library(lubridate)
library(nycflights13)

f <- flights
f <- f %>%  mutate(dep_time = make_datetime(year=year, month=month, day= day,hour=dep_time %/% 100, min=dep_time %% 100)) 

f$dayOfWeek <- weekdays(as.Date(f$dep_time))
weekdays <- f %>%  group_by(dayOfWeek) %>% tally()
weekdays
weekdays <- filter(weekdays, !is.na(dayOfWeek) )
weekdays$dayOrder <- factor(weekdays$dayOfWeek,levels = c("Montag", "Dienstag", "Mittwoch", "Donnerstag", "Freitag", "Samstag", "Sonntag"))

p<-ggplot(data=weekdays, aes(x=dayOrder, y=n)) +
  geom_bar(stat="identity")
p
