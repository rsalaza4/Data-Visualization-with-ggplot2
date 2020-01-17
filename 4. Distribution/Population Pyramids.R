### POPULATION PYRAMIDS ###

# Import ggthemes package
library(ggthemes)                                       

# Import ggplot2 package
library(ggplot2)                                        

# Turn off scientific notation
options(scipen = 999)                                   

# Specify the chart breaks
brks <- seq(,,)                                         

# Specify the chart labels
lbls = paste0(as.character(c(seq(,,), seq(,,))), "m")   

ggplot(data = ,                                         # load data set
       aes(x = ,                                        # set the x variable
           y = ,                                        # set the y variable
           fill = )) +                                  # type in the color fill variable
  geom_bar(stat = "identity",                           # set stat = 'identity'
           width = ) +                                  # set the bars width
  scale_y_continuous(breaks = brks,                     # set breaks = brks
                     labels = lbls) +                   # set labels = lbls
  coord_flip() +                                        # specify coord_flip()
  theme_tufte() +                                       # set theme_tufte()
  theme(plot.title = element_text(hjust = ),            # hjust displays the text horizontally 
        axis.ticks = element_blank()) +                 # do not modify this line of code
  scale_fill_brewer(palette = "") +                     # type in the palette style
  labs(title = "",                                      # type in the plot title
       subtitle = "",                                   # type in the plot subtitle
       caption = "")                                    # type in additional captions

# EXAMPLE

library(ggthemes)
library(ggplot2)
options(scipen = 999)

email_campaign_funnel <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/email_campaign_funnel.csv")

brks <- seq(-15000000, 15000000, 5000000)
lbls = paste0(as.character(c(seq(15, 0, -5), seq(5, 15, 5))), "m")

ggplot(data = email_campaign_funnel,
       aes(x = Stage,
           y = Users,
           fill = Gender)) +
  geom_bar(stat = "identity",
           width = 0.6) +
  scale_y_continuous(breaks = brks,
                     labels = lbls) +
  coord_flip() +
  theme_tufte() +
  theme(plot.title = element_text(hjust = 0.5),
        axis.ticks = element_blank()) +
  scale_fill_brewer(palette = "Dark2") +
  labs(title = "Population Pyramid",
       subtitle = "",
       caption = "Source: https://raw.githubusercontent.com/selva86/datasets/master/email_campaign_funnel.csv")

