# Data Table
# install.packages("data.table") # 한번 설치하면 끝
library(data.table)

table <- data.table(x=c(1,2,3), y=c("A","B","C"))
table

# List
test <- list("kim", c(94, 62, 10), c(T,F,T))
test

son <- list(son.name=c("Minsu", "Minchul"), son.gender=c("Male", "Male"), son.age=c(2,6))
son # son$son.name, son$son.gender, son$son.age

son[[2]] #리스트의 2번째 성분

son[[3]][2] #리스트의 3번째 성분의 2번째 요소

names(son) <- c("name", "gender", "age") # son$name, son$gender, son$age
son

son[[4]] <- 28
son

son[5:6] <- c(TRUE, TRUE)
son