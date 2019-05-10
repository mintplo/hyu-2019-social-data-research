iris_subset.2 <- subset(iris, Species == 'setosa' & Sepal.Length > 5)
str(iris_subset.2)
summary(iris_subset.2)

## subset Lab
# subset() 함수를 사용하여 5월 데이터만 추출하시오.
subset(airquality, Month == 5)

# subset() 함수를 사용하여 Temp가 90을 넘어선 레코드만 추 출하시오.
subset(airquality, Temp > 90)

# subset() 함수를 사용하여 Temp가 90을 넘어선 월, 일만 추 출하시오.
subset(airquality, Temp > 90, select=c(Month, Day, Temp))

## dplyr Filter

library(dplyr)

data1 <- read.csv("baseball.csv")
data2 <- filter(data1, 경기 > 120)

data3 <- filter(data1, 경기 > 120 & 득점 > 80)
data3

data1%>%select(선수명, 팀, 경기, 타수)%>%mutate(경기X타수 = 경기*타수)%>%arrange(desc(경기X타수))

# dplyr LAB

fruits <- read.csv("Fruits.csv")
fruits

# Expenses 필드를 기준으로 값이 80 이상인 행들을 확인하시오.
filter(fruits, Expenses >= 80)
# Expenses 필드의 값이 90 보다 크고, Sales 값이 90 보다 큰 값을 갖는 행들을 확인하시오.
filter(fruits, Expenses > 80 & Sales > 90)
# Expenses 필드의 값이 90 보다 크거나 또는, Sales 값이 80 보다 큰 값을 갖는 행들을 확인 하시오.
filter(fruits, Expenses > 90 | Sales > 80)
# Expenses 필드의 값이 79와 91인 행만 확인하시오.
filter(fruits, Expenses == 79 | Expenses == 91)
fruits%>%filter(Expenses %in% c(79, 91))
# Fruit 필드의 과일 이름별 판매(Sales)량 합계를 확인하시오.
fruits%>%group_by(Fruit)%>%summarise_at(c("Sales"),sum,na.rm=T)
fruits%>%group_by(Fruit)%>%summarise_at(vars("Sales"),sum,na.rm=T)
# Fruit 필드의 과일 이름별 판매량(Sales)과 이익(Profit)의 합계를 확인하시오.
fruits%>%group_by(Fruit)%>%summarise_at(c("Sales", "Profit"),sum,na.rm=T)
fruits%>%group_by(Fruit)%>%summarise_at(vars("Sales", "Profit"),sum,na.rm=T)