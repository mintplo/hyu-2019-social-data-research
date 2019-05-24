setwd("./")

t.test.data <- read.table("t.test.data.txt", header = TRUE)
str(t.test.data)
summary(t.test.data)

head(t.test.data, 2)
tail(t.test.data, 2)

data_1 <- c(t.test.data$gardenA, t.test.data$gardenB)
data_2 <- c(t.test.data[,1], t.test.data[,2]) # data_1 의 다른 방법

label <- factor(c(rep("A", 10), c(rep("B", 10))))

boxplot(data~label, notch=T, col='gray')

## 독립된 두 표본 집단의 t-test
mean_sd = sqrt(sd(t.test.data[,1])^2/10 + sd(t.test.data[,2])^2/10)
(mean(t.test.data[,1]) - mean(t.test.data[,2])) / mean_sd

t.test(t.test.data[,1], t.test.data[,2])

## 동일 표본 집단
stream <-read.table("streams.txt", header = T)
t.test(stream[,1], stream[,2]) # 독립 표본 t-test (동일 표본과 맞지 않는다.)

t.test(stream[,1], stream[,2], paired = TRUE) # 동일 표본 t-test 방법 1

stream_diff = stream[,1] - stream[,2] # 동일 표본 t-test 방법2
t.test(stream_diff)

## LAB
data_1 <- c(25, 21, 20, 24, 32, 25, 18, 11, 22, 30)
data_2 <- c(12, 20, 17, 21, 26, 28, 20, 13, 18, 20)

t.test(data_1, data_2)

## 분산 분석 (ANOVA)
result <- read.csv("yields.csv", header=T)
new_result<-stack(result)
names(new_result)<-c('yield','soil')

summary(aov(new_result$yield~new_result$soil))

## 회귀 분석
lm_women <- lm(weight ~ height, data=women)
lm_women
summary(lm_women) # 통계적 유의성 확인

plot(women$height, women$weight)
abline(lm_women)

# 회귀식을 기반으로 추정하기
new_data <- data.frame(height = 75)
new_data
predict(lm_women, newdata = new_data)

# 2개의 독립 변수 - 추정
new_data <- data.frame(height = c(75, 65))
predict(lm_women, newdata = new_data)
