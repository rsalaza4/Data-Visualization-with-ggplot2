### BOX PLOT - FILLED BY FACTOR ###

# Import ggplot2 package
library(ggplot2)                                 

# Pre-set the classic theme
theme_set(theme_classic())                       

gg <- ggplot(data = ,                             # name the plot variable and load data set
             aes(x = ,                            # set the x variable (must be categorical)
                 y = ))                           # set the y variable (must be numerical)

gg + geom_boxplot(aes(fill = factor())) +         # type in the fill variable (factor)
  theme(axis.text.x = element_text(angle = ,      # set the x-axis text angle
                                   vjust = )) +   # vjust shifts the x-axis text vertically
  labs(title = "",                                # type in the plot title
       subtitle = "",                             # type in the plot subtitle
       x = "",                                    # type in the x-axis title
       y = "")                                    # type in the y-axis title

# EXAMPLE

library(ggplot2)
theme_set(theme_classic())

gg <- ggplot(data = mpg,
             aes(x = class,
                 y = cty))

gg + geom_boxplot(aes(fill = factor(cyl))) +
  theme(axis.text.x = element_text(angle = 65,
                                   vjust = 0.6)) +
  labs(title = "Box Plot Filled by Factor",
       subtitle = "City Mileage grouped by Class of vehicle",
       x = "Class of Vechicle",
       y = "City Mileage")
