### DIVERGING LOLLIPOP CHART ###

# Import ggplot2 package
library(ggplot2)                              

# Pre-set the black and white theme
theme_set(theme_bw())                         

ggplot(data = ,                               # load the data set 
       aes(x = ,                              # set the x variable (must be categoric of factor)
           y = ,                              # set the x variable (must be numeric)   
           label = )) +                       # set the label (same as y variable)
  geom_point(stat = 'identity',               # set stat = 'identity'
             fill = "black",                  # type in the points fill color
             size = 6)  +                     # set the points size
  geom_segment(aes(y = 0,                     # set y = 0 
                   x = ,                      # set x = x variable
                   yend = ,                   # set yend = y variable
                   xend = ),                  # set xend = x variable
                   color = "black") +         # type in the segment color
  geom_text(color = "white",                  # type in the text color
            size = 2) +                       # set the text size
  labs(title = "",                            # type in the chart title
       subtitle = "") +                       # type in the chart subtitle
  ylim(,) +                                   # set the y-axis limits
  coord_flip()                                # specify coord_flip()

# EXAMPLE

library(ggplot2)
theme_set(theme_bw())

data("mtcars")
mtcars$car_name <- rownames(mtcars)
mtcars$mpg_z <- round((mtcars$mpg - mean(mtcars$mpg))/sd(mtcars$mpg), 2)
mtcars$mpg_type <- ifelse(mtcars$mpg_z < 0, "below", "above")
mtcars <- mtcars[order(mtcars$mpg_z), ]
mtcars$car_name <- factor(mtcars$car_name, levels = mtcars$car_name)

ggplot(data = mtcars,
       aes(x = car_name,
           y = mpg_z,
           label = mpg_z)) + 
  geom_point(stat = 'identity',
             fill = "black",
             size = 6)  +
  geom_segment(aes(y = 0, 
                   x = car_name, 
                   yend = mpg_z, 
                   xend = car_name), 
                   color = "black") +
  geom_text(color = "white",
            size = 2) +
  labs(title = "Diverging Lollipop Chart", 
       subtitle = "Normalized mileage from 'mtcars': Lollipop") + 
  ylim(-2.5, 2.5) +
  coord_flip()
