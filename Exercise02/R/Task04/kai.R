guess <- function() {
  ri <- sample(1:10, 1)
  guessed <- readline("Make your guess! ")
  guessed_number = as.integer(guessed)
  if (is.na(guessed_number)) {
    print ("You did not enter an integer!")
  } else {
    print (paste0("My number:  ", ri))
    print (paste0("Your guess: ", guessed_number))
  }
}

guess()
