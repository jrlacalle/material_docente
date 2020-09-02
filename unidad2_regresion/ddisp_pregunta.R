# Sintaxis para crear el gráfico de la pregunta en prueba de preparación
# Identificar el diagrama que corresponde a una correlación de 0,45
corrdata <- function(samples=200,r=0){
  data <-  mvrnorm(n=samples, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  X <-  data[, 1]  # standard normal (mu=0, sd=1)
  Y <-  data[, 2]  # standard normal (mu=0, sd=1)
  data.frame(x=X,y=Y)
}

df=data.frame()
for (i in c(-0.8,0.9,0.45)){
  tmp <- corrdata(50,i)
  tmp['corr'] <- i
  df <- rbind(df,tmp)
}
ddisp <- c(rep("Graf. 1",50),rep("Graf. 2",50),rep("Graf. 3",50))
df <- data.frame(df,ddisp)
g <- ggplot(df,aes(x=x,y=y))+geom_point(size=1)
g+facet_wrap(~corr)
g+facet_wrap(~as.factor(ddisp))
gsave("")