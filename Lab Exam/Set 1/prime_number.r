# Prompt the user to enter a limit, and convert the input to an integer
limit <- as.integer(readline(prompt = "Enter the limit : "))

# Initialize the count of prime numbers found and start with the first prime candidate
count <- 0
num <- 2

# Function to check if a given number is prime
primeChecker <- function(num){
  # Assume the number is prime initially
  isPrime <- TRUE
  
  # Special case: 2 and 3 are prime numbers, so return TRUE directly for these cases
  if((num == 2) || (num == 3)){
    return (isPrime)
  }
  
  # Loop through potential divisors from 2 to half of the number
  for(i in 2:as.integer(num/2)){
    # If the number is divisible by any of these, it is not prime
    if((num%%i) == 0){
      isPrime <- FALSE
      break
    }
  }
  
  # Return TRUE if prime, FALSE otherwise
  return (isPrime)
}

# Loop to find and print prime numbers until the desired count is reached
while (count < limit){
  # Check if the current number is prime
  prime <- primeChecker(num)
  
  # If the number is prime, print it and increment the count
  if(prime){
    cat(num," ")
    count <- count + 1
  }
  
  # Move to the next number to check
  num <- num + 1
}
