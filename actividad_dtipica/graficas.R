# Gráficas para la actividad sobre desviación típica 
# Asignatura Bioestadística

# if(!require(devtools)) install.packages("devtools")
# devtools::install_github("kassambara/ggpubr")

library(ggplot2)
library(ggpubr)

# Grafico 1
g1 <- data.frame(a = c(0,rep(1,6),rep(2,3),3,rep(4,3)))
g2 <- data.frame(b = c(rep(0,6),rep(1,3),2,rep(3,3),rep(4,6)))

g1a <- ggplot(g1,aes(x=factor(a)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="A")+
  theme_minimal()
# ggsave(g1a.png)       

g1b <- ggplot(g2,aes(x=factor(b)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="B")+
  theme_minimal()
# ggsave(g1b.png)       

ggarrange(g1a, g1b, 
          labels = c("A", "B"),
          ncol = 2, nrow = 1)
# Grafico 2
x <- c(rep(3,5),rep(4,6),rep(5,4),rep(6,3),rep(7,5),rep(8,4))
y <- c(rep(3,2),rep(4,3),rep(5,5),rep(6,6),rep(7,4),8)

ggplot(g1,aes(x=factor(a)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="A")+
  theme_minimal()
ggsave(g2a.png)       


ggplot(g2,aes(x=factor(b)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="B")+
  theme_minimal()
ggsave(g2b.png)       

# Grafico 3
x <- c(3,rep(4,6),rep(5,4),rep(6,5),rep(7,3),rep(8,2))
y <- c(rep(3,2),rep(4,3),rep(5,5),rep(6,4),rep(7,6),8)

ggplot(g1,aes(x=factor(a)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="A")+
  theme_minimal()
ggsave(g3a.png)       

ggplot(g2,aes(x=factor(b)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="B")+
  theme_minimal()
ggsave(g3b.png)       

# Grafico 4
x <- c(rep(0,3),rep(1,3), rep(2,3), rep(3,3), rep(4,3), rep(5,3))
y <- c(rep(1,3), rep(2,6), rep(3,5), rep(6,4))

ggplot(g1,aes(x=factor(a)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="A")+
  theme_minimal()
ggsave(g4a.png)       

ggplot(g2,aes(x=factor(b)))+
  geom_bar(stat="count", width=0.4, fill="steelblue")+
  labs(x="Valores", y="Frecuencia")+
  annotate(geom="text", x=3,y=7, label="B")+
  theme_minimal()
ggsave(g4b.png)       

# Grafico 5
x <- c(rep(0,3),rep(1,3), rep(2,3), rep(3,3), rep(4,3), rep(5,3))
y <- c(rep(0,3), rep(5,3)
ggplot(g1,aes(x=factor(a)))+
         geom_bar(stat="count", width=0.4, fill="steelblue")+
         labs(x="Valores", y="Frecuencia")+
         annotate(geom="text", x=3,y=7, label="A")+
         theme_minimal()
ggsave(g5a.png)

ggplot(g2,aes(x=factor(b)))+
         geom_bar(stat="count", width=0.4, fill="steelblue")+
         labs(x="Valores", y="Frecuencia")+
         annotate(geom="text", x=3,y=7, label="B")+
         theme_minimal()
ggsave(g5b.png)       
