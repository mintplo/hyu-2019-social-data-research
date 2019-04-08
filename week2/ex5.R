scan() # 값 입력

scan(what="")

x <- scan() # 입력된 값 변수 저장
x

# Fix Error...!
M <- matrix(1:8, nrow=4)
DF <- as.data.frame(M)
#fix(DF)

student_list <- read.table(file.choose(), header=T)