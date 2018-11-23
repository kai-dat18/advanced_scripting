#install.packages(c("gapminder"))
library(plotly)
library(gapminder)

# https://plot.ly/ggplot2/animations/

df <- data.frame(
  x = c(1,2,3,4), 
  y = c(1,2,3,4), 
  f = c(1,2,3,4)
)

p <- ggplot(df, aes(x, y)) +
  geom_point(aes(frame = f))

ggplotly(p)

?gapminder

g <- ggplot(gapminder, aes(gdpPercap, lifeExp, color = continent)) +
  geom_point(aes(size = pop, frame = year, ids = country)) +
  scale_x_log10()

ggplotly(g)
