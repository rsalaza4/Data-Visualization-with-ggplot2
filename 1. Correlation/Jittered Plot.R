### JITTER PLOT ###

# Import ggplot2 package
library(ggplot2)                              

# Pre-set the black and white theme
theme_set(theme_bw())                       

# Name and read the data set file
df <- read.csv()                            

gg <- ggplot(data = df,                       # name the plot and load data set
             aes(x = ,                        # set the x variable
                 y = )) +                     # set the y variable
  geom_jitter(width = 0.5,                    # set the points width     
              size = 1) +                     # set the points size
  geom_smooth(method = "auto",                # set the smoothing line
              se = F) +                       # set the confidence intervals
  labs(title = "",                            # type in the plot tile
       subtitle = "",                         # type in the plot subtitle
       x = "",                                # type in the x-axis label
       y = "",                                # type in the y-axis label
       caption = "Source: ") +                # type in additional captions

# Print plot  
print(gg)                                     

# EXAMPLE

library(ggplot2)
library(plotly)
theme_set(theme_bw())                         
df <- mpg

gg <- ggplot(df, aes(x = cty, 
                     y = hwy)) +
  geom_jitter(width = 0.5, 
              size = 1) + 
  geom_smooth(method = "auto", 
              se = F) +
  labs(title = "Jittered Points",
       subtitle = "mpg: city vs highway mileage",
       x = "cty",
       y = "hwy",
       caption = "Source: mpg data set")

print(gg)
