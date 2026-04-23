##### ---- R Fundamentals 2 workshop ---- 
## R Fundaments 2 will cover - data formats, writing for loops and conditional logic 

## ---- Quick recap of R Fundamentals 1 ----
# R can do maths!
# Parentheses: (,) , Exponents: ^ or **, Multiply: *, Divide: /, Add: +, Subtract -
1+1
(3+5)^2
9/2
## Commenting your code

# Defining variables and variable names 
# Variables are defined with = and <- and our case sensitive
prod <- 5*2
Prod
# What changes in the environment window when we run this?

## Creating vectors in R 
# c() stands for concatenate by bringing them together ad , is used to separate
x <- c(1,3,5)
# Note here what has happened to the x we defined above?
# a:b takes two numeric scalers (a and b) and returns a vector of numbers starting at a ending b
y <- (1:10)
# seq() 
seq(from=1,to=8,by=2)
# What does seq do?

# rep() allows you to repeat a scalar (or vector) a specified number of times
rep(x=c(7,8), times=2, each=2)

### ---- How to write functions in R ----
# Takes an input (called arguments), performs operation(s) on this input and returns an output

# Basic structure
name_of_function <- function(argument1, argument2, ...) {
  # specify which operation(s) to perform
  result <- operation(s)
  return(result)   # print result
}

# Example 1
greet <- function(name = "Anna") {
  message <- paste("Hello,", name)
  return(message)
}

greet()

greet("Emily") # "greet()" is the new function & can be used with new input
# "Hello, Emily"

# Example 2: Computing mean of a vector
# Create vector
my_vector <- c(2,4,6)

vector_mean <- function(x) {
  
  # Warn if input it not numeric
  if (!is.numeric(x)) {
    warning("Input is not numeric. Returning NA.")
    return(NA)
  }
  
  # Compute and return the mean
  return(sum(x) / length(x))
}

vector_mean(my_vector)

my_vector2 <- c("Blue", "Red", "Green")
vector_mean(my_vector2)


## ---- How to help yourself in R? ---- 
help()
help(str)

## --- Data formats ----
# We can use class() to check the format of our data 

# integer - is a whole number and are numeric data without decimals. 
x <- 1L
class(x)

# numeric - this is the most common in R and contains a decimal 
x <- 10.5
class(x)

# character/string
x <- "R is exciting"
class(x)

# logical - TRUE or FALSE
x <- TRUE
class(x)

## --- Create a Vector ----
# Think of it as a 1D structure in R
# Vector <- c(value1, value2)
# Numeric vector
num_vector <- c(1,5,32,-90)
# Character vector
char_vector <- c("blue", "red", "yellow")
# Logical vector
logical_vector <- c(T,T,F)
logical_vector

## --- Create a Matrix ----
# Think of it as a 2D structure with vectors of all the same kind 
# Homogeneous: All elements must be the same type (e.g., all numeric or all character).
num_vector <- c(1,5,32,-90)
count_vector <- c(2,7,60,-50)

my_matrix <- matrix(c(num_vector, count_vector), nrow = 4)
my_matrix

## --- Create a dataframe ---
# Three vectors containing info on each person's name, age, and favorite color
name_vec <- c("Dean", "Xiao", "Sara", "Ravi", "Maya")
age_vec <- c(12, 18, 22, 21, 17)
color_vec <- c("blue", 'green', 'red', 'purple', 'blue')

my_data <- data.frame(name = name_vec,
                      age = age_vec, 
                      color = color_vec)
my_data

# Create a dataframe with two columns of character vectors and one with a logical vectors

## --- Conditional logic ----
# 
# R program to illustrate if statement

# Assigning value to variable a
a <- 5

# Condition
if(a > 0)
{
  print("Positive Number")  # Statement
}
# Change a and see what happens 

# Using ifelse 
if(a > 0)
{
  print("Positive Number")  # Statement
}  else {
  print("Not a Positive Number")
}

# What is happening now?

# Look up what else if does and how you can incorporate it into the conditional logic above?


### ---- For loops ----
# Loops make it possible to execute blocks of instructions multiple times. There are two types: 
# We use for loops when the number of iterations is already known at runtime. 
# In contrast, while loops are used when we do not know in advance how many times the block of instructions needs to be executed.

# Structure of the for loop

for (i in vector) {
  # instructions
}

# The elements of vector are assigned to the variable i one after another, and the block of instructions is executed. 
# When R reaches the end of the loop, the program jumps back to the beginning and i is updated.
# The next element of vector is assigned to i. This continues until all elements of vector have been processed.


# Example: Calculation of Fibonacci numbers:
# Each number in the sequence is the sum of the two preceding ones

fibo <- numeric(5)  # numeric vector of length 5
fibo[1:2] <- 1      # 1. and 2. Fibonacci number per definition

for (i in 3:length(fibo)) {
  fibo[i] <- fibo[i - 2] + fibo[i - 1]
}

fibo


# Example: Square each element of the vector x and print the result.

x <- c(5, -2, 3)

for (i in 1:length(x)) {
  print(x[i]^2)
}

# Exercise 1: Use a for loop to compute a new vector, where each element is the sum of all previous elements in x.
x <- c(2, 4, 6, 8)


# Exercise 2: Use a for loop to count how many elements in x are positive.
x <- c(3, -1, 7, 9, -5, 2)


