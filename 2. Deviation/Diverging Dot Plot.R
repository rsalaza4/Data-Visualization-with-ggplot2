### DIVERGING DOT PLOT ###

# Import ggplot2 packge
library(ggplot2)                                                 

# Pre-set the black and white theme
theme_set(theme_bw())                                            

ggplot(data = ,                                                  # load the data set
       aes(x = ,                                                 # set the x variable (must be categoric of factor)
           y = ,                                                 # set the x variable (must be numeric)
           label = )) +                                          # set the label (same as y variable)
  geom_point(stat = 'identity',                                  # set stat = 'identity'
             aes(col = ),                                        # set the color of the points
             size = 6) +                                         # set the size of the points
  scale_color_manual(name = "",                                  # type in the color labels title
                     labels = c("", ""),                         # type in the color labels names
                     values = c(""="#00ba38", ""="#f8766d")) +   # type in the colors for the labels 
  geom_text(color = "black",                                     # type in the text color
            size = 2) +                                          # set the text color
  labs(title = "",                                               # type in the plot title
       subtitle = "") +                                          # type in the plot subtitle
  ylim(,) +                                                      # set the y-axis limits
  coord_flip()                                                   # specify coord_flip()

# EXAMPLE

library(ggplot2)
theme_set(theme_bw())

data("mtcars")
mtcars$car_name <- rownames(mtcars)
mtcars$mpg_z <- round((mtcars$mpg - mean(mtcars$mpg))/sd(mtcars$mpg), 2)
mtcars$mpg_type <- ifelse(mtcars$mpg_z < 0, "below", "above")
mtcars <- mtcars[order(mtcars$mpg_z), ]
mtcars$car_name <- factor(mtcars$car_name, levels = mtcars$car_name)

ggplot(data = mtcars, 
       aes(x = car_name,
           y = mpg_z,
           label = mpg_z)) + 
  geom_point(stat = 'identity',
             aes(col = mpg_type),
             size = 6) +
  scale_color_manual(name = "Mileage",
                     labels = c("Above Average", "Below Average"),
                     values = c("above"="#00ba38", "below"="#f8766d")) +
  geom_text(color = "black",
            size = 2) +
  labs(title = "Diverging Dot Plot",
       subtitle = "Normalized mileage from 'mtcars': Dotplot") +
  ylim(-2.5,2.5) +
  coord_flip()
       