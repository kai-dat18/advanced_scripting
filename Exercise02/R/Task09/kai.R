ping <- function(ctr) {
  ctr <- ctr + 1
  rn <- runif(1, 0, 1)
  if (rn < 0.05) {
    return (paste0("ping lost! ", ctr))
  }
  else {
    pong(ctr)
  }
}

pong <- function(ctr) {
  ctr <- ctr + 1
  rn <- runif(1, 0, 1)
  if (rn < 0.1) {
    return (paste0("pong lost! ", ctr))
  }
  else {
    ping(ctr)
  }
}

ping(0)
