x <- sample(4:16,12,replace=T)
mean(x)
table(x)
IQR(x)
y <- sample(3:18,12,replace=T)
y
mean(y)
table(y)
IQR(y)
stripchart(y)
stripchart(x, method = "stack")
x
