### WAFFLE CHART ###

# Establish a categorical variable named var
var <- $                                                          
  
# Do not modify this line of code  
nrows <- 10                                                       

# Do not modify this line of code
df <- expand.grid(y = 1:nrows, x = 1:nrows)                       

# Do not modify this line of code
categ_table <- round(table(var) * ((nrows*nrows)/(length(var))))  
print(categ_table)

#NOTE: if sum(categ_table) is not 199 (i.e. nrows^2), it will need adjustment to make the sum to 100.

df$category <- factor(rep(names(categ_table), categ_table))

ggplot(data = df,                                                 # do not modify this line of code
       aes(x = x,                                                 # do not modify this line of code
           y = y,                                                 # do not modify this line of code
           fill = )) +                                            # set the fill color variable
  geom_tile(color = '',                                           # type in the division lines color
            size = ) +                                            # set the divisions lines width
  scale_x_continuous(expand = c(0,0)) +                           # do not modify this line of code
  scale_y_continuous(expand = c(0,0),                             # do not modify this line of code
                     trans = 'reverse') +                         # do not modify this line of code
  scale_fill_brewer(palette = "") +                               # type in the palette style
  labs(title = "",                                                # type in the plot title
       subtitle = "",                                             # type in the plot subtitle
       caption = "") +                                            # type in additional captions
  theme(panel.border = element_rect(size = ),                     # set the panel border
        plot.title = element_text(size = rel()),                  # set the title size
        axis.text = element_blank(),                              # do not modify this line of code
        axis.ticks = element_blank(),                             # do not modify this line of code
        legend.title = element_blank(),                           # do not modify this line of code
        legend.position = "right")                                # type in the legend position

# EXAMPLE

library(ggplot2)
var <- mpg$class
nrows <- 10
df <- expand.grid(y = 1:nrows, x = 1:nrows)
categ_table <- round(table(var) * ((nrows*nrows)/(length(var))))
print(categ_table)

df$category <- factor(rep(names(categ_table), categ_table))  

ggplot(data = df,
       aes(x = x,
           y = y,
           fill = category)) +
  geom_tile(color = 'black',
            size = 0.5) +
  scale_x_continuous(expand = c(0,0)) +
  scale_y_continuous(expand = c(0,0),
                     trans = 'reverse') +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Waffle Chart",
       subtitle = "Class of vehicles",
       caption = "Source: mpg") +
  theme(panel.border = element_rect(size = 2),
        plot.title = element_text(size = rel(1.2)),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        legend.title = element_blank(),
        legend.position = "right")
