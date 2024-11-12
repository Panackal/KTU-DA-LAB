# Load necessary libraries for decision tree modeling and visualization
library(rpart)
library(rpart.plot)

# Create a sample dataset with Height, Weight, and Gender attributes
data <- data.frame(
  Height = c(169, 180, 173, 155, 166, 177, 172, 150, 151, 167, 162, 158, 174, 160, 170, 176, 154, 168, 159, 165, 175, 152, 157, 153, 164),
  Weight = c(65, 89, 60, 52, 52, 72, 60, 50, 67, 71, 69, 58, 63, 54, 75, 61, 55, 66, 70, 68, 59, 56, 64, 62, 53),
  gender = sample(c("m", "f"), 25, replace = TRUE)
)

# Print the dataset to inspect the data
print(data)

# Create a decision tree model to predict gender based on Height and Weight
model <- rpart(gender ~ Height+Weight, data = data)

# Create a new data point to predict gender
new_data = data.frame(Height = 173, Weight = 65)

# Predict the gender for the new data point
result = predict(model, new_data)
print(result)

# Visualize the decision tree
rpart.plot(model)

# Note
# Click (Source➡️) multiple multiple times if a single node appears