library(tidyverse)

s <-numeric(100)

norm_sim <- function(x){
  x <- rnorm(10,100,10)
}

test <- lapply(s, norm_sim)
test2 <- lapply(test, mean)
length(test[[1]])
nmuestra <- seq(10,100,10)


ic_s <- numeric(1)
ic_i <- numeric(1)
ic_s <- function(valor,n_muestra) {
  ic_s <- mean(valor)+ (sd(valor)/sqrt(n_muestra)*qnorm(0.975,0,1))
}
prueba <- data.frame

(ic_s(x,10))

for (i in nmuestra) {
  ic_s[i] <- qnorm(0.975,100,10)
  ic_i[i] <- qnorm(0.025,100,10)
  
}

