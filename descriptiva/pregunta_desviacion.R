# Pregunta prueba de preparación
# COmparar la variabilida de dos muestras
library(ggplot2)
x <- c(rep(3,3),4,5,6,rep(7,3),1,2,3,4,rep(5,3),6,7,8,9)
grupo <- c(rep("A",9),rep("B",11))
dpunto <- data.frame(x,grupo)
ggplot(data = dpunto, aes(x=x)) +
  geom_bar(width = 0.3) +
  ylab("Frecuencia") +  
  scale_x_continuous(breaks = c(1:10)) +
  facet_wrap(.~grupo) +
  theme_bw()