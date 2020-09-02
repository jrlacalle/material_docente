library(ggplot2)

preg <- ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun = dnorm, n = 101, args = list(mean=0, sd=1))

preg 

funcShaded <- function(x) {
  y <- dnorm(x,mean = 0,sd=1)
  y[x > -1.96 & x < 1.96] <- NA
  return(y)
}

preg <- preg + stat_function(fun=funcShaded, geom="area", fill="red") +
scale_y_continuous("Densidad") +
theme_bw() 

preg
