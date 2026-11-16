# Experiment- 09
# Box Plot for Distribution Analysis 
library(ggplot2) 
ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species)) + geom_boxplot() + 
  ggtitle("Distribution of Sepal Length") 
# Scatter Plot for Relationship Analysis 
ggplot(iris, aes(Sepal.Length, Petal.Length, color=Species)) + geom_point(size=3) + 
  ggtitle("Relationship Between Sepal and Petal Length") 
# Bar Plot for Category Comparison 
ggplot(iris, aes(x=Species, fill=Species)) + geom_bar() + ggtitle("Number of Flowers in 
Each Species") 

library(ggplot2)
data(iris)

# (9.1)Dashboard-Style Report
ggplot(iris, aes(Sepal.Length, Petal.Length, color=Species)) +
  geom_point() + facet_wrap(~Species) +
  ggtitle("Iris Dataset Dashboard")

# (9.2))Compare Multiple Variables
ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species)) +
  geom_boxplot() + ggtitle("Comparison of Sepal Length")

# (9.3)Use Different Color Themes
ggplot(iris, aes(Sepal.Length, Petal.Length, color=Species)) +
  geom_point(size=3) + scale_color_brewer(palette="Set1") +
  ggtitle("Different Color Themes")

# (9.4)Add Annotations to Graphs
ggplot(iris, aes(Sepal.Length, Petal.Length, color=Species)) +
  geom_point(size=3) +
  annotate("text", x=6, y=6, label="Iris Dataset", color="red") +
  ggtitle("Scatter Plot with Annotation")

# (9.5)Create Publication-Ready Charts
ggplot(iris, aes(Sepal.Length, Petal.Length, color=Species)) +
  geom_point(size=3) +
  labs(title="Relationship Between Sepal and Petal Length",
       x="Sepal Length", y="Petal Length") +
  theme_classic()