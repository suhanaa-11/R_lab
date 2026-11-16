# Experiment- 10
# Installing Package 
install.packages("ggplot2") 
# Loading Package 
library(ggplot2)
# Using Package 
library(ggplot2) 
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) + geom_point(size=3) 
# Display Installed Packages 
installed.packages() 
# Update Packages 
update.packages() 

# (10.1)Install dplyr Package
install.packages("dplyr")
library(dplyr)
packageVersion("dplyr")

# (10.2)Install caret Package
install.packages("caret")
library(caret)
packageVersion("caret")

# (10.3)Explore Package Documentation
library(dplyr)
help(package="dplyr")
?filter
?select
?mutate

# (10.4)Update All Packages
update.packages(ask=FALSE, checkBuilt=TRUE)

# (10.5)Create Visualization using ggplot2
library(ggplot2)
data(iris)
ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species)) +
  geom_boxplot() +
  ggtitle("Sepal Length Distribution") +
  theme_classic() 