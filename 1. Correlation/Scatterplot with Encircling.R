### SCATTERPLOT WITH ENCIRCLING ###

# Turn off scientific notation 
options(scipen = 999)                         

# Import ggplot2 package
library(ggplot2)                              

# Import ggalt package
library(ggalt)                                

# Pre-set the black and white theme
theme_set(theme_bw())                         

# Name and read the data set file
df <- read.csv()                              

df_select <- df[df$(#y_variable) >  &         # create selection variable to be encircled and set y variable minumum
                  df$(#y_variable) < &        # set y variable maximum
                  df$(#x_variable) >  &       # set x variable minimum 
                  df$(#x_variable) < ,]       # set x varibale maximum

gg <- ggplot(data = df,                       # name the plot and load data set
             aes(x = ,                        # set the x variable
                 y = )) +                     # set the y variable         
  geom_point(aes(col = ,                      # set the points color
                 size = )) +                  # set the points size 
  geom_smooth(method = "auto",                # set the smoothing line
              se = F) +                       # set the confidence intervals (T or F)
  xlim(c(,)) +                                # set the x limits 
  ylim(c(,)) +                                # set the y limits 
  labs(title = "",                            # type in the plot title
       subtitle = "",                         # type in the plot subtitle
       x = "",                                # type in the x-axis label
       y = "",                                # type in the y-axis label
       caption = "Source: ") +                # type in additional captions
  geom_encircle(aes(x = , y = ),              # set the corresponding variables on the axes
                data = df_select,             # set the data frame to be encircled
                color = 'red',                # set the circle color
                size = 2,                     # set the circle size
                expand = 0.1)                 # set the circle area

# Print plot  
plot(gg)                                      

# EXAMPLE

options(scipen = 999)                                   
library(ggplot2)                              
library(ggalt)
theme_set(theme_bw())
data("midwest",package="ggplot2") 

midwest_select <- midwest[midwest$poptotal > 350000 &
                            midwest$poptotal <= 500000 &
                            midwest$area > 0.01 &
                            midwest$area < 0.1,]

gg <- ggplot(data = midwest,                              
             aes(x = area, 
                 y = poptotal)) +                  
  geom_point(aes(col = state, 
                 size = popdensity)) +           
  geom_smooth(method = "auto", 
              se = F) +
  xlim(c(0,0.1)) + 
  ylim(c(0,500000)) + 
  geom_encircle(aes(x = area, 
                    y = poptotal),
                data = midwest_select,
                color = 'red',
                size = 2,
                expand = 0.05) +
  labs(subtitle = "Area Vs Population",
       x = "Area",
       y = "Population",
       title = "Scatterplot + Encircle",
       caption = "Source: midwest")

plot(gg)
