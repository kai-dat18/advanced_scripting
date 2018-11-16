mynumbers <- 1:50
b <- mynumbers[mynumbers < 10]
c <- mynumbers[mynumbers >= 37]
d <- mynumbers[mynumbers >= 20 &  mynumbers < 27]
e <- mynumbers[mynumbers < 20 |  mynumbers >= 27]
f <- mynumbers[mynumbers %% 2 == 0]
g <- mynumbers[mynumbers %% 4 == 2 | mynumbers %% 4 == 3]

