### DIVERGING BARS ###

# Import ggplot2 package
library(ggplot2)                                            

# Pre-set the black and white theme
theme_set(theme_bw())                                                

ggplot(data = ,                                                       # load the data set                
       aes(x = ,                                                      # set the x variable (must be categoric of factor)
           y = )) +                                                   # set the y variables (must be numeric)
  geom_bar(stat = 'identity',                                         # set stat = 'identity'
           aes(fill = ),                                              # set fill from a data set column
           width = .5) +                                              # set the bars width
  scale_fill_manual(name = "",                                        # type in the fill bar title
                    labels = c("", ""),                               # type in the labels names
                    values = c("" = "#00ba38", "" = "#f8766d")) +     # type in the colors for the labels 
  labs(title = "",                                                    # type in the chart title
       subtitle = "Diverging Bars") +                                 # type in the chart subtitle
  coord_flip()                                                        # specify coord_flip()

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
           y = mpg_z)) + 
  geom_bar(stat = 'identity',
           aes(fill = mpg_type),
           width = .5)  +
  scale_fill_manual(name = "Mileage", 
                    labels = c("Above Average", "Below Average"), 
                    values = c("above"="#00ba38", "below"="#f8766d")) + 
  labs(title = "Diverging Bars",
       subtitle = "Normalised mileage from 'mtcars'") + 
  coord_flip()
