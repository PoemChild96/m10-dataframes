# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawk.scores <- c(26, 36, 12, 9)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
opponent.scores <- c(6, 20, 10, 3)

# Combine your two vectors into a dataframe
scores <- data.frame(seahawk.scores, opponent.scores)

# Create a new column "diff" that is the difference in points
scores$diff <- seahawk.scores - opponent.scores 

# Create a new column "won" which is TRUE if the Seahawks wom
scores$won <- seahawk.scores > opponent.scores

# Create a vector of the opponents
opponents <- c("Lions", "Falcons", "Dolphines", "Rams")

# Assign your dataframe rownames of their opponents
rownames(scores) <- opponents
