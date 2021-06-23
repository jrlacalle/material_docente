# Diagrama A
x1 <- c(1,2,3)
y1 <- c(1,2,3)
plot(x1,y1, xlim=c(0,3), ylim=c(0,3), pch=16)
lm(y1 ~ x1)
abline(lm(y1 ~ x1), col="RED")

# Diagrama B
x2 <- c(1,1,2)
y2 <- c(1,2,2)
plot(x2,y2, xlim=c(0,3), ylim=c(0,3), pch=16)
lm(y2 ~ x2)
abline(lm(y2 ~ x2), col="RED")

# Diagrama C
x3 <- c(1,1,2,2)
y3 <- c(1,2,1,2)
plot(x3,y3, xlim=c(0,3), ylim=c(0,3), pch=16)
lm(y3 ~ x3)
abline(lm(y3 ~ x3), col="RED")

# Diagrama D
x4 <- c(1,2,3,3,4,5)
y4 <- c(2,3,1,3,2,3)
plot(x4,y4, xlim=c(0,6), ylim=c(0,4), pch=16)
lm(y4 ~ x4)
abline(lm(y4 ~ x4), col="RED")