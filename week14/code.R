## Factor Analysis

library(psych)
library(GPArotation)

car_data <- read.csv("EFA.csv", header = T)
head(car_data)

car_factors <- factanal(car_data, factors = 4)
car_factors

## Scree Plot
#install.packages("psy")

library(psy)
scree.plot(car_factors$correlation)

## for Bottom Codes
library(MASS)

## Chi-square Test

table(survey$W.Hnd)
chisq.test(table(survey$W.Hnd), p=c(.2,.8)) # p=c(.2,.8) 각각에 대한 기대 빈도 왼손 20% : 오른손 80% 비율이냐?

# p-value 0.05보다 작으므로 Left H 20%, Right H 80%의 비율일것이라는 귀무가설을 기각
# 대립가설 채택 (왼손 20% : 오른손 80% 비율이 아니다)

## Mann-Whitney U Test
head(immer)
wilcox.test(immer$Y1, immer$Y2, paired=TRUE) # 귀무가설: 두 집단이 동일하다. (두개의 독립된의 차이를 검정)

## Shapiro-Wilk Test (표본이 정규분포로부터 추출된 것인지 테스트하기 위한 방법)
shapiro.test(rnorm(1000)) # 귀무가설은 표본이 정규 분포를 따른다는 것

## kolmogorov-Smirnov Test : 귀무가설 (두 분포는 차이가 없다.)
ks.test(rnorm(100), rnorm(100))
ks.test(rnorm(100), runif(100)) # runif 균등 분포

## McNemar Test : 어떤 실험변수의 효과를 두번 (사전, 사후)의 측정을 통해서 차이를 검정 - 귀무가설: (실험 변수에 의한 전, 후 측정결과는 차이가 없다.)
performance <- matrix(c(794, 86, 150, 570), nrow = 2, dimnames = list("Before" = c("Approve", "Disapprove"), "After" = c("Approve", "Disapprove")))
mcnemar.test(performance)
