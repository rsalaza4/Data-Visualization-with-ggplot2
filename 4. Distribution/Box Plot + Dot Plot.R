### BOX PLOT + DOT PLOT ###

# Import ggplot2 package
library(ggplot2)                                  

# Pre-set the black and white theme
theme_set(theme_bw())                             

gg <- ggplot(data = ,                             # name the plot variable and load data set
             aes(x = ,                            # set the x variable (must be categorical)
                 y = ))                           # set the y variable (must be numerical)

gg + geom_boxplot() +                             # apply the boxplot
  geom_dotplot(binaxis = 'y',                     # do not modify this line of code
               stackdir = 'center',               # do not modify this line of code
               dotsize = 0.5,                     # set the dot size
               fill = '') +                       # type in the dots fill color
  theme(axis.text.x = element_text(angle = ,      # set the x-axis text angle
                                   vjust = )) +   # vjust shifts the x-axis text vertically
  labs(title = "",                                # type in the plot title
       subtitle = "",                             # type in the plot subtitle
       x = "",                                    # type in the x-axis title
       y = "")                                    # type in the y-axis title

# EXAMPLE

library(ggplot2)
theme_set(theme_bw())

gg <- ggplot(data = mpg,
             aes(x = manufacturer,
                 y = cty))

gg + geom_boxplot() +
  geom_dotplot(binaxis = 'y',
               stackdir = 'center',
               dotsize = 0.5,
               fill = 'red') +
  theme(axis.text.x = element_text(angle = 65,
                                   vjust = 0.6)) +
  labs(title = "Box plot + Dot plot",
       subtitle = "City Mileage vs Class: Each dot represents 1 row in source data",
       caption = "Source: mpg",
       x = "Class of Vehicle",
       y = "City Mileage")
