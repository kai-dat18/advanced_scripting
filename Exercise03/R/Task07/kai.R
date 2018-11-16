library(tidyverse)


# fix the plot! -----------------------------------------------------------
?mpg
ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point(aes(color = trans)) +
  scale_color_discrete(name = "Transmission type") +
  theme_classic() +
  xlab("Displacement [l]") +
  ylab("Miles on highway per gallon")



#ggplot(mpg, aes(x = displ, y = hwy, color = "trans"))
#+ geom_point(aes(x = displ, y = cty))
#+ scale_color_discrete(name = "Transmission type")
#+ theme_classic()
#+ xlab("Displacement [l]")
#+ ylab("Miles on highway per gallon")
