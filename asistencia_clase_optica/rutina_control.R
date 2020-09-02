library(tidyverse)
library(readr)
library(openxlsx)

temp <-  list.files(full.names=TRUE)
myfiles  <-  lapply(temp, read.csv)
asistencia <- do.call(rbind, myfiles)
resumen <- asistencia %>% 
  group_by(Username) %>% 
  summarise(numero=n()) %>% 
  write.xlsx("asist_opto.xlsx")