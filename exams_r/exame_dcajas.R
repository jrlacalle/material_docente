library(tidyverse)
caja <- data.frame(x=as.factor(rep(1,5)), a = c(93,97,103,115,222), b = c(81,94,109,117,122), c = c(93,95,99,110,132))
ggplot(data=caja, aes(x,a))+
  geom_boxplot() +
  scale_y_continuous(limits=c(75,240))
ggplot(data=caja, aes(x,b))+
  geom_boxplot() +
  scale_y_continuous(limits=c(75,240))
ggplot(data=caja, aes(x,c))+
  geom_boxplot() +
  scale_y_continuous(limits=c(75,240))
