library(dataverse)
library(lubridate)
?datasets::beaver2
b <- datasets::beaver2
b <- b %>% 
  mutate(date = make_datetime(year=1990, hour=time %/% 100, min=time %% 100))  %>% 
  mutate(date = date + days(day)) 

data <- tibble(mins = mins, temp = b$temp)
ggplot(b, aes(x = date, y = temp, color=activ)) +  geom_line()
b
