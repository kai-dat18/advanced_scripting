library(tidyverse)
library(nycflights13)

?flights

# https://dplyr.tidyverse.org/reference/sample.html
sample_n(flights, size=10)
sample_frac(flights, size=0.0001)

# https://dplyr.tidyverse.org/reference/top_n.html
top_n(flights, n=10)

# https://dplyr.tidyverse.org/reference/pull.html
pull(flights, carrier)
pull(flights, 10)
pull(flights, -10)

# https://dplyr.tidyverse.org/reference/summarise_all.html
mutate_at(flights, c("carrier"), tolower)

# https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/between
between(flights$arr_delay, -1, 1)

# https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/near
near(flights$arr_delay, 0, tol = 1)
