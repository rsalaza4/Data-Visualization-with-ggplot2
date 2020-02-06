### TIME SERIES PLOT FOR A MONTHLY TIME SERIES ###

# Import ggplot2 package
library(ggplot2)                                                

# Import lubridate package
library(lubridate)                                              

# Pre-set the black and white theme
theme_set(theme_bw())                                           

brks <-                                                         # specify the chart breaks (see example below)
lbls <- lubridate::year(brks)                                   # specify the chart labels (see example below)

ggplot(data = ,                                                 # load the data set
       aes(x = )) +                                             # set the x variable (must be in Date format)
  geom_line(aes(y = )) +                                        # set the y variable (must be numerical)
  labs(title = "",                                              # type in the plot title
       subtitle = "",                                           # type in the plot subtitlte
       caption = "",                                            # type in additional captions
       x = "",                                                  # type in the x-axis label
       y = "") +                                                # type in the y-axis label
  scale_x_date(labels = lbls,                                   # set labels = lbls
               breaks = brks) +                                 # set breaks = brks
  theme(axis.text.x = element_text(angle = ,                    # set the x-axis text angle
                                   vjust = ),                   # vjust shifts the x axis text vertically
        panel.grid.minor = element_blank())                     # do not modify this line of code

# EXAMPLE

library(ggplot2)
library(lubridate)
theme_set(theme_bw())

economics$returns_perc <- c(0,diff(economics$psavert)/economics$psavert[-length(economics$psavert)])

economics_y <- economics[1:90, ]

brks <- economics_y$date[seq(1, length(economics_y$date), 12)]
lbls <- lubridate::year(brks)

ggplot(data = economics_y,
       aes(x = date)) +
  geom_line(aes(y = returns_perc)) +
  labs(title = "Time Series Plot For a Yearly Time Series",
       subtitle = "Returns Percentaje from Economics Dataset",
       caption = "Source: Economics",
       x = "Date",
       y = "Returns %") +
  scale_x_date(labels = lbls,
               breaks = brks) +
  theme(axis.text.x = element_text(angle = 90,
                                   vjust = 0.5),
        panel.grid.minor = element_blank())
