library(dplyr)
library(readr)

student_data <- read.csv("C:/Users/zaza/Downloads/student_data.csv")
Student_fail <- student_data %>% filter(final_exam_mark < 40)
View(Student_fail)
summary(student_data)
View(student_data)
head(student_data)
tail(student_data)

mydata <- student_data %>% filter(final_exam_mark > 40) %>% arrange(final_exam_mark)
View(mydata)

mydata1 <- student_data %>% filter(final_exam_mark > 40) %>% arrange(desc(final_exam_mark))
View(mydata1)

mydata2 <- student_data %>% select(student_id, coursework_mark, final_exam_mark)
View(mydata2)

mydata3 <- student_data[, c("student_id", "coursework_mark", "final_exam_mark")]
View(mydata3)

glimpse(mydata2)
print(mydata2)

mydata4 = student_data %>% mutate(Total_Mark = (coursework_mark + final_exam_mark/200*100))
View(mydata4)

mydata5 <- cbind(student_data, Total_Mark = (student_data $coursework_mark + student_data$final_exam_mark/200*100))
View(mydata5)

data <- iris
head(data)
tail(data)
str(data)
summary(data)
sd(data$Sepal.Length)
var(data$Sepal.Length)
summary(data$Sepal.Length)

A <- c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
sort(A)
quantile(A, 0.25)
quantile(A, 0.75)
IQR(A)

#Histogram
hist(data$Sepal.Length, main = "Histogram of Sepal Length", xlab = "Sepal Length (cm)", ylab = "Frequency", col = "purple", border = "black")

#Boxplot
boxplot(Sepal.Length ~ Species, data = iris, main = "Sepal Length by Species", xlab = "Species", ylab = "Sepal Length (cm)", col = c("blue", "yellow", "magenta"))

#Scatterplot
plot(iris$Sepal.Length, iris$Petal.Length, main = "Sepal Length vs Petal Length", xlab = "Sepal Length (cm)", ylab = "Petal Length(cm)", col = as.numeric(iris$Species), pch = 19)


#HANDLING OUTLIERS
dfplayers <- read.csv("/Users/alysharaihana/Downloads/players.csv")
median_age <- median(dfplayers$Age, na.rm=TRUE)
dfplayers$Age[dfplayers$Age < 18 | dfplayers$Age > 38] <- median_age
View(dfplayers)

data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")

first_q <- quantile(data, 0.25)
third_q <- quantile(data, 0.75)

iqr <- IQR(data)

le <- first_q - 1.5 * iqr
ue <- third_q + 1.5 * iqr

data_new <- data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new 

data_new <- data
avg <- round(mean(data_new))
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new[data_new>ue] <- avg
data_new

data_new <- data
data_new[data_new<le] <- le
data_new[data_new>ue] <- ue
data_new

boxplot(data_new, main = "Boxplot")