# Experiment- 05
# Load Dataset
data(iris)
# Line Plot
plot(iris$Sepal.Length,
     type = "l",
     col = "skyblue",
     main = "Line Plot of Sepal Length")
# Bar Plot
species_count <- table(iris$Species)
barplot(species_count,
        col = c("red2", "darkgreen", "yellow"),
        main = "Bar Plot of Species")
# Scatter Plot
plot(iris$Sepal.Length, iris$Petal.Length,
     col = "magenta4",
     pch = 16,
     main = "Scatter Plot")
# Histogram
hist(iris$Sepal.Length,
     col = "orange",
     main = "Histogram")
# Box Plot
boxplot(iris$Sepal.Length,
        col = "pink",
        main = "Box Plot")

# (5.1)Create a Pie Chart
data(iris)
species_count <- table(iris$Species)
pie(species_count,
    col = c("magenta", "skyblue", "yellow"),
    main = "Pie Chart of Iris Species")

# (5.2)Create Multiple Histograms
data(iris)
par(mfrow = c(2, 2))
hist(iris$Sepal.Length,
     col = "skyblue",
     main = "Sepal Length")
hist(iris$Sepal.Width,
     col = "pink",
     main = "Sepal Width")
hist(iris$Petal.Length,
     col = "orange",
     main = "Petal Length")
hist(iris$Petal.Width,
     col = "lightgreen",
     main = "Petal Width")
par(mfrow = c(1, 1))

# (5.3)Compare Two Box Plots
data(iris)
boxplot(iris$Sepal.Length, iris$Petal.Length,
        names = c("Sepal Length", "Petal Length"),
        col = c("skyblue", "pink"),
        main = "Comparison of Sepal and Petal Length")

# (5.4)Change Graph Colors and Themes
data(iris)
par(bg = "lightyellow")
plot(iris$Sepal.Length, iris$Petal.Length,
     col = "magenta4",
     pch = 16,
     main = "Iris Dataset",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col.main = "blue",
     col.lab = "darkgreen")
par(bg = "white")

# (5.5)Visualize Petal Width Data
data(iris)
hist(iris$Petal.Width,
     col = "orange",
     border = "black",
     main = "Histogram of Petal Width",
     xlab = "Petal Width",
     ylab = "Frequency")
