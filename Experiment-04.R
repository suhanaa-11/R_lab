# Experiment- 04
# Load Dataset 
data(iris) 
# Display Dataset 
head(iris) 
# Select Columns 
iris[, c("Sepal.Length", "Species")] 
# Filter Setosa Records 
setosa_data <- subset(iris, Species=="setosa") 
head(setosa_data) 
# Sort Dataset 
sorted_data <- iris[order(iris$Sepal.Length), ] 
head(sorted_data) 
# Create New Variable 
iris$Sepal.Area <- iris$Sepal.Length * iris$Sepal.Width 
head(iris) 
# Species-wise Mean 
aggregate( Sepal.Length ~ Species, data=iris, FUN=mean) 

# (4.1)Filter Virginica records only
data(iris)
virginica_data <- subset(iris, Species == "virginica")
# Display first records
head(virginica_data)

# (4.2)Sort data in descending order
data(iris)
sorted_data <- iris[order(iris$Sepal.Length, decreasing = TRUE), ]
# Display first records
head(sorted_data)

# (4.3)Calculate Petal Area
data(iris)
iris$Petal.Area <- iris$Petal.Length * iris$Petal.Width
# Display first records
head(iris)

# (4.4)Find maximum sepal length for each species
data(iris)
aggregate(Sepal.Length ~ Species, data = iris, FUN = max)

# (4.5)Create species-wise summary report
data(iris)
summary_report <- aggregate(
  cbind(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) ~ Species,
  data = iris,
  FUN = mean
)
# Display summary report
print(summary_report)