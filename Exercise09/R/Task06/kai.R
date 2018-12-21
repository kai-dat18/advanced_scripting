library(stringr)

sum(str_detect(words, "^(.).*\\1$"))
words[str_detect(words, "^(.).*\\1$")]

