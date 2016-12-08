### Visualization Exercises
### Wickham's R for Data Science
library(ggplot2)

## basics
?mpg

str(mpg)
mpg_plot <- ggplot(data = mpg) 
mpg_plot <- mpg_plot+ geom_point(mapping = aes(x = displ, y = hwy))
mpg_plot + geom_smooth(aes(x = displ, y = hwy), se= F)

# or
#mpg_plot <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) 
#mpg_plot <- mpg_plot+ geom_point()
#mpg_plot + geom_smooth(se= F)


factor(mpg$class)
nlevels(factor(mpg$class))

# Don't map unordered variable like mpg$class to ordered aes (size)
# Don't use size for discrete variables

ggplot(data = mpg) + geom_point(aes(x = displ, y = hwy, col = class), size = 4)
ggplot(data = mpg) + geom_point(aes(x = displ, y = hwy, alpha = class), size = 4)

# for each aesthetic, aes() associate name of the aes with the var to display for each layer mapping 

# manual aes setting (not converying info about var), it goes outside aes() arg
ggplot(data = mpg) + geom_point(aes(x = displ, y = hwy, alpha = class), shape = 18, size = 4, col = "blue")


# mapping continuous var to aes
ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy, col = displ), size = 4)

# I like this plot best
ggplot(data = mpg) + geom_point(aes(x = displ, y = hwy, col = class), size = 4)
ggplot(data = mpg) + geom_point(aes(x = displ, y = hwy, col = class, shape = factor(drv)), size = 4)

# condition from aes mapping
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, col = year > 1999)) + geom_point()


## Facets- for discrete data (chops up into data point if continuous used)
#nrow optional
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~class, nrow=2)
#empty cells mean there is no data satisfying both categories
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)
ggplot(data = mpg) + geom_point(mapping = aes(x = drv, y = factor(cyl)))

# for facet, ".~class" basically manes "~class"
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(.~ cyl)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv~.)


## Geometric objects
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))











