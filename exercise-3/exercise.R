# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame("USPersonalExpenditure")

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
US.data <- data.frame(USPersonalExpenditure, stringsAsFactors=FALSE)

# What are the column names of your dataframe?
colnames(US.data)

# Why are they so strange?
# Because they have X in front of each year 

# What are the row names of your dataframe?
rownames(US.data)

# Create a column `category` that is equal to your rownames
US.data$category <- rownames(US.data)

# How much money was spent on personal care in 1940?
US.data["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
US.data["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
US.data$category[US.data$X1960 == max(US.data$"X1960")]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestCategory <- function(year) {
  return (US.data$category[US.data[year] == max(US.data[year])])
}
# Using your function, determine the highest spending category of each year
highest.categories <- HighestCategory("X1960")

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
highest <- list()
for (year in seq(1940, 1960, 5)) {
  year.string <- paste('X', year, sep="")
  highest[year.string] <- HighestCategory(year.string)
}
