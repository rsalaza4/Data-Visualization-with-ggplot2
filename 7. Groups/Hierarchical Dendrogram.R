### HIERARCHICAL DENDROGRAM ###

# Import ggplot2 package
library(ggplot2)                                     

# Import ggdendro package
library(ggdendro)                                    

# Pre-set the black and white theme
theme_set(theme_bw())                                

# Load and name data set
df <- read.csv()             

# Apply hclust function to data set and specify method
hc <- hclust(dist(df), method = "average")                        

# 
ggdendrogram(data = hc,             # do not modify this line of code
             rotate = TRUE,         # specify rotate = TRUE to visualize dendrogram horizontally
             size = ) +             # set the size of the dendrogram
  labs(title = "",                  # type in the dendrogram title
       subtitle = "",               # type in the dendrogram subtitle
       caption = "")                # type in additional captions

# EXAMPLE

library(ggplot2)
library(ggdendro)
theme_set(theme_bw())

hc <- hclust(dist(USArrests), method = "average")

ggdendrogram(data = hc,
             rotate = FALSE,
             size = 2) +
  labs(title = "Hierarchical Dendrogram",
       subtitle = "USA",
       caption = "Source: USArrests dataset")

