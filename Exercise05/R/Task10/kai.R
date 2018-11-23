
group_count_plot <- function(tib, column_name) {
  counts <- tib %>% group_by(!!column_name) %>% tally()
  counts_plot <- ggplot(tib, aes(x=!!column_name)) + 
    geom_bar()
  list(counts = counts, counts_plot = counts_plot)
}

grouping <- group_count_plot(mpg, quo(cyl))
grouping["counts"]
grouping["counts_plot"]
