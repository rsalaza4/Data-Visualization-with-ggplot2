### BOX PLOT ###

# Import ggplot2 package
library(ggplot2)                     

# Pre-set the classic theme
theme_set(theme_classic())

gg <- ggplot(data = ,                # name the plot variable and load data set
             aes(x = ,               # set the x variable (must be categorical)
                 y = ))              # set the y variable (must be numerical)

gg + geom_boxplot(varwidth = T,      # varwidth defines the width based on number of observations per class
                  fill = "") +       # type in the color fill of the boxes
  labs(title = "",                   # type in the plot title
       subtitle = "",                # type in the plot subtitle
       caption = "",                 # type in additional captions
       x = "",                       # type in the x-axis title
       y = "")                       # type in the y-axis title

# EXAMPLE

library(ggplot2)
theme_set(theme_classic())

gg <- ggplot(data = mpg,
             aes(x = class,
                 y = cty))

gg + geom_boxplot(varwidth = T,
                  fill = "light blue") +
  labs(title = "Box Plot",
       subtitle = "City Mileage grouped by Class of vehicle",
       caption = "Source: mpg",
       x = "Class of Vechicle",
       y = "City Mileage")
