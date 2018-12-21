library(stringr)

sum(str_detect(words, "^[^aeiou]{3}"))
words[str_detect(words, "^[^aeiou]{3}")]

sum(str_detect(words, "[aeiou]{3}"))
words[str_detect(words, "[aeiou]{3}")]

sum(str_detect(words, "([aeiou][^aeiou]){2,}"))
words[str_detect(words, "([aeiou][^aeiou]){2,}")]

