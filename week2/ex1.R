# Matrix
c(x,10)

m1 <- matrix(1:4, nrow=2)
m1

m2 <- matrix(5:8, nrow=2)
m2

m1%*%m2

# m1에 대한 역행렬값
solve(m1)
m1

# transpose(m1)
t(m1)
