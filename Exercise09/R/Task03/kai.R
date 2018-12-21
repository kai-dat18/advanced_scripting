library(stringr)

sum(str_detect(words, "^y"))
words[str_detect(words, "^y")]

sum(str_detect(words, "x$"))
words[str_detect(words, "x$")]

sum(str_detect(words, "^...$"))
words[str_detect(words, "^...$")]

sum(str_detect(words, ".{7,}"))
words[str_detect(words, ".{7,}")]
