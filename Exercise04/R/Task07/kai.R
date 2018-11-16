library(tidyverse)

plotf <- function (plot, suffix) {
  plot + 
    theme_classic() + 
    theme(panel.grid.major = element_line(colour = "grey",linetype="dashed"),
          panel.grid.minor = element_line(colour="grey", linetype="dashed"))+
    scale_x_continuous(labels = function(x) {paste0(x, suffix)})
}

pl <- ggplot(data=mpg) + 
  geom_point(mapping=aes(x=cty, y=hwy, color = trans))

p <- plotf(pl, " m")

print(p)

