### TIME SERIES PLOT FROM A DATA FRAME ###

# Import ggplot2 package
library(ggplot2)                               

# Pre-set the classic theme
theme_set(theme_classic())                     

ggplot(data = ,                                # type in the data set name
       aes(x = )) +                            # set the x variable (must be in Date format)
  geom_line(aes(y = )) +                       # set the y variable (must be numerical)
  labs(title = "",                             # type in the plot title
       subtitle = "",                          # type in the plot subtitle
       caption = "",                           # type in additional captions
       x = "",                                 # type in the x-axis label
       y = "")                                 # type in the y-axis label

# EXAMPLE

library(ggplot2)
theme_set(theme_classic())

economics$returns_perc <- c(0, diff(economics$psavert)/economics$psavert[-length(economics$psavert)])

ggplot(data = economics,
       aes(x = date)) +
  geom_line(aes(y = returns_perc)) +
  labs(title = "Time Series Plot From a Data Frame",
       subtitle = "Returns Percentage from 'Economics' Dataset",
       caption = "Suorce: Economics",
       x = "Date",
       y = "Returns %")
