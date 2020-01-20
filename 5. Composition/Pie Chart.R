### PIE CHART ###

# Code for Example 1

# Import ggplot2 package
library(ggplot2)                                    

# Pre-set the classic theme
theme_set(theme_classic())                          

# Type in the dataframe$categorical column 
df <- as.data.frame(table($))                       

# Rename the columns form the data frame created
colnames(df) <- c("class","freq")                   

pie <- ggplot(data = df,                            # do not modify this line of code
              aes(x = "",                           # do not modify this line of code
                  y = freq,                         # do not modify this line of code
                  fill = factor(class))) +          # do not modify this line of code
  geom_bar(width = 1,                               # do not modify this line of code
           stat = "identity") +                     # set stat = "identity"
  theme(plot.title = element_text(hjust = 0.5)) +   # hjust displays the text horizontally 
  labs(fill = "class",                              # type in the fill title
       x = NULL,                                    # do not modify this line of code
       y = NULL,                                    # do not modify this line of code
       title = "",                                  # type in the chart title
       subtitle = ""                                # type in the chart subtitle
       caption = "")                                # type additional captions

pie + coord_polar(theta = "y", start = 0)           # do not modify this line of code

# Code for Example 2

pie <- ggplot(data = ,                              # do not modify this line of code                          
              aes(x = "",                           # do not modify this line of code
                  fill = factor())) +               # type in the categorical variable column name
  geom_bar(width = 1) +                             # do not modify this line of code
  theme(axis.line = element_blank(),                # do not modify this line of code
        labs(fill = "class",                        # type in the fill title
             x = NULL,                              # do not modify this line of code
             y = NULL,                              # do not modify this line of code
             title = "",                            # type in the chart title
             subtitle = ""                          # type in the chart subtitle
             caption = "")                          # type additional captions

pie + coord_polar(theta = "y", start = 0)           # do not modify this line of code

# EXAMPLE 1

# Data retreived from a frequency table

library(ggplot2)
theme_set(theme_classic())

df <- as.data.frame(table(mpg$class))
colnames(df) <- c("class","freq")

pie <- ggplot(data = df,
               aes(x = "",
                   y = freq,
                   fill = factor(class))) +
  geom_bar(width = 1,
           stat = "identity") +
  theme(plot.title = element_text(hjust = 0.5)) +
  labs(fill = "class",
       x = NULL,
       y = NULL,
       title = "Pie Chart of class",
       caption = "Source: mpg")

pie + coord_polar(theta = "y", start = 0)

# EXAMPLE 2

# Data retreived from a categorical variable from a data frame

pie <- ggplot(data = mpg,
              aes(x = "",
                  fill = factor(class))) +
  geom_bar(width = 1) +
  theme(axis.line = element_blank(),
        plot.title = element_text(hjust = 0.5)) +
  labs(fill = "class",
       x = NULL,
       y = NULL,
       title = "Pie Chart of class",
       caption = "Source: mpg")

pie + coord_polar(theta = "y", start = 0)
