### SCATTERPLOT ###

# Turn off scientific notation    
options(scipen = 999)                         

# Import ggplot2 package
library(ggplot2)                              

# Pre-set the black and white theme
theme_set(theme_bw())           

# Name and read the data set file
df <- read.csv()                             

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
       x = "",                                # type in the x axis label
       y = "",                                # type in the y axis label
       caption = "Source: ")                  # type in additional captions

# Print plot  
plot(gg)                                      

# EXAMPLE

options(scipen = 999)                                   
library(ggplot2)
theme_set(theme_bw())                                    
data("midwest", package = "ggplot2")                         

gg <- ggplot(data = midwest,                              
             aes(x = area, 
                 y = poptotal)) +                  
  geom_point(aes(col = state, 
                 size = popdensity)) +           
  geom_smooth(method = "auto", 
              se = T) +
  xlim(c(0,0.1)) + 
  ylim(c(0,500000)) + 
  labs(subtitle = "Area Vs Population",
       x = "Area",
       x = "Population",
       title = "Scatterplot",
       caption = "Source: midwest")

plot(gg)
