a <- list(1:4)
a[[5]]
a[[-1]]
a[[0]]
testvector <- 1:10
testvector[c(T)]
testvector[c(F)]
testvector[c(T, T, T, F, F, T, F, T)]
testvector[c(T, T, T, F, F, T, F, F, F, T, T)]
testvector[c(1:4)] = c(99, 88)
testvector[c(1:4)] = c(99, 88, 77)
1/0
0/0

