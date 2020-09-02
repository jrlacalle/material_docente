library(tidyverse)
x <- runif(100,5,25)
e1 <- rnorm(100,0,1)
e2 <- rnorm(100,0,1)
y1 <- 2+0.8*x+e1
y2 <- 15+0.8*x+e2
reg1 <- data.frame(x,y1,y2)
ggplot(reg1,aes(x,y1))+
  geom_point() +
  scale_y_continuous(limits = c(5,40))
ggplot(reg1,aes(x,y2))+
  geom_point() +
  scale_y_continuous(limits = c(5,40))

ggplot(reg1)+
  geom_point(aes(x,y1), shape=4) +
  geom_point(aes(x,y2), shape=19) +
  geom_smooth(aes(x,y1), color="blue") +
  geom_smooth(aes(x,y2), color="red", linetype="dashed") +
    scale_y_continuous(limits = c(5,40))
cor(x,y1)
cor(x,y2)