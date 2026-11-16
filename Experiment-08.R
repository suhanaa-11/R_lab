# Experiment- 08
# Bar Chart 
library(ggplot2) 
ggplot(iris, aes(x=Species, fill=Species)) + geom_bar() 
# Scatter Plot 
ggplot(iris, aes(Sepal.Length, Petal.Length, color=Species)) + geom_point(size=3) 
# Histogram 
ggplot(iris, aes(Sepal.Length)) + geom_histogram( bins=10, fill="pink") 
# Box Plot 
ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species)) + geom_boxplot() 
# Line Chart 
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_line() 

# (8.1)Create Pie Chart using ggplot2
library(ggplot2)
ggplot(iris, aes(x="", fill=Species)) +
  geom_bar(width=1) +
  coord_polar("y") +
  labs(title="Pie Chart of Iris Species") +
  theme_void()

# (8.2)Add Custom Themes
library(ggplot2)
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length,
                 color=Species)) +
  geom_point(size=3) +
  labs(title="Iris Dataset",
       x="Sepal Length",
       y="Petal Length") +
  theme_minimal()

# (8.3)Create Grouped Bar Chart
library(ggplot2)
ggplot(iris, aes(x=Species, fill=Species)) +
  geom_bar(position="dodge") +
  labs(title="Grouped Bar Chart",
       x="Species",
       y="Count") +
  theme_classic()

# (8.4)Create Density Plot
library(ggplot2)
ggplot(iris, aes(x=Sepal.Length, fill=Species)) +
  geom_density(alpha=0.5) +
  labs(title="Density Plot of Sepal Length",
       x="Sepal Length",
       y="Density") +
  theme_minimal()

# (8.5)Create Violin Plot
library(ggplot2)
ggplot(iris, aes(x=Species, y=Sepal.Length,
                 fill=Species)) +
  geom_violin() +
  labs(title="Violin Plot of Sepal Length",
       x="Species",
       y="Sepal Length") +
  theme_minimal()