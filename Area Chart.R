### AREA CHART ###

library(ggplot2)                                    # import ggplot2 package
library(quantmod)                                   # import quantmod package

brks <-                                             # specify the chart breaks (see example below)
lbls <-                                             # specify the chart labels (see example below)
  
ggplot(data = ,                                     # load the data set
         aes(x = ,                                  # set the x variable
             y = )) +                               # set the y variable
  geom_area() +                                     # set geom_area
  scale_x_date(breaks = brks,                       # set breaks = brks
               labels = lbls) +                     # set labels = lbls
  theme(axis.text.x = element_text(angle = 0)) +    # set the x axis text angle
  labs(title = "",                                  # type in the chart title
       subtitle = "",                               # type in the chart subtitle
       x = "",                                      # type in the x-axis label
       y = "",                                      # type in the y-axis label
       caption = "")                                # type in additional captions

# EXAMPLE

library(ggplot2)
library(quantmod)
data("economics", package = "ggplot2")

economics$returns_perc <- c(0,diff(economics$psavert)/economics$psavert[-length(economics$psavert)])

brks <- economics$date[seq(1, length(economics$date), 12)]
lbls <- lubridate::year(economics$date[seq(1,length(economics$date), 12)])

ggplot(data = economics[1:100,],
       aes(x = date,
           y = returns_perc)) +
  geom_area() +
  scale_x_date(breaks = brks,
               labels = lbls) +
  theme(axis.text.x = element_text(angle = 0)) +
  labs(title = "Area Chart",
       subtitle = "Perc Returns for Personal Savings",
       x = "Date",
       y = "% Returns for Personal savings",
       caption = "Source: economics")
