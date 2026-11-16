# Experiment- 06
# Load Dataset 
data(mtcars) 
# Descriptive Statistics 
mean(mtcars$mpg) 
median(mtcars$mpg) 
var(mtcars$mpg) 
sd(mtcars$mpg) 
summary(mtcars$mpg) 
# Inferential Statistics 
t.test(mtcars$mpg, mu=20) 

# (6.1)Calculate statistics for HP variable
data(mtcars)
mean(mtcars$hp)
median(mtcars$hp)
var(mtcars$hp)
sd(mtcars$hp)
summary(mtcars$hp)

# (6.2)Perform t-test for WT variable
data(mtcars)
t.test(mtcars$wt, mu = 3) 

# (6.3)Calculate correlation between MPG and HP
data(mtcars)
correlation <- cor(mtcars$mpg, mtcars$hp)
cat("Correlation =", correlation)

# (6.4)Calculate quartiles
data(mtcars)
quantile(mtcars$mpg)

# (6.5)Draw histogram of MPG
data(mtcars)
hist(mtcars$mpg,
     col = "yellow",
     border = "black",
     main = "Histogram of MPG",
     xlab = "Miles Per Gallon",
     ylab = "Frequency")
