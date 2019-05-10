swiss # Dataset
str(swiss) #

head(swiss, 10) # 데이터의 머리부터 N개를 본다.
tail(swiss, 5) # 데이터의 꼬리부터 N개를 본다.
summary(swiss)

## apply
head(iris)
str(iris)
apply(iris[,1:4], 2, sum)
colSums(iris[,1:4])

## Lab Part 1
# swiss 데이터 각 컬럼의 평균을 colMeans() 함수를 사용하여 구하시오.
colMeans(swiss)
# swiss 데이터 각 컬럼의 평균을 apply() 함수를 사용하여 구 하시오.
apply(swiss, 2, mean) # Margin 1: Row, Margin 2: Column Scopes
# 결과를 데이터프레임으로 변환하시오.
result <- apply(swiss, 2, mean)
result = as.data.frame(result)
result
is.data.frame(result)
# swiss 데이터 각 컬럼의 평균을 lapply() 함수를 사용하여 구 하시오.
result <- lapply(swiss[, 1:6], mean) #lapply(swiss, mean)도 가능
v_result <- unnlist(result) # vector로 변환됨
m_result <- matrix(v_result, ncol=6) # matrix로 변환됨
names(m_result) <- names(swiss)
# 결과를 데이터프레임으로 변환하시오.
f_result = as.data.frame(m_result)
result
is.data.frame(result)


## tapply
tapply(iris$Sepal.Length, iris$Species, mean)
tapply(1:10,1:10 %% 2 == 1,sum)
tapply(1:10, rep(1,10), sum)

## Lab Part 2
# airquality 데이터가 어떤 데이터인지 확인하시오.
airquality
str(airquality)
summary(airquality)
# ==> Data.Frame
# 월별 평균 온도(Temp)를 tapply()를 사용하여 구하시오.
tapply(airquality$Temp, airquality$Month, mean)
# 월별 평균 오존량(Ozone)을 tapply()를 사용하여 구하시오.
tapply(airquality$Ozone, airquality$Month, mean, na.rm=TRUE) # na.rm 인자는 NA(Not Value? Not aviable)를 제외