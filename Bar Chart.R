### BAR CHART ###

# Create a frequency table with the table function
freqtable <- table($)                             

# Transform the frequency table into a data frame
df <- as.data.frame.table(freqtable)              

# Import ggplot2 package
library(ggplot2)                                  

# Pre-set the classic theme
theme_set(theme_classic())                        

gg <- ggplot(data = df,                           # do not modify this line of code
             aes(x = Var1,                        # do not modify this line of code
                 y = Freq))                       # do not modify this line of code

gg + geom_bar(stat = "identity",                  # set stat = 'identity'
              width = ,                           # set the bars width
              fill = "") +                        # set the bars fill color
  labs(title = "",                                # type in the chart title
       subtitle = "",                             # type in the chart subtitle
       caption = "") +                            # type in additional captions
  theme(axis.text.x = element_text(angle = ,      # set the x-axis text angle
                                   vjust = ))     # vjust shifts the x axis text vertically

# EXAMPLE

freqtable <- table(mpg$manufacturer)
df <- as.data.frame.table(freqtable)

library(ggplot2)
theme_set(theme_classic())

gg <- ggplot(data = df,
             aes(x = Var1,
                 y = Freq))

gg + geom_bar(stat = "identity",
             width = 0.5,
             fill = "tomato2") +
  labs(title = "Bar Chart",
       subtitle = "Manufacturer of vehicles",
       caption = "Source: Frequency of Manufacturers from 'mpg' dataset") +
  theme(axis.text.x = element_text(angle = 65,
                                   vjust = 0.6))
