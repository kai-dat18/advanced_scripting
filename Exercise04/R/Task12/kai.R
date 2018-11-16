library(tidyverse)
summary(ggplot2::diamonds)

color <- group_by(ggplot2::diamonds, color)
tally(color)

ggplot(diamonds, aes(x=price)) +
  geom_histogram(bins =50)

d1 <- group_by(diamonds, clarity, color)
summarize(d1, min_c=min(carat), max_c=max(carat), median_c = median(carat))

diamonds %>% 
  group_by(clarity, color) %>% 
  summarize(min_c=min(carat), max_c=max(carat), median_c = median(carat))

d2 <- group_by(diamonds, clarity)
summarize(d2, mean_p = mean(price))

ggplot(diamonds, aes(x = carat)) +
  geom_histogram(bins =200)

