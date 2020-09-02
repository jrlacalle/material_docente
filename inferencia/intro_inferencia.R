# Máster EECC
# Sesión sobre inferencia
library(ggplot2)
# 1 Normal simple
ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun = dnorm, size = 2) +
  geom_vline(xintercept = 0, color="red") +
  scale_x_continuous(name = "Valor de z",
                     breaks = seq(-4, 4, 1),
                     limits=c(-4, 4)) +
  scale_y_continuous(name = "Densidad") +
  theme_bw()
# 2 Normal con regiones críticas y de rechazo
region <- function(x) {
  y <- dnorm(x)
  y[x < -1.6 | x > 1.6] <- NA
  return(y)
}
ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun=region, geom="area", fill="#84CA72", alpha=0.5) +
  stat_function(fun = dnorm, size = 2) +
  geom_vline(xintercept = 0, color="red") +
  scale_x_continuous(name = "Valor de z",
                     breaks = seq(-4, 4, 1),
                     limits=c(-4, 4)) +
  scale_y_continuous(name = "Densidad") +
  theme_bw() 
# 3 Dos curvas normales próximas
ggplot(data.frame(x = c(0, 1)), aes(x = x)) +
  stat_function(fun = dnorm, args = list(0.60,0.05),
                colour = "deeppink") + 
  stat_function(fun = dnorm, args = list(0.70,0.05),
                colour = "dodgerblue3") + 
  geom_vline(xintercept = c(0.6,0.7) ) +
  scale_x_continuous(name = "Valor de z",
                     breaks = seq(0, 1, 0.2),
                     limits=c(0, 1)) +
  scale_y_continuous(name = "Densidad")  +
  theme_bw() + 
  annotate("text", x = 0.4, y = 3, label = "Situación A")
# 4 Dos curvas alejadas
ggplot(data.frame(x = c(0, 1)), aes(x = x)) +
  stat_function(fun = dnorm, args = list(0.15,0.1),
                colour = "deeppink") + 
  stat_function(fun = dnorm, args = list(0.7,0.05),
                colour = "dodgerblue3") + 
  geom_vline(xintercept = c(0.15,0.7) ) +
  scale_x_continuous(name = "Valor de z",
                     breaks = seq(0, 1, 0.2),
                     limits=c(0, 1)) +
  scale_y_continuous(name = "Densidad") +
  theme_bw() +
  annotate("text", x = 0.4, y = 3, label = "Situación B")
# 5 Región de aceptación y crítica
regcritica <- function(x) {
  y <- dnorm(x)
  y[x > -1.96 & x < 1.96] <- NA
  return(y)
}
ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun=regcritica, geom="area", fill="#84CA72", alpha=0.5) +
  stat_function(fun = dnorm, size = 2) +
  geom_vline(xintercept = c(-1.96,1.96), color="red") +
  scale_x_continuous(name = "Valor de z",
                     breaks = seq(-4, 4, 1),
                     limits=c(-4, 4)) +
  scale_y_continuous(name = "Densidad") +
  theme_bw() +
  annotate("text", x = c(-3.0,-0,2.8), y = 0.1, label = c("R. critica", "R. aceptación","R. crítica"))
# 6 Dos regiones críticas
ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun = dnorm) +
  geom_vline(xintercept = c(-3,3), colour="blue") +
  geom_vline(xintercept = c(-2,2), colour="red") +
    scale_x_continuous(name = "Valor de z",
                     breaks = seq(-4, 4, 1),
                     limits=c(-4, 4)) +
  scale_y_continuous(name = "Densidad") +
  theme_bw() +
  annotate("text", x = c(-3.7,-1.5), y = 0.3, label = c("Reg. B", "Reg. A"))


