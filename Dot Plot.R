### DOT PLOT ###

# Before making the plot, sort the data with the "order" function.

# Import ggplot2 package
library(ggplot2)                      

# Import scales package
library(scales)                       

# Pre-set the classic theme
theme_set(theme_classic())            

ggplot(data = ,                       # load the data set
       aes(x = ,                      # set the x variable (must be categoric or factor)
           y = )) +                   # set the y variable (must be numeric)
  geom_point(col = "",                # type in the points color
             size = 3) +              # set the points size
  geom_segment(aes(x = ,              # set x = x variable
                   xend = ,           # set xend =  x variable
                   y = min(),         # set y = min(y variable)
                   yend = max()),     # set yend = max(y variable)
               linetype = "",         # type in the line type
               size = 0.1) +          # set the line size
  labs(title = "",                    # type in the plot title               
       subtitle = "",                 # type in the plot subtitle
       caption = "") +                # type in additional captions
  coord_flip()                        # specify coord_flip()

# EXAMPLE

cty_mpg <- aggregate(mpg$cty, by=list(mpg$manufacturer), FUN=mean)
colnames(cty_mpg) <- c("make", "mileage")
cty_mpg <- cty_mpg[order(cty_mpg$mileage), ]
cty_mpg$make <- factor(cty_mpg$make, levels = cty_mpg$make)
head(cty_mpg, 4)

library(ggplot2)
library(scales)
theme_set(theme_classic())

ggplot(data = cty_mpg,
       aes(x = make,
           y = mileage)) +
  geom_point(col = "tomato2",
             size = 3) +
  geom_segment(aes(x = make,
                  xend = make,
                  y = min(mileage),
                  yend = max(mileage)),
               linetype = "dashed",
               size = 0.1) +
  labs(title = "Dot Plot",
       subtitle = "Make Vs Avg. Mileage",
       caption = "Source: mpg") +
  coord_flip()
