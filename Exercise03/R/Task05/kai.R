library(dataverse)

?datasets::mtcars
ggplot(datasets::mtcars, aes(x=wt, y=mpg)) + geom_point()

?datasets::faithful
ggplot(datasets::faithful, aes(x=waiting)) + geom_histogram(bins=30)

?datasets::beaver1
b <- datasets::beaver1
mins <- (b$day - 346) * (60*24) + (b$time %/% 100) * 60 + b$time %% 100 - 520
data <- tibble(mins = mins, temp = b$temp)
ggplot(data, aes(x = mins, y = temp)) +  geom_line()
