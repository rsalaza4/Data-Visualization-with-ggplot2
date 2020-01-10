### MARGINAL HISTOGRAM, BOX PLOT & DENSITY PLOTS ###

# Import ggplot2 package
library(ggplot2)        

# Import ggExtra package
library(ggExtra)                                                

# Pre-set the black and white theme
theme_set(theme_bw())                                     

# Name and read the data set file
df <- read.csv()                                                

gg <- ggplot(df,                                                # name the plot and load data set
             aes(x = ,                                          # set the x variable
                 y = )) +                                       # set the y variable
  geom_count(col = "",                                          # set the points color 
             show.legend = F) +                                 # set the legend display (T or F)
  geom_smooth(method = "lm",                                    # set the smoothing line
              se = F) +                                         # set the confidence intervals (T or F)
  labs(title = )                                                # type in the plot title

# plot(ggMarginal(gg, type = "histogram", fill="transparent"))   # select in case of histogram
# plot(ggMarginal(g, type = "boxplot", fill="transparent"))      # select in case of boxplot
# plot(ggMarginal(g, type = "density", fill="transparent"))      # select in case of density

# EXAMPLE

library(ggplot2)
library(ggExtra)
theme_set(theme_bw())
df <- mpg

gg <- ggplot(data = df,
             aes(x = cty, 
                 y = hwy)) + 
  geom_count(col = "blue", 
             show.legend = F) + 
  geom_smooth(method = "lm", 
              se = F) +
  labs(title = "Marginal Plot")

plot(ggMarginal(gg, type = "histogram", fill = "transparent"))
#plot(ggMarginal(g, type = "boxplot", fill="transparent"))
#plot(ggMarginal(g, type = "density", fill="transparent"))
