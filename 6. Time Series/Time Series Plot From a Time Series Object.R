### TIME SERIES PLOT FROM A TIME SERIES OBJECT (TS) ###

# Import ggplot2 package
library(ggplot2)                               

# Import ggfortify package
library(ggfortify)                             

# Pre-set the classic theme
theme_set(theme_classic())                     

autoplot() +                                   # type in the data set name
  labs(title = "",                             # type in the plot title
       subtitle = "",                          # type in the plot subtitle
       x = "",                                 # type in the x-axis label
       y = "",                                 # type in the y-axis label
       caption = "") +                         # type in additional captions
  theme(plot.title = element_text(hjust = ))   # hjust displays the text horizontally

# EXAMPLE

library(ggplot2)
library(ggfortify)
theme_set(theme_classic())

autoplot(AirPassengers) +
  labs(title = "Time Series Plot From a Time Series Object (ts)",
       subtitle = "",
       x = "Years",
       y = "Count",
       caption = "Source: AirPassengers dataset") +
  theme(plot.title = element_text(hjust = 0.5))
