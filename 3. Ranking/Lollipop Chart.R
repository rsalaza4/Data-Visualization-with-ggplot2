### LOLLIPOP CHART ###

# Before making the chart, sort the data with the "order" function.

# Import ggplot2 package
library(ggplot2)                                    

# Pre-set the black and white theme
theme_set(theme_bw())                               

ggplot(data = ,                                     # load the data set
       aes(x = ,                                    # set the x variable (must be categoric or factor)
           y = )) +                                 # set the y variable (must be numeric)
  geom_point(size = 3) +                            # set the points size
  geom_segment(aes(x = ,                            # set x = x variable
                   xend = ,                         # set xend = x variable
                   y = 0,                           # set y = 0
                   yend = )) +                      # set yend =  y variable
  labs(title = "",                                  # type in the chart title
       subtitle = "",                               # type in the chart subtitle
       caption = "") +                              # type in additional captions
  theme(axis.text.x = element_text(angle = 65,      # set the text on x-axis angle
                                   vjust = 0.6))    # set the text on x-axis distance from axis

# EXAMPLE

cty_mpg <- aggregate(mpg$cty, by=list(mpg$manufacturer), FUN=mean)
colnames(cty_mpg) <- c("make", "mileage")
cty_mpg <- cty_mpg[order(cty_mpg$mileage), ]
cty_mpg$make <- factor(cty_mpg$make, levels = cty_mpg$make)
head(cty_mpg, 4)

library(ggplot2)
theme_set(theme_bw())

ggplot(data = cty_mpg,
        aes(x = make,
            y = mileage)) +
  geom_point(size = 3) +
  geom_segment(aes(x = make,
                   xend = make,
                   y = 0,
                   yend = mileage)) +
  labs(title = "Lollipop Chart",
       subtitle = "Make Vs Avg. Mileage",
       caption = "Source: mpg") + 
  theme(axis.text.x = element_text(angle = 65, vjust = 0.6))
