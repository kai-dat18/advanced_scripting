weather_data <- readRDS(url("https://www.dropbox.com/s/ohvx4scko6mzof9/weather_data_2018-03-01_155227_UTC.RDS?dl=1"))


# your code goes below ----------------------------------------------------

extract_data <- function(json_data) {
  lon <- json_data$coord$lon
  lat <- json_data$coord$lat
  description <- json_data$weather$description
  name <- json_data$name
  x <- tibble(lon = lon, lat = lat, name = name, description = description)
}

weather <- map_dfr(weather_data, extract_data)
weather

