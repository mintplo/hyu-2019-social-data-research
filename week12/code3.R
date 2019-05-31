setwd("./")

## 판별 분석 Lab
install.packages("MASS")
library(MASS)

taxa <- read.table("taxonomy.txt", header = TRUE)
taxa
str(taxa)

?tapply
tapply(taxa$Petals, taxa$Taxon, mean)

model <- lda(Taxon~., taxa)
model

plot(model, cex=rep(1.5, 4), col=rep(1:4, each=10))

set.seed(42)
train <- sort(sample(1:120, 60))
train

analysis_sample <- taxa[train,]
holdout_sample <- taxa[-train,]

model2 <- lda(Taxon~., analysis_sample)

holdout_test <- predict(model2, holdout_sample)
holdout_test

table(holdout_sample$Taxon, holdout_test$class)
