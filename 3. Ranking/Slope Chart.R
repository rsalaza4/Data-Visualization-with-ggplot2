### SLOPE CHART ###

# This type of chart is useful when comparing the increase/decrease of a value between a period of time.

# Load a data set and name it as df
df <- read.csv("")                

# Change the data set column names
colnames(df) <- c("","","")                                                     

# Create a variable for the left labels
left_label <- paste(df$, round(df$``), sep =", ")                               

# Create a variable for the right labels
right_label <- paste(df$, round(df$`1957`), sep =", ")                          

# Create a new column named "class"
df$class <- ifelse((df$`` - df$``) < 0, "red", "green")                         

# Import ggplot2 package
library(ggplot2)       

# Import scales package
library(scales)            

# Pre-set the classic theme
theme_set(theme_classic())                                                      

pp <- ggplot(data = ) +                                                         # load the datas et
  geom_segment(aes(x = 1,                                                       # set x = 1 for lines segments
                   xend = 2,                                                    # set xend = 2 for lines segments
                   y = ``,                                                      # type in the initial time (name of column)
                   yend = ``,                                                   # type in the final time (name of column)
                   col = ),                                                     # set the color of the lines segments
               size = 0.75,                                                     # set the size of the line segments
               show.legend = T) +                                               # set the legend display
  geom_vline(xintercept = 1,                                                    # set the intercept of the first line
             linetype = "dashed",                                               # set the line type of the first line
             size = 0,1) +                                                      # set the size of the first line     
  geom_vline(xintercept = 2,                                                    # set the intercept of the second line
             linetype = "dashed",                                               # set the line type of the second line
             size = 0.1) +                                                      # set the size of the second line 
  scale_color_manual(labels = c("Up", "Down"),                                  # type in the labels names
                     values = c("green" = "#00ba38", "red" = "#f8766d")) +      # type in the colors for the labels
  labs(title = "",                                                              # type in the chart title
       subtitle = "",                                                           # type in the chart subtitle
       x = "",                                                                  # type in the x-axis title
       y = "",                                                                  # type in the y-axis title
       caption = "") +                                                          # type in additional captions
  xlim(0.5, 2.5) +                                                              # set the x-axis limits
  ylim(0,(1.1*(max(df$``,df$``))))                                              # set the y-axis limits

pp <- pp + geom_text(label = left_label,                                        # set the labels for the left line (initial time) 
                     y = df$``,                                                 # set y = df$(initial time column)
                     x = rep(1, NROW(df)),                                      # set x = rep(1, NROW(df))
                     hjust = 1.1,                                               # hjust shifts the labels on the x-axis
                     size = 3.5)                                                # set the size of the left labels

pp <- pp + geom_text(label = right_label,                                       # set the labels for the right line (right time)
                     y = df$``,                                                 # set y = df$(final time column)
                     x = rep(2, NROW(df)),                                      # set x = rep(2, NROW(df))
                     hjust = -0.1,                                              # hjust shifts the labels on the x-axis
                     size = 3.5)                                                # set the size of the left labels

pp <- pp + geom_text(label = "",                                                # type in the initial time
                     x = 1,                                                     # set x = 1
                     y = 1.1*(max(df$``,df$``)),                                # set y = 1.1+(max(df$(initial time column),df$(final time column)))
                     hjust = 1.2,                                               # hjust shifts the labels on the x-axis
                     size = 5)                                                  # set the size of the initial time title

pp <- pp + geom_text(label = "",                                                # type in the final time
                     x = 2,                                                     # set x = 2
                     y = 1.1*(max(df$``,df$``)),                                # set y = 1.1+(max(df$(initial time column),df$(final time column)))
                     hjust = -0.1,                                              # hjust shifts the labels on the x-axis
                     size = 5)                                                  # set the size of the final time title

# Print chart
plot(pp)                                                                        

# EXAMPLE

library(ggplot2)
library(scales)
theme_set(theme_classic())

df <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/gdppercap.csv")
colnames(df) <- c("continent","1952","1957")
left_label <- paste(df$continent, round(df$`1952`), sep =", ")
right_label <- paste(df$continent, round(df$`1957`), sep =", ")
df$class <- ifelse((df$`1957` - df$`1952`) < 0, "red", "green")

pp <- ggplot(data = df) +
  geom_segment(aes(x = 1,
                   xend = 2,
                   y = `1952`,
                   yend = `1957`,
                   col = class),
               size = 0.75,
               show.legend = F) +
  geom_vline(xintercept = 1,
             linetype = "dashed",
             size = 0,1) +
  geom_vline(xintercept = 2,
             linetype = "dashed",
             size = 0.1) +
  scale_color_manual(labels = c("Up", "Down"),
                     values = c("green" = "#00ba38", "red" = "#f8766d")) +
  labs(title = "Slope Chart",
       subtitle = "Gdp per Continent",
       x = "",
       y = "Mean GpdPerCap",
       caption = "Source: https://raw.githubusercontent.com/selva86/datasets/master/gdppercap.csv") +
  xlim(0.5, 2.5) +
  ylim(0,(1.1*(max(df$`1952`,df$`1957`))))

pp <- pp + geom_text(label = left_label,
                     y = df$`1952`,
                     x = rep(1, NROW(df)),
                     hjust = 1.1,
                     size = 3.5)

pp <- pp + geom_text(label = right_label,
                     y = df$`1957`,
                     x = rep(2, NROW(df)),
                     hjust = -0.1,
                     size = 3.5)

pp <- pp + geom_text(label = "Year 1952", 
                     x = 1,
                     y = 1.1*(max(df$`1952`,df$`1957`)),
                     hjust = 1.2,
                     size = 5)

pp <- pp + geom_text(label = "Year 1957", 
                     x = 2,
                     y = 1.1*(max(df$`1952`,df$`1957`)),
                     hjust = -0.1,
                     size = 5)

plot(pp)
