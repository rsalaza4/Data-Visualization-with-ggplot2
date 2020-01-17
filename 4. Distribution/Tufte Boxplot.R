### TUFTE BOXPLOT ###

# Import ggthemes package
library(ggthemes)                                 

# Import ggplot2 package
library(ggplot2)                                  

# Pre-set tufte theme
theme_set(theme_tufte())                          

gg <- ggplot(data = ,                             # name the plot variable and load data set
             aes(x = ,                            # set the x variable (must be categorical)
                 y = ))                           # set the y variable (must be numerical)

gg + geom_tufteboxplot() +                        # apply the tufte boxplot
  theme(axis.text.x = element_text(angle = ,      # set the x-axis text angle
                                   vjust = )) +   # vjust shifts the x-axis text vertically
  labs(title = "",                                # type in the plot title
       subtitle = "",                             # type in the plot subtitle
       x = "",                                    # type in the x-axis title
       y = "")                                    # type in the y-axis title

# EXAMPLE

library(ggthemes)
library(ggplot2)
theme_set(theme_tufte())

gg <- ggplot(data = mpg,
             aes(x = manufacturer,
                 y = cty))

gg + geom_tufteboxplot() +
  theme(axis.text.x = element_text(angle = 65,
                                    vjust = 0.6)) +
  labs(title = "Tufte Boxplot",
       subtitle = "City Mileage grouped by Class of vechicle",
       caption = "Source: mpg",
       x = "Class of Vehicle",
       y = "City Mileage")
