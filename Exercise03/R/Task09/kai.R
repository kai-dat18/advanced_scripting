library(tidyverse)
library(ggmap)

gps <- readRDS(url("https://www.dropbox.com/s/5zxxdp1o14n17vh/latlon.RDS?dl=1"))
latitude <- gps$lat
latitude <- floor(latitude/100) + (latitude %% 100) / 60
longitude <- gps$lon
longitude <- floor(longitude/100) + (longitude %% 100) / 60
rm(gps)
dat <- tibble( lat = latitude, lon = longitude)

# your code goes below ----------------------------------------------------


ggplot(dat, aes(x = lon, y = lat)) +
  geom_path()

map <- get_map(location = c(longitude[1], latitude[1]), zoom=16)
ggmap(map) + geom_path(data = dat, aes(x = lon, y = lat), color="black", size=1)

