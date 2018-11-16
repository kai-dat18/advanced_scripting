vec <- c(a = NA, b = NA, c = NA, d = NA, e = NA, f = NA, g = NA)
vec [["b"]] <- 4
vec[["b"]]
vec [["b"]] <- 5
vec[["b"]]
names(vec[!is.na(vec)])
"d" %in% names(vec)

# f
# Zugriff per Index
# Garantierte Ordnung
# Es kann Einträge ohne key geben

vec <- c(vec,h= 6)
vec
v1 <- c(r=9, t = 8)
v2 <- c(vec, v1)
v2
v2[2] <- NULL


