* Rutina para generar distribuciones asimétricas
* Uso en las pruebas de preparación de Bioestadística
* Distribución normal media 65 dt 40
set obs 1000
gen x =rnormal(65,30)
histogram x, xtitle(" ") xlabel(0 25 50 65 75 100 120) title("Dist. A") ///
freq bin(10) ytitle(Frecuencia)
graph save graf_a.gph, replace
quiet{
summarize x, detail
}
local i r(p50)
* Distribución asimetría positiva mediana 65
gen x2=x
replace x2=x-(x-`i')/3 if x>95
histogram x2, xtitle(" ") xlabel(0 25 50 65 75 100) title("Dist. B") ///
freq bin(10) ytitle(Frecuencia)
graph save graf_b.gph, replace
* Distribución asimetría negativa mediana 65
gen x3=x
replace x3=x+(`i'-x)/3 if x<30
histogram x3, xtitle(" ") xlabel(0 25 50 65 75 100 120) title("Dist. C") ///
freq bin(10) ytitle(Frecuencia)
graph save graf_c.gph, replace
graph combine "E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_1\graf_a.gph" "E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_1\graf_b.gph" "E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_1\graf_c.gph"
