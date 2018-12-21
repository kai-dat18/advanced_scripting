read_format1 <- function(filename) {
  read_delim(filename, delim=",")
}

read_format2 <- function(filename) {
  read_delim(filename, delim="\t")
}

compute_mean_displacement <- function(file, csvreader) {
  data <- csvreader(file)
  return (mean(data$displ))
}

compute_mean_displacement('Task05/format1.csv', read_format1)
compute_mean_displacement('Task05/format2.csv', read_format2)
