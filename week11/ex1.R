ozone <- read.csv("./Ozone.csv")
plot(ozone$V8, ozone$V9)

data(cars)
head(cars)

plot(cars, type="l")
plot(cars, type="b")

plot(tapply(cars$dist, cars$speed, mean), type="o", cex=0.5, xlab="speed", ylab="dist")

opar <- par(mfrow=c(1,2))
plot(ozone$V8, ozone$V9, xlab='Sandberg Temparature', ylab='El Monte Temparature', main='Ozone')
plot(ozone$V8, ozone$V9, xlab='Sandberg Temparature', ylab='El Monte Temparature', main='Ozone2')
par(opar)
plot(cars)

par(mfrow=c(1,2))
par()
par(mfrow=c(1,1))

# jitter
plot(jitter(ozone$V6), jitter(ozone$V7), xlab="Windspeed", ylab="Humidity", main="Ozone",pch=20, cex=.5)


## Lab1

# airquality 데이터 집합을 사용하여 다음을 수행하시오.
plot(airquality)
# x축을 Temp, y축을 Ozone으로 해서 산포도를 그리시오.
plot(airquality$Temp, airquality$Ozone)

# x축 이름을 Temp, y축 이름을 Ozone 으로 바꾸시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone')
# 그래프 제목은 “Relationship between Temp and Ozone”으로 바꾸시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone')

# 점의 종류를 삼각형으로 바꾸시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', pch=2)
# 점의 크기를 두 배로 하시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', pch=2, cex=2)

# 점의 색을 보라색으로 바꾸시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', pch=2, cex=2, col='violet')

# Temp의 최소값, 최대값을 확인하시오.
min(airquality$Temp, na.rm=TRUE) # 56
max(airquality$Temp, na.rm=TRUE) # 97

# Ozone의 최소값, 최대값을 확인하시오.
min(airquality$Ozone, na.rm=TRUE) # 1
max(airquality$Ozone, na.rm=TRUE) # 168

# Temp의 범위를 50부터 100으로 조정하시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', pch=2, cex=2, col='violet', xlim=c(50, 100))
# Ozone의 범위를 0부터 170으로 조정하시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', pch=2, cex=2, col='violet', xlim=c(50, 100), ylim=c(0, 170))

# 그래프에 점과 선이 중첩되도록 수정하시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', pch=2, cex=2, col='violet', xlim=c(50, 100), ylim=c(0, 170), type='o')

# 추세를 보기 위해서 동일한 Temp 값에 대하여 평균을 구하여 그래프를 구하시오.
plot(tapply(airquality$Temp, airquality$Ozone, mean), xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', type='o')

# 선 유형을 점선(dashed)으로 변경하시오.
plot(tapply(airquality$Temp, airquality$Ozone, mean), xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', type='o', lty="dashed")

# x축은 Temp, y축은 Solar.R로 해서 앞서 만든 그래프와 유사 한 그래프를 만들고 한 화면(1행 2열)에 출력하시오.
par(mfrow=c(1,2))
plot(tapply(airquality$Temp, airquality$Ozone, mean), xlab='Temp', ylab='Ozone', main='Relationship between Temp and Ozone', type='o', lty="dashed")
plot(tapply(airquality$Temp, airquality$Solar.R, mean), xlab='Temp', ylab='Solar.R', main='Relationship between Temp and Solar.R', type='o', lty="dashed")

# x축은 Temp, y축은 Wind로 해서, x축 이름, y축 이름, 제목을 부여해서 그래프를 만드시오.
# Reset mfrow
par(mfrow=c(1,1))
plot(airquality$Temp, airquality$Wind, xlab='Temp', ylab='Wind', main='Relationship between Temp and Wind')
# 각 값들에 노이즈를 추가하여 그래프를 만드시오.
plot(jitter(airquality$Temp), jitter(airquality$Wind), xlab='Temp', ylab='Wind', main='Relationship between Temp and Wind')
