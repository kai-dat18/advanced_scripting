#install.packages("leaflet")
library(leaflet)

q <- quakes[order(-quakes$mag),]
q

leaflet(data = q[1:30,]) %>% addTiles() %>%
  addMarkers(~long, ~lat, popup= (~as.character(paste(mag, stations))))


leaflet(data = top_n(quakes, 30, mag)) %>% addTiles() %>%
  addMarkers(~long, ~lat, popup= (~as.character(paste(mag, stations))))
