# 1.1 Factors Construction.
# Create a vector as input.
data <-
  c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North")
print(data)
print(is.factor(data))

factor_data <- factor(data) #Apply factor function
print(factor_data)
print(is.factor(factor_data))
length(factor_data)


# 1.2 Accessing Factors Elements.
data<-
  factor(c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North"))
data[3]


# 1.3 Factors Elements Manipulation.
data<-
  factor(c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North"))
data[3] <- "NorthWest" 


# 1.4 Changing Order of Levels.
data <- 
  c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North")

factor_data <- factor(data)
print(factor_data)

new_order_data <- factor(factor_data, levels = c("East", "West", "North"))
print(new_order_data)


# 1.5 Factor Level Generation
v <- gl(3, 4, labels = c("Tampa", "Seattle", "Boston"))
print(v)


# 2.1 Matrix Construction

M <- matrix(c(3:14), nrow = 4, byrow = TRUE) #Elements are arranged sequentially by row.
print(M)

N <- matrix(c(3:14), nrow = 4, byrow = FALSE) #Elements are arranged sequentially by column.
print(N)

rownames = c("row1", "row2", "row3", "row4") #Define the column and row names.
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)


# 2.2 Accessing Elements of a Matrix

rownames = c("row1", "row2", "row3", "row4") #Define the column and row names.
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames)) #Create the Matrix.

print(P[1,3]) #Access the element at 3rd column and 1st row.

print(P[4,2]) #Access the element at 2nd column and 4th row.

print(P[2,]) #Access only the 2nd row.

print(P[,3]) #Access only the 3rd column.


# 2.3 Matrix Addition & Subtraction
# Create two 2x3 matrices
matrix1 <- matrix(c(3, 9, -1, -4, 2, 6), nrow = 2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

result <- matrix1 + matrix2 #Add the matrices
cat("Result of addition", "\n")
print(result)

result <- matrix1 - matrix2 #Subtract the matrices
cat("Result of subtraction", "\n")
print(result)


# 2.4 Matrix & Multiplication Divison
# Create two 2x3 matrices
matrix1 <- matrix(c(3, 9, -1, -4, 2, 6), nrow = 2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

result <- matrix1 * matrix2 #Multiply the matrices
cat("Result of multiplication", "\n")
print(result)

result <- matrix1 / matrix2 #Divide the matrices
cat("Result of division", "\n")
print(result)


# 3.1 Array Construction
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)


# 3.2 Naming Columns & Rows
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames =
                  list(row.names,column.names,
                       matrix.names))
print(result)


# 3.3 Accessing Array Elements
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames =
                  list(row.names,
                       column.names, matrix.names))
# Print the third row of the second matrix of the array.
print(result[3,,2])
# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])
# Print the 2nd Matrix.
print(result[,,2])


# 3.4 Array Elements Manipulation
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))
# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2),dim = c(3,3,2))
# Create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]
# Add the matrices.
result <- matrix1+matrix2
print(result)


# 3.5 Using Function apply() in Array
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
new.array <- array(c(vector1,vector2),dim = c(3,3,2))
print(new.array)
# Use apply to calculate the sum of the rows across all the matrices.
result <- apply(new.array, c(1), sum)
print(result)
