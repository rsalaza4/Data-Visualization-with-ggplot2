### CORRELOGRAM ###

# Import ggplot2 package
library(ggplot2)                        

# Import ggcorrplot package
library(ggcorrplot)                                   

# Name and read the data set file
df <- read.csv()         

# Set correlation variable
corr <- round(cor(df), 1)                          

gg <- ggcorrplot(corr,                                # name the plot and load correlation set             
                 hc.order = TRUE,                     # hc.order refers to the plot correlation order
                 type = "lower",                      # type refers to the position of the points
                 lab = TRUE,                          # lab refers to the points labels with data
                 lab_size = 3,                        # lab_size refers to the labels size (circle or square)
                 method = "square",                   # method refers to the points shape
                 colors = c("red","white","green"),   # set a vector for the colors to be used
                 title = "",                          # type in the plot title
                 ggtheme = theme_bw())                # set ggtheme

# Print plot
print(gg)                                             

# EXAMPLE

library(ggplot2)
library(ggcorrplot)

corr <- round(cor(mtcars),1)

gg <- ggcorrplot(corr, 
           hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           lab_size = 3,
           method = "square",
           colors = c("red","white","green"),
           title = "Correlogram of mtcars",
           ggtheme = theme_bw())

print(gg)
