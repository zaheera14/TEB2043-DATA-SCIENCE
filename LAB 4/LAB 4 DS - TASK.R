# Activity 1
age <-  c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)
factor_age <- factor(age)
print(factor_age)
print(is.factor(factor_age))
table(factor_age)
age_group <- cut(age, breaks=c(49,51,53,55,57,60), labels = c("50-51", "51-53", "54–55", "56–57", "58–60"), right=TRUE)
table(age_group)


# Activity 2
V1 <- c(2,3,1,5,4,6,8,7,9)

M <- matrix(c(V1), nrow= 3, byrow= TRUE)
print(M)

N <- matrix(c(V1), nrow= 3, byrow= FALSE)
print(N)

rownames = c("row1", "row2", "row3")
colnames = c("col1", "col2", "col3")

M1 <- matrix(c(V1), nrow = 3, byrow = TRUE, dimnames =list(rownames, colnames))
print(M1)

M2 <- t(M1)
print(M2)

rownames <- c("row1", "row2", "row3")
colnames <- c("col1", "col2", "col3")

M1 <- matrix(V1, nrow = 3, byrow = TRUE, dimnames = list(rownames, colnames))
print(M1)

M2 <- matrix(M2, nrow = 3, byrow = TRUE, dimnames = list(rownames, colnames))
print(M2)

addition <- M1 + M2
print (addition)

minus <- M1 - M2
print(minus)

multiply <- M1 * M2
print(multiply)

division <- M1/M2
print(division)


# Activity 3
data1 <- c(1:24)
Array1 <- array(data1, dim= c(2,4,3))
print("Array 1")
print(Array1)

data2 <- c(25:53)
Array2 <- array(data2, dim= c(3,2,5))
print("Array 2")
print(Array2)

print( " Second row of second matrix of array 1 : ")
print(Array1[2, ,2])

print("Element in 3rd row and 2nd of first matrix of array 2 :")
print(Array2[3,2,1])
