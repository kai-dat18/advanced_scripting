new_car <- function(fuel_capacity, fuel_consumption, color) {
  cur_cap <- fuel_capacity
  fuel_con <- fuel_consumption
  col <- color
  distance <- 0
  
  show_info <- function() {
    print (str_interp("The ${col} car has ${cur_cap} liters of fuel left."))
  }
  
  drive <- function(distance) {
    if (cur_cap <= 0) {
      print (str_interp("The ${col} car has no fuel left."))
    } else {
      consumption <- distance*fuel_con / 100
      if (consumption <= cur_cap) {
        print (str_interp("The ${col} car drove ${distance} km and used ${consumption} liters of fuel."))
        cur_cap <<- cur_cap - consumption
      } else {
        act_distance = cur_cap * 100 / fuel_con
        print (str_interp("The ${col} car could only drive ${act_distance} km!"))
        cur_cap <<- 0
      }
    }
  }
  
  list(show_info = show_info, 
       drive = drive)
}

c1 <- new_car(50, 5, "red")
c1$show_info()
c1$drive(100)
c1$show_info()
c1$drive(900)
c1$show_info()
c1$drive(1)

c2 <- new_car(20, 5, "blue")
c2$show_info()
c2$drive(1000)
c2$show_info()
