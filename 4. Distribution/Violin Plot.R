### VIOLIN PLOT ###

# Import ggplot2 package
library(ggplot2)                   

# Pre-set the black and white theme
theme_set(theme_bw())                             

gg <- ggplot(data = ,                             # name the plot variable and load dataset
             aes(x = ,                            # set the x variable (must be categorical)
                 y = ))                           # set the y variable (must be numerical)

gg + geom_violin() +                              # apply the violin plot
  labs(title = "",                                # type in the plot title
       subtitle = "",                             # type in the plot subtitle
       x = "",                                    # type in the x-axis title
       y = "")                                    # type in the y-axis title

# EXAMPLE

library(ggplot2)
theme_set(theme_bw())

gg <- ggplot(data = mpg,
             aes(x = class,
                 y = cty))

gg + geom_violin() +
  labs(title = "Violin Plot",
       subtitle = "City Mileage vs Class of vehicle",
       caption = "Source: mpg",
       x = "Class of Vehicle",
       y = "City Mileage")
