library(tidyverse)
pesonacer.2018 <- nacabrv.2018 %>% 
  select(c(PROI,MESPAR,MULTIPLI,SEMANAS,SEXO,PESON)) 
save(pesonacer.2018, file="pesonacer_2018.RData")
load("pesonacer.RData")
