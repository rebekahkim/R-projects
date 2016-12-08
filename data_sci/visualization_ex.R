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
ggplot(data = mpg) + 
    geom_point(
      mapping = aes(x = displ, y = hwy)
    ) +
    geom_smooth(
      mapping = aes(x = displ, y = hwy, linetype = drv)
    )

# same as
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(
    mapping = aes(group = drv)
  )

#filtering data
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  # filter data
  geom_smooth(data = filter(mpg, class == "subcompact"), se = F)

#line chart
ggplot(data = filter(mpg, year == 1999), mapping = aes(x = displ, y = hwy)) +
  geom_line()

#boxplot
ggplot(data = mpg, mapping = aes(x = factor(year), y = displ)) +
  geom_boxplot()

#histogram
ggplot(data = mpg, mapping = aes(x = hwy)) +
  geom_histogram(binwidth = 1)

#area chart
ggplot(data = mpg, mapping = aes(x = displ, fill = factor(cyl))) +
  geom_area(stat="bin", binwidth = 0.25)
  
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = F) +
  # remove color legend
  #guides(color = F)
  #remove all legend
  theme(legend.position="none")
  
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  #geom_smooth(color = "blue", se =F)
  geom_smooth(aes(group = drv), color = "blue", se= F)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(aes(color = drv)) +
  #geom_smooth(color = "blue", se =F)
  #geom_smooth(se= F)
  geom_smooth(aes(linetype = drv), se= F)

#statistical transformations
str(diamonds)

#bar graph
ggplot(data = diamonds)+
  geom_bar(mapping =aes(x = cut))
  #same as
  stat_count(aes(x=cut))

#looking at proportions
ggplot(data = diamonds) +
  geom_bar(mapping= aes(x = cut, y =..prop.., group =1))

#stat summary
ggplot(data = diamonds) +
  stat_summary(
    mapping= aes(x=cut, y= depth),
      fun.ymin = min,
      fun.ymax = max,
      fun.y = median,
      geom = "crossbar"
  )

#geom_col for having heights of bars that represent values in data
ggplot(data = diamonds, aes(x = cut, y = carat))+
  geom_col() # ??? quite not sure what happens exactly

#unfinished exercise
#??? Most geoms and stats come in pairs that are almost always used in concert. 
#??? Read through the documentation and make a list of all the pairs. What do they have in common?

ggplot(data = diamonds, aes(x = carat, y = log(price)))+
  geom_point()+
  geom_smooth()
  #stat_smooth()

#need to set group = 1 because (see below 2 plots)
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = ..prop..))


#group `````````````








