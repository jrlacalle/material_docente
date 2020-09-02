x <- seq(-4,4,length.out = 101)
y <- dnorm(x)
preg <- data.frame(x,y)
with(preg,plot(x,y,type = "l", ylab = "Densidad"))
abline(h=0)

region.x <- preg$x[!(preg$x>-1.96 & preg$x<1.96)]
region.y <- preg$y[!(preg$x>-1.96 & preg$x<1.96)]
polygon(region.x,region.y, density = 10, col = "red")