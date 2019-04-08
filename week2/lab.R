# Lab 1
x = matrix(1:4, nrow=2)
y = t(x)

2*x # 2 스칼라 곱

x + y
x * y

t(y)
solve(y)

# Lab 2
x = c(1:100)
y = c(1:100)
z = x+(2*y)

xyz = data.frame(x, y, z)
class(xyz)
is.data.frame(xyz)
is.list(xyz)

# Lab 3
xyz = data.frame(x, y, z)
is.numeric(xyz)
xyz <- xyz[,-1:-2]
is.numeric(xyz)

xyz = data.frame(x, y, z)
xyz <- xyz[-1:-2]
is.numeric(xyz)
is.data.frame(xyz)

plot(xyz)

# Lab 4
j <- list(name="Joe", salary=55000, union=T)
j$name
j[[2]]
j[[3]]<-F
j

# Lab 5
cars
class(cars)
head(cars)
plot(cars)
is.list(cars)
m_cars = as.matrix(cars)
is.list(m_cars)
d_m_cars = as.data.frame(m_cars)
d_m_cars