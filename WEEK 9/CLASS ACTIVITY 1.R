# CLASS ACTIVITY - PREDICTING SALARY FROM EXPERIENCE

# Create dataset
df <- data.frame(
  experience = c(1,2,3,4,5,6,7,8,9,10),
  salary = c(2500,2700,3000,3400,3900,4400,5000,5600,6200,6900)
)

# Split data into training (70%) and testing (30%) sets
train_indices <- sample(1:nrow(df), size = 0.7 * nrow(df))

train_data <- df[train_indices, ]
test_data <- df[-train_indices, ]

# Apply the lm() function
relation <- lm(salary ~ experience, data=train_data)
print(relation)

# Prediction
a <- data.frame(x = test_data$experience)
colnames(a) <- "experience"

result <- predict(relation, a)
print(result)

# Plot
plot(test_data$experience, test_data$salary,
     col="red",
     pch=16,
     xlab="Experience (Years)",
     ylab="Monthly Salary (RM)",
     main="Experience vs Salary")

abline(lm(salary ~ experience, data=train_data))
