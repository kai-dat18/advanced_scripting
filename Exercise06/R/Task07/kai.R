library(tidyverse)

mpg %>% 
  mutate(transf = as.factor(trans)) %>% 
  group_by(transf) %>% 
  summarize(mean_hwy = mean(hwy)) %>% 
  ggplot(aes(mean_hwy, fct_reorder(transf, desc(mean_hwy)))) +
    geom_point()

