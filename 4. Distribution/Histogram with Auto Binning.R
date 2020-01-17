### HISTORGRAM WITH AUTO BINNING ###

# Import ggplot2 package
library(ggplot2)  

# Pre-set the black and white theme
theme_set(theme_bw())                         

gg <- ggplot(data = ,                         # name the plot variable and load data set
             aes()) +                         # set the x variable
  scale_fill_brewer(palette = "Spectral")     # type in the pallete style

gg + geom_histogram(aes(fill = ),             # type in the bin fill variable
                    binwidth = ,              # set the bin width (same scale as used in data frame)
                    col = "black",            # type in the bin border color
                    size = 0.1) +             # set the bin border width
  labs(title = "",                            # type in the plot title
       subtitle = "")                         # type in the plot subtitle

# EXAMPLE

library(ggplot2)
theme_set(theme_bw())

gg <- ggplot(data = mpg,
             aes(displ)) +
  scale_fill_brewer(palette = "Spectral")

gg + geom_histogram(aes(fill = class),
                    binwidth = .1,
                    col = "black",
                    size = 0.1) + 
  labs(title = "Histogram with Auto Binning",
       subtitle = "Engine Displacement across Vehicle Classes")
