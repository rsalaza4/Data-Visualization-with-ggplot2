### CALENDAR HEATMAP ###

# Import ggplot2 package   
library(ggplot2)                                     

# Import plyr package
library(plyr)                                        

# Import scales package
library(scales)                                      

# Import zoo package
library(zoo)                                         

# DATA FRAME PREPARATION (SEE EXAMPLE BELOW)

# df <- read.csv("")
# df$date <- as.Date(df$date)
# df <- df[df$year >= , ]

# df$yearmonth <- as.yearmon(df$date)
# df$yearmonthf <- factor(df$yearmonth)
# df <- ddply(df, .(yearmonthf), transform, monthweek = 1+week-min(week))
# df <- df[, c()]
# head(df)

ggplot(data = df,                                    # do not modify this line of code 
       aes(x = ,                                     # set the x variable (must be numerical)                           
           y = ,                                     # set the y variable (must be numerical)
           fill = )) +                               # set the fill varible (must be numerical)
  geom_tile(color = "white") +                       # do not modify this line of code 
  facet_grid(year ~ monthf) +                        # do not modify this line of code 
  scale_fill_gradient(low = "red",                   # set the low fill gradient color
                      high ="green") +               # set the high fill gradient color
  labs(x = "",                                       # type in the x-axis label
       y = "",                                       # type in the y-axis label
       title = "",                                   # type in the heatmap chart title
       subtitle = "",                                # type in the heatmap chart subtitle
       caption = "",                                 # type in additional captions
       fill = "")                                    # type in the fill bar title

# EXAMPLE

library(ggplot2)
library(plyr)
library(scales)
library(zoo)

df <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/yahoo.csv")
df$date <- as.Date(df$date)
df <- df[df$year >= 2012, ]

df$yearmonth <- as.yearmon(df$date)
df$yearmonthf <- factor(df$yearmonth)
df <- ddply(df, .(yearmonthf), transform, monthweek = 1+week-min(week))
df <- df[, c("year", "yearmonthf", "monthf", "week", "monthweek", "weekdayf", "VIX.Close")]
head(df)

ggplot(data = df, 
       aes(x = monthweek,
           y = weekdayf, 
           fill = VIX.Close)) + 
  geom_tile(color = "white") + 
  facet_grid(year~monthf) + 
  scale_fill_gradient(low = "red",
                      high ="green") +
  labs(x = "Week of Month",
       y = "Day of Week",
       title = "Calendar Heatmap", 
       subtitle = "Yahoo Closing Price",
       caption = "Source: https://raw.githubusercontent.com/selva86/datasets/master/yahoo.csv",
       fill = "Close")
