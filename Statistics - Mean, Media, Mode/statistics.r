# Define a vector of numerical data
data <- c(12,2,5,45,4,5,5)

# Calculate and print the mean of the data
print(paste("Mean : ", mean(data)))

# Define a new vector with missing values (NA)
data <- c(12,2,5,45,4,5,5,NA,NA)

# Calculate and print the trimmed mean (removes 20% of the lowest and highest values)
# 'trim = 0.2' removes 20% from both ends, and 'na.rm = TRUE' removes missing values (NA)
print(paste("Trimmed Mean : ", mean(data, trim = 0.2, na.rm = TRUE)))

# Define another vector of numerical data (without NA)
data <- c(12,2,5,45,4,5,5)

# Calculate and print the median of the data (middle value when sorted)
print(paste("Median :", median(data)))

# Define a function to calculate the mode (the most frequent value)
get_mode <- function(x) {
  # Get unique values from the data
  uniq_vals <- unique(x)
  # Find the value with the highest frequency (mode)
  return(uniq_vals[which.max(tabulate(match(x, uniq_vals)))])
}

# Calculate and print the mode of the data
print(paste("Mode : ", get_mode(data)))
