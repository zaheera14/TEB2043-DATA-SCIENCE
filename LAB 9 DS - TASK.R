# Activity 1
data(ToothGrowth)

# Convert factor to numeric for correlation
tg <- ToothGrowth
tg$supp <- as.numeric(tg$supp)
tg$dose <- as.numeric(tg$dose)

# Correlation matrix
corr_matrix <- cor(tg)
print(corr_matrix)

# Heatmap using corrplot
library(corrplot)

corrplot(corr_matrix, method = "color", type = "upper")


# Activity 2
data(mtcars)

# Log Transformation
log_data <- log(mtcars)
print(head(log_data))

# Standard Scaling (Z-score)
scaled_data <- as.data.frame(scale(mtcars))
print(head(scaled_data))

# Min-Max Scaling
library(caret)

pre_model <- preProcess(mtcars, method = c("range"))
minmax_data <- predict(pre_model, mtcars)
print(head(minmax_data))

# Compare summaries
summary(mtcars)
summary(log_data)
summary(scaled_data)
summary(minmax_data)
