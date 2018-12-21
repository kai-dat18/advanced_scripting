library(tidyverse)

persons <-
  tribble(
    ~Name,  ~Adjectives,
    "Bob",  "courteous, empathetic, adaptable",
    "Jim",  "passionate, persistent, ambitious",
    "Mary", "empathetic, diligent, amiable"
  )

expected_output <-
  structure(list(Name = c("Bob", "Jim", "Mary"),
                 adaptable = c(TRUE, FALSE, FALSE),
                 ambitious = c(FALSE, TRUE, FALSE),
                 amiable = c(FALSE, FALSE, TRUE),
                 courteous = c(TRUE, FALSE, FALSE),
                 diligent = c(FALSE, FALSE, TRUE),
                 empathetic = c(TRUE, FALSE, TRUE),
                 passionate = c(FALSE, TRUE, FALSE),
                 persistent = c(FALSE, TRUE, FALSE)),
            class = c("tbl_df", "tbl", "data.frame"),
            row.names = c(NA, -3L))


# your code goes below ----------------------------------------------------
persons
expected_output

?gather
?spread

persons %>%
  separate(Adjectives, c("a", "b", "c")) %>%
  gather("a", "b", "c", key='num', value="adj", na.rm=TRUE) %>%
  mutate(dumdum = T) %>% ## Add dummy column to indicate presence
  select(Name, adj, dumdum) %>% ## remove unused key column from gather
  spread(key = adj, value=dumdum, fill=FALSE)
