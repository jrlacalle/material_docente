# Ordenes para leer el fichero original con los datos
# Datos tomados del artículo http://jse.amstat.org/v4n1/datasets.johnson.html
setwd("~/material_docente/unidad2_regresion")
grasacorp <- read.table("~/material_docente/unidad2_regresion/fat.dat.txt", quote="\"", comment.char="")
names(grasacorp) <- c("id","brozek.%grasa", "siri.%grasa","densidad",
                      "edad","peso","altura","imc","peso.magro","cuello","torax","abdomen",
                      "cadera","muslo","rodilla","tobillo","biceps","antebrazo","mu_eca")
grasacorp$peso <- round(grasacorp$peso*0.453592,1)
grasacorp$peso.magro <- round(grasacorp$peso.magro*0.453592,1)
grasacorp$altura <- round(grasacorp$altura*0.0254,2)
save(grasacorp, file="grasacorp.RData")
