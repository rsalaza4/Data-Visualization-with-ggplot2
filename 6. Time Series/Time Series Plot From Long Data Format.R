### TIME SERIES PLOT FROM LONG DATA FORMAT: MULTIPLE TIME SERIES IN SAME DATA FRAME COLUMN ###

# Import ggplot2 package
library(ggplot2)                                     

# Import lubridate package
library(lubridate)                                   

# Pre-set the black and white theme
theme_set(theme_bw())                                

df <- [$ %in% c("", ""), ]                           # create a data frame filtered by a categorical variable
df <- df[lubridate::year(df$) %in% c(:), ]           # filter data frame for a specific time period

brks <- df$[seq(1, length(df$), 12)]                 # specify the plot breaks (see example below) 
lbls <- lubridate::year(brks)                        # specify the plot labels (see example below)

ggplot(data = df,                                    # do not modify this line of code 
       aes(x = )) +                                  # set the x variable (must be in Date format)
  geom_line(aes(y = ,                                # set the y variable (must be numerical)
                col = )) +                           # set the color variable for each of the lines
  labs(title = "",                                   # type in the plot title
       subtitle = "",                                # type in the plot subtitle
       cpation = "",                                 # type in additional captions
       x = "",                                       # type in the x-axis title
       y = "",                                       # type in teh y-axis title
       caption = "",                                 # type in additional captions                 
       color = NULL) +                               # do not modify this line of code
  scale_x_date(labels = lbls,                        # set labels = lbls
               breaks = brks) +                      # set labels = lbls
  scale_color_manual(labels = c("",""),              # type in the labels names
                     values = c(""="", ""="")) +     # type in the colors for the labels
  theme(axis.text.x = element_text(angle = ,         # set the x-axis text angle
                                   vjust = ,         # vjust shifts the x-axis text vertically
                                   size = ),         # set the x-axis text size
        panel.grid.minor = element_blank())          # do not modify this line of code

# EXAMPLE

data("economics_long", package = "ggplot2")

library(ggplot2)
library(lubridate)
theme_set(theme_bw())

df <- economics_long[economics_long$variable %in% c("psavert", "uempmed"), ]
df <- df[lubridate::year(df$date) %in% c(1967:1981), ]

brks <- df$date[seq(1, length(df$date), 12)]
lbls <- lubridate::year(brks)

ggplot(data = df,
       aes(x = date)) +
  geom_line(aes(y = value,
                col = variable)) +
  labs(title = "Time Series Plot From Long Data Format",
       subtitle = "Drawn from Long Data Format",
       cpation = "Source: Economics_long",
       x = "Year",
       y = "Value",
       caption = "Source: Economics",
       color = NULL) +
  scale_x_date(labels = lbls,
               breaks = brks) +
  scale_color_manual(labels = c("psavert", "uempmed"),
                     values = c("psavert" = "#00ba38", "uempmed" = "#f8766d")) +
  theme(axis.text.x = element_text(angle = 90,
                                   vjust = 0.5,
                                   size = 8),
        panel.grid.minor = element_blank())
