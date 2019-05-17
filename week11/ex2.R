# airquality 데이터를 이용하여 다음을 수행하시오.

# x축을 Temp, y축을 Ozone으로 해서 산포도를 그리시오.
# § 단, x축 label은 “Temp”, y축 label은 “Ozone & Solar.R”, 그래프 제목 은 “airquality”로 하고, 점은 검은 dot(pch=20)을 사용하시오.
plot(airquality$Temp, airquality$Ozone, xlab='Temp', ylab='Ozone & Solar.R', main='airquality', pch=20)

# 앞의 그래프에 x축을 Temp, y축을 Solar.R로 해서 점들을 추가하시오.
# § 단, 점의 모양은 “+”로 하고 점의 색은 파랑색으로 하시오.
with(airquality, {
  plot(Temp, Ozone, xlab='Temp', ylab='Ozone & Solar.R', main='airquality', pch=20)
  points(Temp, Solar.R, pch='+', col="blue")
})

# Temp, Ozone, Solar.R 각각의 최소값, 최대값을 구하시오.
# Temp의 최소값, 최대값을 기준으로 x축의 범위를 결정하시오.
# Ozone, Solar.R의 최소값과 최대값을 기준으로 y축의 범위를 결 정하시오.
# 이 범위들을 활용하여 빈 그래프를 만들시오.
# § 단 그래프의 제목은 “Airquality”, x축 레이블은 “Temp”, y축 레이블은 “Ozone & Solar.R”로 하시오.
with(airquality, {
  plot(
    NULL,
    xlab='Temp',
    ylab='Ozone & Solar.R',
    main='Airquality',
    xlim=c(min(Temp, na.rm=TRUE),max(Temp, na.rm=TRUE)),
    ylim=c(min(Ozone, Solar.R, na.rm=TRUE), max(Ozone, Solar.R, na.rm=TRUE))
  )
  points(Temp, Ozone, pch=20)
  points(Temp, Solar.R, pch='+', col="blue")
})