### DUMBBELL PLOT ###

# In order to get the correct ordering of the dumbbells, the y variable should be a factor and the
# levels of the factor variables should be in the same order as it would appear in the plot.

# Import ggplot2 package
library(ggplot2)                                                                     

# Import ggalt package
library(ggalt)  

# Pre-set the classic theme
theme_set(theme_classic())

# Load data set and name it df
df <- read.csv()                                                                     

# Convert y varibale into factor
df$(#y variable) <- factor(df$(y variable), levels=as.character(df$(y variable)))    

gg <- ggplot(data = df,                                                              # load the data set
             aes(x = ,                                                               # set the x variable initial time (must be numeric)
                 xend = ,                                                            # set the x variable final time (must be numeric)
                 y = ,                                                               # set the y variable (must be categoric or factor)
                 group = )) +                                                        # set the group (same as y variable) 
  geom_dumbbell(color = "blue",                                                      # type in the color of the dumbbell
                size = 0.75) +                                                       # set the size of the dumbbell
  scale_x_continuous() +                                                             # set the x-axis scale to be comtinuous
  labs(x = "",                                                                       # type in the x-axis title
       y = "",                                                                       # type in the y-axis title
       title = "",                                                                   # type in the plot title
       subtitle = "",                                                                # type in the plot subtitle
       caption = "") +                                                               # type in additional captions
  theme(plot.title = element_text(hjust = 0.5, face = "bold"),                       # set hjust = 0.5 and face = "bold"
        plot.background = element_rect(fill = "#f7f7f7"),                            # type in the plot background fill color
        panel.background = element_rect(fill = "#f7f7f7"),                           # type in the panel background fill color
        panel.grid.minor = element_blank(),                                          # do not modify this line of code (simply esthetic)
        panel.grid.major.y = element_blank(),                                        # do not modify this line of code (simply esthetic)
        panel.grid.major.x= element_line(),                                          # do not modify this line of code (simply esthetic)
        axis.ticks = element_blank(),                                                # do not modify this line of code (simply esthetic)
        legend.position = "top",                                                     # do not modify this line of code (simply esthetic)
        panel.border = element_blank())                                              # do not modify this line of code (simply esthetic)

# Print plot 
plot(gg)                                                                               

# EXAMPLE

library(ggplot2)
library(ggalt)
theme_set(theme_classic())

health <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/health.csv")
health$Area <- factor(health$Area, levels=as.character(health$Area))

gg <- ggplot(data = health,
             aes(x = pct_2013,
                 xend = pct_2014,
                 y = Area,
                 group = Area)) + 
  geom_dumbbell(color = "blue", 
                size = 0.75) + 
  scale_x_continuous() + 
  labs(x = NULL, 
       y = NULL, 
       title = "Dumbbell Chart", 
       subtitle = "Pct Change: 2013 vs 2014", 
       caption = "Source: https://github.com/hrbrmstr/ggalt") +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"),
        plot.background = element_rect(fill = "#f7f7f7"),
        panel.background = element_rect(fill = "#f7f7f7"),
        panel.grid.minor = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.major.x= element_line(),
        axis.ticks = element_blank(),
        legend.position = "top",
        panel.border = element_blank())

plot(gg)
