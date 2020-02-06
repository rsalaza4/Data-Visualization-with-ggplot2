### SEASONAL PLOT FROM A COMPLETE TIME SERIES OBJECT ###

# Import ggplot2 package
library(ggplot2)                                    

# Import forecast package
library(forecast)                                    

# Pre-set the black and white theme
theme_set(theme_bw())                                

ggseasonplot() +                  # set the dataset
  labs(title = "",                # type in the plot title
       subtitle = "",             # type in the plot subtitle
       x = "",                    # type in the x-axis label
       y = "",                    # type in the y-axis label
       caption = "")              # type in additional captions

# EXAMPLE

library(ggplot2)
library(forecast)
theme_set(theme_bw())

ggseasonplot(AirPassengers) + 
  labs(title = "Seasonal Plot From a Complete Time Series Object",
       subtitle = "International Airline Passengers",
       x = "Month",
       y = "Passengers",
       caption = "Source: AirPassengers dataset")
