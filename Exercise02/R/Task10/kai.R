library(tidyverse)

ping <- function(ctr) {
  ctr <- ctr + 1
  rn <- runif(1, 0, 1)
  if (rn < 0.1) {
    return (ctr)
    #return (paste0("ping lost! ", ctr))
  }
  else {
    pong(ctr)
  }
}

pong <- function(ctr) {
  ctr <- ctr + 1
  rn <- runif(1, 0, 1)
  if (rn < 0.1) {
    return (ctr)
    #return (paste0("pong lost! ", ctr))
  }
  else {
    ping(ctr)
  }
}

numGames = 1000
games <- map_chr(c(1:numGames), function (x) ping(0))
(pongWon <- sum (startsWith(games, "ping")))
paste0("Pong wins: ", pongWon)
paste0("Ping wins: ", (numGames - pongWon))

games <- map_dbl(c(1:numGames), function (x) ping(0))
(longer10 <- sum(games > 10))

# prob = 0.9 ^ 10