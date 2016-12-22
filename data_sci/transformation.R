### DATA TRANSFORMATION
library(nycflights13)

#filter
filter(flights, month == 10, day ==6)

#watch out with floating-point numbers
sqrt(2)^2 == 2
1/49 *49 == 1

#use near()
near(sqrt(2)^2, 2)
near(1/49 *49, 1)