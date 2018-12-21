library(lubridate)


# Invalid Dates -----------------------------------------------------------

ymd("2018-02-32")
ymd("2020-02-29")
ymd("2019-02-29")
ymd_hms("2019-03-31 01:30:00", tz="Europe/Vienna")
ymd_hms("2019-03-31 02:30:00", tz="Europe/Vienna")
ymd_hms("2019-03-31 03:30:00", tz="Europe/Vienna")

ymd_hms(now("Japan"))
with_tz(now(), "Japan")
d1 <- "January 1, 2010"
d2 <- "2015-Mar-07 11h31min34s"
d3 <- "06-Jun-2017 17:21"
d4 <- c("August 19 (2015)", "July 1 (2015)")
d5 <- "12/30/14" # Dec 30, 2014

mdy(d1)
ymd_hms(d2)
dmy_hm(d3)
mdy(d4)
mdy(d5)
