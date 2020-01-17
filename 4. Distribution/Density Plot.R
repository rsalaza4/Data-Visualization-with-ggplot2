### DENSITY PLOT ###

# Import ggplot2 package
library(ggplot2)                           

# Pre-set the classic theme
theme_set(theme_classic())                 

g <- ggplot(data = ,                       # name the plot variable and load data set
            aes())                         # set the x variable

g + geom_density(aes(fill = factor()),     # type in the bin fill variable
                 alpha = ) +               # set an alpha value
  labs(title = "",                         # type in the plot title
       subtitle = "",                      # type in the plot subtitle
       caption = "",                       # type in additional captions
       x = "",                             # type in the x-axis title
       fill = "")                          # type in the fill label title

# EXAMPLE

library(ggplot2)
theme_set(theme_classic())

g <- ggplot(data = mpg,
            aes(cty))

g + geom_density(aes(fill = factor(cyl)),
                 alpha = 0.8) +
  labs(title = "Density Plot",
       subtitle = "City Mileage Grouped by Number of Cylinders",
       caption = "Source: mpg",
       x = "City Mileage",
       fill = "# Cylinders")
