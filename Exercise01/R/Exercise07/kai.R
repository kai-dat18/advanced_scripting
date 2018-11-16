userinfo <- list(user = "testuser", userid = 1, birthdate = list(day = 29, month = "February", year = 2184), allergies = list("gluten", "lactose"))
sub <- userinfo[c(1, 2, 4)]
first <- userinfo[1]
class(first)
first <- userinfo[[1]]
class(first)
first <- userinfo[["user"]]
class(first)
first <- userinfo$user
class(first)
month <- userinfo$birthdate$month
firstallergy <- userinfo$allergies[[1]]

