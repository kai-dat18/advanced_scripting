
statSum <- function(..., na.rm = TRUE) {
  args <- list(...)
  aInts <- as.integer(args)
  print (paste0("len:  ", length(aInts)))
  print (paste0("max:  ", max(aInts, na.rm = na.rm)))
  print (paste0("min:  ", min(aInts, na.rm = na.rm)))
  print (paste0("sum:  ", sum(aInts, na.rm = na.rm)))
  print (paste0("mean: ", mean(aInts, na.rm = na.rm)))
}

statSum(1, 2, 3, 0/0, na.rm = TRUE)
statSum(1, 2, 3, 0/0, na.rm = FALSE)
statSum(1, 2, 3, 0/0)
statSum(1, 2, 3)
