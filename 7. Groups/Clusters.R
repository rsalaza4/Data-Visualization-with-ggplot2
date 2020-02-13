### CLUSTERS ###

# Note: this code works exclusively for 3 different clusters!

# Import ggplot2 package
library(ggplot2)                                                      

# Import ggalt package
library(ggalt)                                                        

# Import ggfortify package
library(ggfortify)                                                    

# Pre-set the classic theme
theme_set(theme_classic()) 

# Load and name data set
df <- read.csv()                                                      

# Apply the prcomp function
pca_mod <- prcomp(df)                                                 

# Name the categoric column and select it from original data set
df_pc <- data.frame(pca_mod$x,  = df$)                                

# Type in the first out of the three categories (classes)
df_pc_1 <- df_pc[df_pc$ == "", ]                                      

# Type in the second out of the three categories (classes)
df_pc_2 <- df_pc[df_pc$ == "", ]                                     

# Type in the third out of the three categories (classes)
df_pc_3 <- df_pc[df_pc$ == "", ]                                     

ggplot(data = df_pc,                                                  # do not modify this line of code
       aes(x = PC1,                                                   # do not modify this line of code
           y = PC2,                                                   # do not modify this line of code
           col = )) +                                                 # set the color variable
  geom_point(aes(shape = ),                                           # set the shape variable (same as above)
             size = ) +                                               # set the sahpes sizes
  labs(title = "",                                                    # type in the plot title
       subtitle = "",                                                 # type in the plot subtitle
       caption = "") +                                                # type in additional captions
  coord_cartesian(xlim = 1.2 * c(min(df_pc$PC1), max(df_pc$PC1)),     # do not modify this line of code
                  ylim = 1.2 * c(min(df_pc$PC2), max(df_pc$PC2))) +   # do not modify this line of code
  geom_encircle(data = df_pc_1,                                       # do not modify this line of code
                aes(x = PC1,                                          # do not modify this line of code
                    y = PC2)) +                                       # do not modify this line of code
  geom_encircle(data = df_pc_2,                                       # do not modify this line of code
                aes(x = PC1,                                          # do not modify this line of code
                    y = PC2)) +                                       # do not modify this line of code
  geom_encircle(data = df_pc_3,                                       # do not modify this line of code
                aes(x = PC1,                                          # do not modify this line of code
                    y = PC2))                                         # do not modify this line of code

# EXAMPLE

library(ggplot2)
library(ggalt)
library(ggfortify)
theme_set(theme_classic())

df <- iris[c(1, 2, 3, 4)]
pca_mod <- prcomp(df)

df_pc <- data.frame(pca_mod$x, Species = iris$Species)
df_pc_vir <- df_pc[df_pc$Species == "virginica", ]
df_pc_set <- df_pc[df_pc$Species == "setosa", ]
df_pc_ver <- df_pc[df_pc$Species == "versicolor", ]

ggplot(data = df_pc,
       aes(x = PC1,
           y = PC2,
           col = Species)) +
  geom_point(aes(shape = Species),
             size = 2) +
  labs(title = "Clusters",
       subtitle = "With the principal componentes PC1 and PC2 as X and Y axis",
       caption = "Source: Iris dataset") +
  coord_cartesian(xlim = 1.2 * c(min(df_pc$PC1), max(df_pc$PC1)),
                  ylim = 1.2 * c(min(df_pc$PC2), max(df_pc$PC2))) +
  geom_encircle(data = df_pc_vir,
                aes(x = PC1,
                    y = PC2)) +
  geom_encircle(data = df_pc_set,
                aes(x = PC1,
                    y = PC2)) +
  geom_encircle(data = df_pc_ver,
                aes(x = PC1,
                    y = PC2))
