# Load the sales data from a CSV file
sales <- read.csv("./sales.csv")

# Assign the 'Purchase_Amount' column from the sales data to variable y (dependent variable)
y <- sales$Purchase_Amount

# Assign the 'Age' column from the sales data to variable x (independent variable)
x <- sales$Age

# Assign the 'Income' column from the sales data to variable z (independent variable)
z <- sales$Income

# Build a generalized linear model (GLM) using Purchase_Amount (y) as the response variable
# and Age (x) and Income (z) as predictor variables (independent variables)
model <- glm(y ~ x + z)

# Print the summary of the GLM model, which includes coefficients, standard errors, etc.
print(summary(model))

# Create a new data frame for prediction, where Age = 47 and Income = 76000
data <- data.frame(x = 47, z = 76000)

# Predict the 'Purchase_Amount' for the specified values of Age and Income using the model
predicted_value <- predict(model, data)

# Print the predicted purchase amount based on the provided Age and Income
cat("Predicted value : ", predicted_value)
