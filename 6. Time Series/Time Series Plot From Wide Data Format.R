### TIME SERIES PLOT FROM WIDE DATA FORMAT: DATA IN MULTIPLE COLUMNS OF DATAFRAME ###

# Import ggplot2 package
library(ggplot2)          

# Import lubridate package
library(lubridate)                                   

# Pre-set the black and white theme
theme_set(theme_bw())                                

df <- [,c("", "", "")]                                   # create a data frame filtered by columns
df <- df[lubridate::year(df$) %in% c(:), ]               # filter data frame for a specific time period

brks <- df$date[seq(1, length(df$), 12)]                 # specify the plot breaks (see example below)
lbls <- lubridate::year(brks)                            # specify the plot labels (see example below)

ggplot(data = df,                                        # do not modify this line of code 
       aes(x = )) +                                      # set the x variable (must be in Date format)
  geom_line(aes(y = , col = "")) +                       # set the y variable (must be numerical) and its color
  geom_line(aes(y = , col = "")) +                       # set the y variable (must be numerical) and its color
  labs(title = "",                                       # type in the plot title
       subtitle = "",                                    # type in the plot subtitle
       caption = "",                                     # type in additional captions
       x = "",                                           # type in the x-axis label
       y = "") +                                         # type in the y-axis label
  scale_x_date(labels = lbls,                            # set labels = lbls
               breaks = brks) +                          # set breaks = brks
  scale_color_manual(name = "",                          # do not modify this line of code
                     values = c("" = "#", "" = "#")) +   # type in the labels names and colors
  theme(panel.grid.minor = element_blank())              # do not modify this line of code

# EXAMPLE

library(ggplot2)
library(lubridate)
theme_set(theme_bw())

df <- economics[,c("date", "psavert", "uempmed")]
df <- df[lubridate::year(df$date) %in% c(1967:1981), ]

brks <- df$date[seq(1, length(df$date), 12)]
lbls <- lubridate::year(brks)

ggplot(data = df,
       aes(x = date)) +
  geom_line(aes(y = psavert, col = "psavert")) +
  geom_line(aes(y = uempmed, col = "uempmed")) +
  labs(title = "Time Series Plot From Wide Data Format",
       subtitle = "Drawn From Wide Data Format",
       caption = "Source: Economics",
       x = "Year",
       y = "Value") +
  scale_x_date(labels = lbls,
               breaks = brks) +
  scale_color_manual(name = "",
                     values = c("psavert" = "#00ba38", "uempmed" = "#f8766d")) +
  theme(panel.grid.minor = element_blank())
