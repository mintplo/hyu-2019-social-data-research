##
setwd("./")

autoparts <- read.csv("autoparts.csv", header = TRUE)
head(autoparts)

autoparts <- autoparts[,-c(1,3:7)]
autoparts1 <- autoparts[autoparts$prod_no=="90784-76001", c(2:11)]
autoparts2 <- autoparts1[autoparts1$c_thickness < 1000,]

m <- lm(c_thickness ~ ., data=autoparts2)
summary(m)

step_m <- step(m, direction = "forward")

summary(step_m)

## Swiss 데이터 활용 다중 회귀 분석
# 종속 변수, Fertility
# 변수 선택법을 활용한 최적 회귀식 도출

swiss
head(swiss)
names(swiss) # 변수 확인

lm_swiss = lm(Fertility~., data=swiss)
str(lm_swiss)
summary(lm_swiss)

# 회귀식을 통한 변수 선택
step_both_lm_swiss = step(lm_swiss, direction = 'both')
step_forward_lm_swiss = step(lm_swiss, direction = 'forward')
step_backward_lm_swiss = step(lm_swiss, direction = 'backward')