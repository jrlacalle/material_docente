library(readxl)
library(stringr)
library(tidyverse)
library(purrr)
library(repurrrsive)
library(lubridate)
library(magrittr)

examen <- read_excel("med_pg_a.xls", sheet = "<Notas>")
colnames(examen) <- tolower(colnames(examen))
examen <- as.data.frame(examen[,2:9]) 
examen$answer <- character(10)
examen$answer<- substr(prueba[,8],1,10)
test <- examen
test$d.n.i <- as.numeric(row.names(test))
test <- test[,c(9,10)]
dput(test[1:5,])

examen$p1 <- substr(examen[,9],1,10)

examen <- examen %>% 
  mutate(p1=strsplit(answer,""))


examen$v_1 <- character(1)
examen$v_1 <- examen$p1[[1]]
for (i in 1:30){
  paste("examen$v_",i,sep = "") <- character(1)
  paste("examen$v_",i, sep="") <- examen$p1[[i]]
}

names(examen$p1) <- c("v1","v2","v3","v4","v5","v6","v7","v8","v9","v10")
examen %>% 
exa2 <- tibble(
  v1=map_chr(examen$p1,"v1")
)

unlist(examen$p1)

map(examen$p1[1:5],table)

map_chr(examen$p1[1:5],table)
map_chr(examen$p1, head)



examen$p1
examen$p1[3]
examen$p1[[3]]
str(examen$p1,max.level=1)
str(examen$p1[[3]],max.level=1)


str(examen$p1[[2]],max.level = 1)

examen <- examen %>% 
  mutate(p1=strsplit(prueba,"")) %>% 
  map(p1,table) 
examen$p2

examen %>% 
map_dfr(p1, extract, c("r1","r2","r3","r4","r5"))

sw_characters

