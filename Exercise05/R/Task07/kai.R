#install.packages(c("plotly"))
library(plotly)
library(tidyverse)
library(nycflights13)

bar <- ggplot(sample_n(flights, size=100), aes(x=arr_delay)) + 
  geom_bar()

ggplotly(bar)

scatter <- ggplot(sample_n(flights, size=100), aes(x=carrier, y=arr_delay)) + 
  geom_point()

ggplotly(scatter)

dat <- tibble(x = c(1, 2, 5, 6, 3, -1),
              y = c(3, 3, 1, 6, -2, 1))

line <- ggplot(dat, aes(x=x, y=y)) + 
  geom_line()
ggplotly(line)

facets <- ggplot(sample_n(flights, size=20), aes(x=dest, y=arr_delay)) + 
  geom_point() +
  facet_wrap(~ carrier, nrow=2)
ggplotly(facets)

# nicht funktionieren einige Feineinstellungen von ggplot
