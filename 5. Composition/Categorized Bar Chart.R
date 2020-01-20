### CATEGORIZED BAR CHART ###

# Import ggplot2 package
library(ggplot2)                                    

# Pre-set the classic theme
theme_set(theme_classic())                          

gg <- ggplot(data = ,                               # name the chart variable and load data set
             aes(x = ))                             # set the x variable

gg + geom_bar(aes(fill = ),                         # type in the fill variable
              width = ) +                           # set the width of the bars
  theme(axis.text.x = element_text(angle = ,        # set the x axis text angle
                                   vjust = )) +     # vjust shifts the x-axis text vertically
  labs(title = "",                                  # type in the chart title
       subtitle = "",                               # type in the chart subtitle
       caption = "")                                # type in additional captions

# EXAMPLE

library(ggplot2)
theme_set(theme_classic())

gg <- ggplot(data = mpg,
             aes(x = manufacturer))

gg + geom_bar(aes(fill = class),
              width = 0.5) +
  theme(axis.text.x = element_text(angle = 65,
                                   vjust = 0.6)) +
  labs(title = "Categorized Bar Chart",
       subtitle = "Manufacturer of vehicles",
       caption = "Source: Manufacturers from 'mpg' dataset")
