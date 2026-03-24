# 1. R Vector

# 1.1 Vector Construction

# Creating a sequence from 5 to 13.
v <- 5:13
print(v)

# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)

# If the final element specified does not belong to the sequence then it is discarded.
v <- 3.8:11.4
print(v)

# Create vector with elements from 5 to 9 incrementing by 0.4.
print(seq(5, 9, by = 0.4))

# The logical and numeric values are converted to characters.
s <- c('apple','red',5,TRUE)
print(s)


# 1.2 Accessing Vector Elements

t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")

# Access using position
u <- t[c(2,3,6)]
print(u)

# Access using logical indexing
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

# Access using negative indexing
x <- t[c(-2,-5)]
print(x)

# Access using 0/1 indexing
y <- t[c(0,0,0,0,0,0,1)]
print(y)


# 1.3 Vector Manipulation

v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

# Addition
add.result <- v1 + v2
print(add.result)

# Subtraction
sub.result <- v1 - v2
print(sub.result)

# Multiplication
multi.result <- v1 * v2
print(multi.result)

# Division
divi.result <- v1 / v2
print(divi.result)


# 1.4 Vector Element Recycling

v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)

add.result <- v1 + v2
print(add.result)

sub.result <- v1 - v2
print(sub.result)


# 1.5 Vector Element Sorting

v <- c(3,8,4,5,0,11, -9, 304)

# Sort ascending
sort.result <- sort(v)
print(sort.result)

# Sort descending
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# Sorting characters
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)

# Reverse sorting characters
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)


# 2. R List

# 2.1 List Construction

list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)


# 2.2 Naming List Elements

list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
names(list_data) <- c("1st Quarter", "A Inner list")
print(list_data)


# 2.3 Accessing List Elements

list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
names(list_data) <- c("1st_Quarter", "A_Inner_list")

# Access first element
print(list_data[1])

# Access second element
print(list_data[2])

# Access using name
print(list_data$A_Inner_list)

# Get index of element
print(which(list_data$`1st_Quarter` == "Feb"))


# 2.4 List Manipulation

list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
names(list_data) <- c("1st_Quarter", "A_Inner_list")

# Add element
list_data[3] <- "New_element"
print(list_data[3])

# Remove element
list_data[3] <- NULL
print(list_data[3])

# Update element
list_data[2] <- "updated_element"
print(list_data[2])
