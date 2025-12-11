##### ---- R Fundamentals workshop ---- 

## ---- Doing maths with R ----
# helpful maths symbols in R
# Parentheses: (,) , Exponents: ^ or **, Multiply: *, Divide: /, Add: +, Subtract -
1+1
(3+5)^2
9/2
## Commenting your code


## ---- Defining variables and variable names ----
# Variables are defined with = and <- and our case sensitive
prod <- 5*2
Prod
# what changes in the environment window when we run this?


## ---- Data types in R ----
# Numeric-type with integer and double values
x <- 1.1
y <- 2L
typeof(x)
# Character type (always between "")
z  <- "There are many benefits to using R"
typeof(z)
# Logical-type
t <- TRUE 
f <- FALSE
typeof(t)

## ---- Creating vectors in R ---- 
# c() stands for concatenate by bringing them together ad , is used to separate
x <- c(1,3,5)
# note here what has happened to the x we defined above?
# a:b takes two numeric scalers (a and b) and returns a vector of numbers starting at a ending b
y <- (1:10)
# seq() 
seq(from=1,to=8,by=2)
# what does seq do?

# rep() allows you to repeat a scalar (or vector) a specified number of times
rep(x=c(7,8), times=2, each=2)

## ---- Creating different vector types? ----
# vector <- c(value1, value2)
# numeric vector
num_vector <- c(1,5,32,-90)
# character vector
char_vector <- c("blue", "red", "yellow")
# logical vector
bool_vector <- c(T,T,F)
bool_vector

## ---- Using what we have learnt above to do the challenge below ----
# Create a vector containing the first 5 odd numbers, starting from 1
# Name it odd_num



# What do you think will happen with the four computations below when you run them?
"TRUE" * 4
"banana" + "apple"
FALSE + 5
TRUE + "TRUE"



## ---- Data frames ---- 
# three vectors containing info on each person's name, age, and favorite color
name_vec <- c("Dean", "Xiao", "Sara", "Ravi", "Maya")
age_vec <- c(12, 18, 22, 21, 17)
color_vec <- c("blue", 'green', 'red', 'purple', 'blue')

my_data <- data.frame(name = name_vec,
                      age = age_vec, 
                      color = color_vec)
my_data

## ---- How to help yourself in R? ---- 
help()
help(str)

# Finding out about the dataframe
str(my_data)
# What does the str tell you about the dataframe 
my_data$name

### ---- Installing packages in R ---- 
### Tidyverse (switch to slides for short explanation on tidyverse)
install.packages(tidyverse)
library(tidyverse)

# package that has the dataset we want to use 
install.packages("BioWorldR")
library(BioWorldR)

# We we use one of the datasets included in the BioWorldR package called Brain_animals
# https://cran.r-project.org/web/packages/BioWorldR/vignettes/BioWorldR_vignette.html
animals_df <- Brain_animals
# What columns are in our dataset?

# What does the summary function give us?
summary(animals_df)

# Plotting this information as a bar plot
ggplot(animals_df,aes(x=species, y=bodyweight)) + geom_col(fill="red")

# Plotting this information as a line plot
ggplot(animals_df, aes(x=bodyweight, y=brainweight)) + geom_point()

# Plot species against brainweight

# Can you try a different plot type? 
# Find inspiration here - https://r-graph-gallery.com/ggplot2-package.html

# Can you try to plot with the Gorillas_df dataset? 
# (instead of Brain_animals this dataset is called Gorillas_df)

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

# Can you create your own function?
