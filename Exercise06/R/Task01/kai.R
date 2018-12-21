library(dplyr)
library(lubridate)

# https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/lead-lag
lag(1:10, 1)
lead(1:10, 1)

# https://www.rdocumentation.org/packages/tidyr/versions/0.8.2/topics/replace_na
df <- tibble(x = c(1, 2, NA), y = c("a", NA, "b"), z = list(1:5, NULL, 10:20))
df
df %>% replace_na(list(x = 0, y = "unknown"))
df %>% mutate(x = replace_na(x, 0))

tib_ex <- tibble(
  id = rep(1,5),
  date1 = ymd(c('1990-11-05', '1990-12-01', 
                '1990-12-05', '1990-12-08', 
                '1990-12-15')),
  date2 = ymd(c('1990-11-28', '1990-12-05', 
                '1990-12-08', '1990-12-12', 
                '1990-12-31')),
  var1 = 2:6,
  var2 = 7:11,
  var3 = 12:16,
  var4 = c(0, 1, 0 ,0, 1)
)

date_info <- 
  tib_ex %>% 
  ## find indices of start and end dates by comparing with date in next / previous row
  mutate(is_startdate = date1 != lag(date2),
         is_enddate = date2 != lead(date1)) %>% 
  ## NA's appear at the beginning (start_date) and end (end_date) and should thus be interpreted as TRUE
  replace_na(list(is_startdate = T, is_enddate = T))
date_info
## combine the start- and end-dates
date_info %>% 
  filter(is_enddate) %>% 
  # Zugriff auf Gesamtdaten -> date_info
  mutate(date1 = date_info$date1[is_startdate]) %>% 
  select(-starts_with("is_"))
