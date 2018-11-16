library (tidyverse)

RColorBrewer::display.brewer.all()


ggplot(ggplot2::mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = drv), size=1) + 
#  scale_color_brewer(palette = "Set1") +
  scale_color_manual(values = c(`4` = "green", `f` = "red", `r` = "purple"), guide= guide_legend(override.aes = list(size = 5)))

