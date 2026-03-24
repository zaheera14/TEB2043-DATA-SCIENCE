# 1. Understanding Correlation Analyses

# 1.1 Pearson Correlation using cor()
x <- c(1, 2, 3, 4, 5, 6, 7)
y <- c(1, 3, 6, 2, 7, 4, 5)

result <- cor(x, y, method = "pearson")
cat("Pearson correlation coefficient is:", result)


# 1.2 Pearson Correlation using cor.test()
result <- cor.test(x, y, method = "pearson")
print(result)


# 1.3 Correlation Matrix using corrplot
library(corrplot)
library(RColorBrewer)

M <- cor(mtcars)

corrplot(M, type = "upper")
corrplot(M, type = "upper", order = "hclust")
corrplot(M, type = "upper", order = "hclust",
         col = brewer.pal(n = 8, name = "RdYlBu"))


# 2. Plotting Correlation with Heatmap

# 2.1 Create and reorder correlation matrix
library(lattice)

data <- environmental
head(data)

corr_mat <- round(cor(data), 2)
head(corr_mat)

# Reorder matrix
dist <- as.dist((1 - corr_mat) / 2)
hc <- hclust(dist)
corr_mat <- corr_mat[hc$order, hc$order]

library(reshape2)

melted_corr_mat <- melt(corr_mat)
head(melted_corr_mat)


# 2.2 Heatmap using ggplot2
library(ggplot2)

ggplot(data = melted_corr_mat, 
       aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  geom_text(aes(label = value), color = "white", size = 4)


# 2.3 Heatmap using heatmaply
library(heatmaply)

heatmaply_cor(x = cor(data),
              xlab = "Features",
              ylab = "Features",
              k_col = 2,
              k_row = 2)


# 2.4 Heatmap using ggcorrplot
library(ggcorrplot)

ggcorrplot::ggcorrplot(cor(data))


# 3. Understanding Normalization

# 3.1 Log Transformation
mydata <- c(244, 753, 596, 645, 874, 141, 639, 465, 999, 654)

scaled_data1 <- log(mydata)
print(scaled_data1)


# 3.2 Standard Scaling
scaled_data2 <- as.data.frame(scale(mydata))
print(scaled_data2)


# 3.3 Min-Max Scaling
library(caret)

minmax <- preProcess(as.data.frame(mydata), method = c("range"))
scaled_data3 <- predict(minmax, as.data.frame(mydata))
print(scaled_data3)


# 3.4 Compare summaries
summary(mydata)
summary(scaled_data1)
summary(scaled_data2)
summary(scaled_data3)
