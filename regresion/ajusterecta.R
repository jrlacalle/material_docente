# Grafico 1
x1 <- c(1,2,3)
y1 <- c(1,2,3)
ml1 <- data.frame(x1,y1)
rl1<-lm(y1~x1)
coef(rl1)
residuals(rl1)

# Grafico 2
x2 <- c(1,1,2)
y2 <- c(1,1,3)
rl2<-lm(y2~x2-1)
coef(rl2)
residuals(rl2)

# Gráfico 3
x3 <- c(1,1,2,2)
y3 <- c(1,1,2,2)
rl3<-lm(y3~x3-1)
coef(rl3)
residuals(rl3)

# Gráfico 4
x4 <- c(1,2,3,3,4,5)
y4 <- c(2,3,1,3,2,3)
rl4<-lm(y4~x4)
coef(rl4)
residuals(rl4)
