### HISTORGRAM ON A CATEGORICAL VARIABLE ###

# Import ggplot2 package
library(ggplot2)                                     

# Pre-set the classic theme
theme_set(theme_classic())                           

g <- ggplot(data = ,                                 # name the plot variable and load data set
            aes())                                   # set the x variable

g + geom_bar(aes(fill = ),                           # type in the bin fill variable
             width = 0.5) +                          # set the bin width
  theme(axis.text.x = element_text(angle = 65,       # set the x-axis text angle
                                   vjust = 0.6)) +   # vjust shifts the x-axis text vertically
  labs(title = "",                                   # type in the plot title
       subtitle = "")                                # type in the plot subtitle

# EXAMPLE

library(ggplot2)
theme_set(theme_classic())

g <- ggplot(data = mpg,
            aes(manufacturer))

g + geom_bar(aes(fill = class),
             width = 0.5) +
  theme(axis.text.x = element_text(angle = 65,
                                   vjust = 0.6)) +
  labs(title = "Histogram on Categorical Variable",
       subtitle = "Manufacturer across Vehicles Classes")
