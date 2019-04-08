# Data Frame
char1 <- c("A", "A", "B", "B", "C") #벡터 char1 생성
num1 <- c(1,1,2,2,3) #벡터 num1 생성
test1 <- data.frame(char1, num1) #test1 데이터 프레임 생성

M <- matrix(1:8, nrow=4)
DF <- as.data.frame(M)
DF

test2 <- cbind(test1, married = c(T, T, T, F, F))
test2

test3 <- rbind(test1, c("C", 4))
test3

test3[, -1] # 열의 수가 2개인 경우, 1개의 열을 삭제하면 벡터로 반환
test3

test3[-1] # 열의 수가 2개인 경우, 1개의 열을 삭제해도 데이터 프레임으로 반환
test3

test3[-1, ]
test3[-5, ]
