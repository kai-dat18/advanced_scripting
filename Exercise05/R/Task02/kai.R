library(tidyverse)

# Titanic passenger counts by Class and Sex -------------------------------

titantic_passengers <-
  apply(Titanic, c("Class", "Sex"), sum) %>%
    as.data.frame() %>%
    rownames_to_column() %>%
    rename(Class = rowname) %>%
    as_tibble()
titantic_passengers
gather(titantic_passengers,`Male`, `Female`, key="Sex", value="Number")

# Diamond auction prices --------------------------------------------------

diamond_prices <-
  diamonds %>%
  select(carat:clarity, price)
diamond_prices



# Age and height of different people --------------------------------------

people <- tribble(
  ~name,             ~property,    ~value,
  #-----------------|--------|------
  "Phillip Woods",   "age",       45,
  "Phillip Woods",   "height",   186,
  "Phillip Woods",   "age",       50,
  "Jessica Cordero", "age",       37,
  "Jessica Cordero", "height",   156
)

people
people <- mutate(people, id = c(1, 1, 2, 3, 3))
spread(people, key = property, value = value)
