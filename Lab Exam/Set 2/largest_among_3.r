
check_numbers <- function(num1,num2,num3) {
  
  # Check if all three numbers are equal
  if (num1 == num2 && num2 == num3) {
    cat("All three numbers are equal:", num1, "\n")
  } else {
    # Return the largest of the three numbers
    largest <- max(num1, num2, num3)
    cat("The largest number is:", largest, "\n")
  }
}

num1 <- as.numeric(readline(prompt = "Enter the first number: "))
num2 <- as.numeric(readline(prompt = "Enter the second number: "))
num3 <- as.numeric(readline(prompt = "Enter the third number: "))

# Call the function to execute the code
check_numbers(num1,num2,num3)
