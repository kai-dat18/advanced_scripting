carname <- rownames( datasets :: mtcars )
weight_kg <- datasets :: mtcars$wt * 1000 * 0.453592
displacement_cm3 <- datasets :: mtcars$ disp * 16.3871
n_cylinder <- datasets :: mtcars$cyl

ma <- max(weight_kg)
ma
carname[weight_kg == ma]

mi <- min(weight_kg)
mi
carname[weight_kg == mi]

me <- mean(weight_kg)
me
carname[which.min(abs(weight_kg - me))]

carname[displacement_cm3 == max(displacement_cm3)]
 
dpc = displacement_cm3 / n_cylinder
carname[dpc == max(dpc)]
 
cyl8 <- n_cylinder[n_cylinder == 8]
length(cyl8) / length(n_cylinder) * 100
