library(tidyverse)

?mpg
ggplot(data=mpg) +
  geom_point(mapping=aes(x=cty, y=hwy, color = trans)) + 
  facet_wrap(~ drv) +
  ggtitle("mpg")
  theme(axis.title = element_text(color="green", size=20))
