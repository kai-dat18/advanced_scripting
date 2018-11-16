layer8problem <- function(prompt = "? ") {
  while (TRUE) {
    input <- readline(prompt)
    if (input == "q") {
      return (NA)
    }
    ii = suppressWarnings(as.integer(input))
    if (is.na(ii) | ii <= 0) {
      print ("You did not enter a positive integer. Try again!")
    }
    else {
      return (ii)
    }
  }
}

layer8problem("Number please ")