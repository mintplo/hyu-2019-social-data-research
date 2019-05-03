# Data import
data <- read.table("./ozone.data.txt", header = TRUE)

# Plotting Data first
plot(data)

# Correlation
data_cor <- cor(data)

# Install Correlation Plotting Library
install.packages("corrplot")
library(corrplot)

# Round floatting point to 2
round(data_cor, 2)

# Correlation Plotting with each options
corrplot(data_cor, diag=F)
corrplot(data_cor, method="number")
corrplot(data_cor, method="number", type="lower", diaㅂg=F)
