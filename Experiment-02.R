# Experiment- 02
a <- 20 
b <- 10 
addition <- a + b 
subtraction <- a - b 
multiplication <- a * b 
division <- a / b 
print(addition) 
print(subtraction) 
print(multiplication) 
print(division) 
# Vector Operations 
marks <- c(70,80,90,85,75) 
print(marks) 
print(sum(marks)) 
print(mean(marks)) 
# Relational Operation 
print(a > b) 
# Logical Operation 
x <- TRUE 
y <- FALSE 
print(x & y) 
print(x | y) 

# (2.1)Program to calculate area of a circle
radius <- as.numeric(readline("Enter radius: "))
area <- pi * radius^2
cat("Area of Circle =", area)

# (2.2)Program to calculate Simple Interest
p <- as.numeric(readline("Enter Principal Amount: "))
r <- as.numeric(readline("Enter Rate of Interest: "))
t <- as.numeric(readline("Enter Time (in years): "))
si <- (p * r * t) / 100
cat("Simple Interest =", si)

# (2.3)Program to find largest among three numbers
a <- as.numeric(readline("Enter first number: "))
b <- as.numeric(readline("Enter second number: "))
c <- as.numeric(readline("Enter third number: "))
if (a >= b && a >= c) {
  cat("Largest number =", a)
} else if (b >= a && b >= c) {
  cat("Largest number =", b)
} else {
  cat("Largest number =", c)
}

# (2.4)Program to create a vector of 10 values and calculate average
x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
average <- mean(x)
print("Vector values:")
print(x)
cat("Average =", average)

# (2.5)Program to perform arithmetic operations
a <- as.numeric(readline("Enter first number: "))
b <- as.numeric(readline("Enter second number: "))
cat("Addition =", a + b, "\n")
cat("Subtraction =", a - b, "\n")
cat("Multiplication =", a * b, "\n")
cat("Division =", a / b, "\n")
cat("Modulus =", a %% b, "\n")
cat("Exponentiation =", a ^ b, "\n")
cat("Integer Division =", a %/% b, "\n")