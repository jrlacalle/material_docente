library(tidyverse)
library(purrr)
library(repurrrsive)
library(magrittr)
calificaciones <- read_excel("~/material_docente/prueba_calificaciones.xls")
colnames(calificaciones) <- tolower(colnames(calificaciones))
califica <- as.data.frame(calificaciones) %>% 
  group_by(d.n.i.) %>%
  summarise(total=sum(nota.transformada)) %>% 
  mutate(calif=(total/nrow(calificaciones))*10)
ggplot(califica, aes(calif)) +
  geom_histogram(binwidth = 1) +
  scale_x_continuous("Calificaciones", breaks= (c(0,5,6,7,8,9,10))) +
  scale_y_continuous("Número")str_split
califica <- califica %>% 
mutate(p1=str_split(prueba,""))
p1 <- str_split(calificaciones$prueba, "")
p1[[4]]
p1[4]
r1 <- p1 %>% 
  map_chr(1)
map_dfr(p1, extract, c("r1","r2","r3","r4","r5"))

