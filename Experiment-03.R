# Experiment- 03
# Load Dataset 
data(airquality) 
# Display first records 
head(airquality) 
# Structure of Dataset 
str(airquality) 
# Count Missing Values 
sum(is.na(airquality)) 
# Missing values column-wise 
colSums(is.na(airquality)) 
# Mean Imputation 
airquality$Ozone[is.na(airquality$Ozone)] <-mean(airquality$Ozone, na.rm = TRUE) 
airquality$Solar.R[is.na(airquality$Solar.R)] <- mean(airquality$Solar.R, na.rm = TRUE) 
# Verify Cleaning 
sum(is.na(airquality)) 
# Dataset Summary 
summary(airquality) 

# (3.1)Remove rows containing missing values
data(airquality)
clean_data <- na.omit(airquality)
# Display cleaned dataset
print(clean_data)
# Check missing values
sum(is.na(clean_data))

# (3.2)Replace missing values using median
data(airquality)
airquality$Ozone[is.na(airquality$Ozone)] <-
  median(airquality$Ozone, na.rm = TRUE)
airquality$Solar.R[is.na(airquality$Solar.R)] <-
  median(airquality$Solar.R, na.rm = TRUE)
# Display cleaned dataset
print(airquality)
# Verify missing values
sum(is.na(airquality))

# (3.3)Calculate percentage of missing values
data(airquality)
missing_values <- sum(is.na(airquality))
total_values <- length(airquality)
percentage <- (missing_values / total_values) * 100
cat("Percentage of Missing Values =", percentage, "%")

# (3.4)Save cleaned dataset as CSV
data(airquality)
clean_data <- na.omit(airquality)
write.csv(clean_data, "cleaned_airquality.csv", row.names = FALSE)
cat("Dataset successfully saved as CSV")

# (3.5)Compare original and cleaned datasets
data(airquality)
original_data <- airquality
clean_data <- na.omit(airquality)
# Compare number of rows and columns
cat("Original Dataset Dimensions:\n")
print(dim(original_data))
cat("Cleaned Dataset Dimensions:\n")
print(dim(clean_data))
# Compare missing values
cat("Missing Values in Original Dataset:\n")
print(sum(is.na(original_data)))
cat("Missing Values in Cleaned Dataset:\n")
print(sum(is.na(clean_data)))
