plot(airquality$Temp, airquality$Wind, xlab='Temp', ylab='Wind', main='airquality', pch=20)

abline(a=23.2, b=-0.1705, col='red')
abline(v=mean(airquality$Temp), lty='dashed')
abline(h=mean(airquality$Wind), lty='dashed')

plot(cars, cex=.5)
identify(cars$speed, cars$dist)

# Text Lab, Identify Lab Skip - it will be checked

# Legend Lab ===
# airquality 데이터를 이용해서 다음을 답하시오.
# x=Temp, y=Ozone, 점 모양은 pch=20으로 해서 점들을 표시하시오.
# x=Temp, y=Solar.R, 점 모양은 “+”, 점 색은 파랑색으로 해서 점들을 표시 하시오.
# 단 범위는 x는 50~100, y는 0~350로 하시오.
# legend를 좌측 상단에 표시하시오. 배경은 노랑색으로 하시오.

plot(airquality$Temp, airquality$Ozone, pch=20, xlim=c(50, 100), ylim=c(0, 350))
points(airquality$Temp, airquality$Solar.R, pch='+', col='blue')

legend("topright", legend=c("Ozone","Solar.R"), pch=c(20,43), col=c("black","blue"), bg="yellow")

# Box plot, Hist Lab, Mosaic Plot Skip - it will be checked