# R 문법

# 자료형
# - 숫자
# - 문자
# - 범주형 (factor)

# 데이터 구조
# 벡터 - c(1,2,3,4,5, ... , 100)
# 행렬 - matrix(n * m)
# 데이터 프레임 - data.frame (n * m) => 엑셀과 비슷
# 데이터 테이블
# 리스트

a = 2
b = 3
c = a+b
c

# 둘다 같다. 하지만 아래걸 추천
a = 2
a <- 2

a <- 2
b <- 4
c <- a + b
c

# 도움말 함수
help(iris)

seq(1:100)
print(c)
c
a <- c(1,2,3,4,5)
b <- c("1", "2", "3", "4", "5")

rm(c)
rm(list=ls())

a <- c(1,2,3,4,5)
a[1]
names(a)
names(a)<-c("kim", "lee", "park")
names(a)


# print 관련 Skip


#
gender <- factor("m", c("m", "f"))
gender
nlevels(gender)
levels(gender)
levels(gender)[1]
levels(gender)[2]

a <- factor(c("m", "m", "f"), c("m", "f"))
a <- factor(c("m", "m", "f"))


# Lab
a <- 10
b <- 3
c <- a * b
d <- a / b
e <- a %% b
c
d
e
rm(list=ls())

# Lab2
a <- TRUE
b <- FALSE
c <- TRUE
x <- a & b
y <- a | b
z <- !a
x
y
z
rm(list=ls())

# Lab3
a <- seq(0, 20, by=2)
length(a)
a[3]
a[-5]
a[2:7]
a[c(3,5,8)]

# Lab4
gender <- c("m", "m", "f", "m", "f")
names(gender) <- c("choi", "lee", "kim", "you", "park")
gender["lee"]
gender[c(4)]
length(gender)

# Lab5
depart <- factor(c("biz", "fin", "math", "econ"))
mydepart <- factor("biz", c("biz", "fin", "math", "econ"))
mydepart

yourdepart <- factor("fin", c("biz", "fin", "math", "econ"))
yourdepart

# Lab6
nlevels(mydepart)
levels(yourdepart)
levels(yourdepart)[3]