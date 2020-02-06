### SEASONAL PLOT FROM A SUBSET OF A TIME SERIES OBJECT ###

# Import ggplot2 package 
library(ggplot2)                                     

# Import forecasr package 
library(forecast)                                    

# Pre-set the black and white theme
theme_set(theme_bw())                                

df <- read.csv("")                                       # load and name dat aset
df_subset <- window(df, start = c(, 1), end = c(, 12))   # type in the initial and final years on the vectors

ggseasonplot() +                                         # set the data set
  labs(title = "",                                       # type in the plot title
       subtitle = "",                                    # type in the plot subtitle
       x = "",                                           # type in the x-axis label
       y = "",                                           # type in the y-axis label
       caption = "")                                     # type in additional captions

# EXAMPLE

library(ggplot2)
library(forecast)
theme_set(theme_bw())

nottem_small <- window(nottem, start = c(1920, 1), end = c(1925, 12))

ggseasonplot(nottem_small) + 
  labs(title = "Seasonal Plot From a Subset of a Time Series Object",
       subtitle = "Air Temperatures at Nottingham Castle",
       x = "Month",
       y = "Temperature",
       caption = "Source: Nottem dataset")
