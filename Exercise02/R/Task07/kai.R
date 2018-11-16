# code to create variables for task ---------------------------------------
set.seed(12345)
n_sensor <- 10
vars <- rnorm(n_sensor, 0, 0.01)^2
vars[7] <- 1
meas1 <- rnorm(n_sensor, 55, sqrt(vars))
meas2 <- rnorm(n_sensor, 66, sqrt(vars))
meas3 <- rnorm(n_sensor, 77, sqrt(vars))
meas4 <- rnorm(n_sensor, 88, sqrt(vars))
rm(n_sensor, vars)


# your code goes below ----------------------------------------------------

print (c(mean(meas1), mean(meas2), mean(meas3), mean(meas4)))
d1 <- abs(meas1 - mean(meas1))
d2 <- abs(meas2 - mean(meas2))
d3 <- abs(meas3 - mean(meas3))
d4 <- abs(meas4 - mean(meas4))
devs <- (d1 + d2 + d3 + d4) /4
print (devs)


#sum(d1 / 10)
#sum(d2 / 10)
#sum(d3 / 10)
#sum(d4 / 10)
     