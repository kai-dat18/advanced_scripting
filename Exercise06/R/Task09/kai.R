proto <- splinefun(c(0, 3, 4, 6, 7, 10, 15), c(0, 2.5, 1.5, 2, 1, 5, 0))
make_meas <- function(x){
  res <- pmax(proto(x/max(x)*15) + pmin(rnorm(length(x), sd = 0.5), 1.5), 0.001)
  meas_break <- pmin(rnorm(sample(30:120), mean = -0.5, sd = 0.1), -0.001)
  c(res, meas_break)
}
set.seed(1)
lens <- sample(145:155, size = 10, replace = TRUE)
measurements <- unlist(lapply(lens, function(len) make_meas(seq_len(len))))
rm(proto, make_meas, lens)

# your code goes below ----------------------------------------------------
vec <- (measurements > 0)
m_p <- rle(vec)
m_p$values[m_p$values == TRUE] <- seq_len(sum(m_p$values == TRUE))
pos <- inverse.rle(m_p)
meas <- tibble(meas=measurements, group=pos)

ggplot(meas, aes(x=1:length(meas), y=meas))+
  geom_line(size=0.2)

groups <- meas %>% 
  filter(group != 0) %>% 
  group_by(group) %>% 
  mutate(ind=row_number(group))
groups
ggplot(groups, aes(x=ind, y=meas))+
  geom_line(aes(group=groups$group), color=groups$group)
  

