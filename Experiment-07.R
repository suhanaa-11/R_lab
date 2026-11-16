# Experiment= 07
# (Part-A)Load Dataset 
data(iris) 
# Build Model 
linear_model <- lm(Petal.Length ~ Sepal.Length, data=iris) 
# Summary 
summary(linear_model) 
# Prediction 
new_data <- data.frame(Sepal.Length=6) 
predict(linear_model,new_data) 

# (Part-B)
data(iris) 
iris$Target <- ifelse(iris$Species=="setosa",1,0) 
log_model <- glm(Target ~ Sepal.Length + Sepal.Width, family=binomial, data=iris) 
summary(log_model) 

# (7.1)Predict Petal Width using Petal Length
data(iris)
model <- lm(Petal.Width ~ Petal.Length, data=iris)
summary(model)
new_data <- data.frame(Petal.Length=4)
predict(model, new_data)

# (7.2)Build Regression using Multiple Predictors
data(iris)
model <- lm(Petal.Length ~ Sepal.Length + Sepal.Width +
              Petal.Width, data=iris)
summary(model)
new_data <- data.frame(
  Sepal.Length=6,
  Sepal.Width=3,
  Petal.Width=1.5
)
predict(model, new_data)

# (7.3)Create Another Binary Classification Problem
data(iris)
iris_data <- subset(iris, Species != "setosa")
iris_data$Target <- ifelse(iris_data$Species == "virginica", 1, 0)
log_model <- glm(Target ~ Sepal.Length + Petal.Length,
                 family=binomial,
                 data=iris_data)
summary(log_model)
probability <- predict(log_model, type="response")
prediction <- ifelse(probability >= 0.5, 1, 0)
head(prediction)

# (7.4)Interpret Model Coefficients
data(iris)
model <- lm(Petal.Length ~ Sepal.Length, data=iris)
summary(model)
coef(model)

# (7.5)Compare Predicted and Actual Values
data(iris)
model <- lm(Petal.Length ~ Sepal.Length, data=iris)
predicted <- predict(model, iris)
comparison <- data.frame(
  Actual = iris$Petal.Length,
  Predicted = predicted
)
head(comparison)
