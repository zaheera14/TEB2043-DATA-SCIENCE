# Activity 1
# Create data frame from given table

df <- data.frame(
  name = c("Anastasia","Dima","Michael","Matthew","Laura","Kevin","Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2)
)
print(df)


# Activity 2
# Add new column "qualify"
df$qualify <- c("yes","no","yes","no","no","no","yes")
print(df)


# Activity 3
# Add new row
new_row <- data.frame(
  name = "Emily",
  score = 14.5,
  attempts = 1,
  qualify = "yes"
)
df <- rbind(df, new_row)
print(df)


# Activity 4
# Display structure, summary, and dimensions
str(df)
summary(df)
print(dim(df))
print(nrow(df))
print(ncol(df))