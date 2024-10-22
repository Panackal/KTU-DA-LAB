# Reading the data from a CSV file into a data frame
data <- read.csv("C:/Users/ASUS/Downloads/KTU-DA-LAB/Lab Exam/Set 1/data.csv")

# Extracting the 'Marks_scored' column as the dependent variable (y)
y <- data$Marks_scored

# Extracting the 'Hours_studied' column as the independent variable (x)
x <- data$Hours_studied

# Fitting a linear regression model of 'Marks_scored' (y) as a function of 'Hours_studied' (x)
model <- lm(y ~ x)

# Creating a data frame to hold the value 7.5 (hours studied) for which we want to predict the marks scored
find <- data.frame(x = 7.5)

# Using the predict() function to find the predicted marks for 7.5 hours of study using the regression model
predicted_value = predict(model, find)

# print the predicted value
cat("When hours studied = 7.5, Marks scored = ", predicted_value)

# Plotting a scatterplot of 'Hours Studied' vs 'Marks Scored'
plot(x, y, 
     pch = 15, col = "blue", 
     main = "Scatterplot of Hours Studied vs Marks Scored", 
     xlab = "Hours Studied", 
     ylab = "Marks Scored")

# Adding the regression line (fitted model) to the scatterplot
abline(model)

# Adding the predicted point (7.5 hours studied and the corresponding predicted marks) to the plot
points(find$x, predicted_value, pch = 16, col = "green")

# Plotting a histogram of 'Marks Scored' to visualize the distribution of the marks
hist(y, col = "red", main = "Histogram of Marks Scored")
