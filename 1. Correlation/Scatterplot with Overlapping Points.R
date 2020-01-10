### SCATTERPLOT WITH OVERLAPPING POINTS ###

# Import ggplot2 package
library(ggplot2)                                  

# Pre-set the black and white theme  
theme_set(theme_bw())                               

# Name and read the data set file
df <- read.csv()  

g <- ggplot(data = df,                            # name the plot and load data set
            aes(x = ,                             # et the x variable
                y = ))                            # sSet the y variable

g + geom_point() +                                # specify geom_point()
  geom_smooth(method = "lm",                      # set the smoothing line
              se = T) +                           # set the confidence intervals (T or F)
  labs(title = "",                                # type in the plot title
       subtitle = "",                             # type in the plot subtitle
       x = "",                                    # type in x-axis label
       y = "",                                    # type in y-axis label
       caption = "")                              # type in additional captions

# EXAMPLE

library(ggplot2)
data(mpg, package = "ggplot2")
theme_set(theme_bw())

g <- ggplot(data = mpg,
            aes(x = cty,
                y = hwy))

g + geom_point() +
  geom_smooth(method = "lm",
              se = T) +
  labs(title = "Scatterplot with Overlapping Points",
       subtitle = "Mpg: city vs mileage",
       x = "cty",
       y = "hwy",
       caption = "Source: mpg dataset")
