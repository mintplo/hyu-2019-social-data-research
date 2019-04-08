# Array
first_test <- matrix(c(46,30,21,25,50,50), ncol=2, nrow=3)
second_test <- matrix(c(47,43,41,35,50,50), ncol=2, nrow=3)

tests <-array(data=c(first_test, second_test),dim=c(3,2,2))
tests

dimnames(tests) <- list(paste("row", c(1:3)), paste("col", c(1:2)),paste("ar",c(1:2)))
tests

length(tests)
mode(tests)
dim(tests)
dimnames(tests)

tests
tests[1,1,1]
tests[1,2,2]
tests[2,2,1]
tests[3,1,2]