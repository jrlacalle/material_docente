library(dagitty)
dag <- dagitty("dag {
  SEXO
  EDAD
  ESTATURA
  TABACO
  VEF
               }")
plot( graphLayout( dag ) )