# Rutina para expandir un archivo con datos almacenados en forma de frecuencias
datos <- data.frame(fumador=c(1,1,2,2,1,1,2,2),
                    enfcard=c(rep(c(1,0),4)),
                    sexo=c(rep(1,4), rep(2,4)),
                    frecuencia=c(150,900,75,950,100,850,50,925))
head(datos)
datos.expanded <- datos[rep(row.names(datos), datos$frecuencia), 1:3]
filas <- sample(nrow(datos.expanded), replace = F)
chicuadrado <- datos.expanded[filas,]
row.names(chicuadrado) <- 1:nrow(datos.expanded)
haven::write_sav(chicuadrado, "chicuadrado.sav")