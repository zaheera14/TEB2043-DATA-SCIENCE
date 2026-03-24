# 1. Creating data frame
# 1.1 Create the data frame
emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25)
)


# 1.2 Creating a data frame from matrix and renaming the column
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
print(my_matrix)

df_from_matrix <- data.frame(my_matrix)
print(df_from_matrix)

names(df_from_matrix) <- c("col_1", "col_2", "col_3")
print(df_from_matrix)


# 1.3 Creating a data frame from list of vectors
my_list <- list(
  rating = 1:4,
  animal = c("koala", "hedgehog", "sloth", "panda"),
  country = c("Australia", "Italy", "Peru", "China"),
  avg_sleep_hours = c(21, 18, 17, 10)
)
print(my_list)

super_sleepers <- data.frame(my_list)
print(super_sleepers)


# 2. Displaying the data frame
# 2.1 Display values
print(emp.data)


# 2.2 Display structure
str(emp.data)


# 2.3 Display summary
print(summary(emp.data))


# 2.4 Display dimensions
print(dim(emp.data))
print(ncol(emp.data))
print(nrow(emp.data))


# 3. Accessing the data frame
# 3.1 Extract column
print(emp.data$salary)
print(emp.data[["salary"]])
print(emp.data[3])


# 3.2 Extract first two rows
result <- emp.data[1:2, ]
print(result)


# 4. Modifying the data frame
# 4.1 Adding new column
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)

emp.newdata <- cbind(
  emp.data,
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15",
                         "2014-05-11","2015-03-27"))
)
print(emp.newdata)


# 4.2 Adding new row
emp.newdata <- data.frame(
  emp_id = c(6:8),
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8),
  dept = c("IT","Operations","Finance")
)

emp.finaldata <- rbind(emp.data, emp.newdata)
print(emp.finaldata)


# 4.3 Remove rows and columns
result <- emp.data[-c(2), -c(1)]
print(result)

