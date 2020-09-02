set obs 50
egen int id = seq(), from(1) to(50)
matrix input Corr=(1,0.9,0.4\0.9,1,0.0\0.4,0.0,1)
corr2data a b c, corr(Corr) 
/* gen c=2+1.5*a
gen d=4-0.5*a */
twoway (scatter b a, sort), title("Gráfico I")
graph save graf1, replace
twoway (scatter c a, sort), title("Gráfico II")
graph save graf2, replace
twoway (scatter b c, sort), title("Gráfico III")
graph save graf3, replace
graph combine "E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_2\graf1.gph" ///
"E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_2\graf2.gph" ///
"E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_2\graf3.gph"
graph export grafpp2_13.png, replace
matrix input e =(1, 0.8\0.8, 1)
corr2data e f, corr(e) cstorage(full)
twoway (scatter f e, sort xtitle("A") ytitle("B"))
matrix input h =(1, 0.1\0.1, 1)
corr2data h k, corr(h) cstorage(full)
twoway (scatter h k, sort xtitle("A") ytitle("B"))
graph save Graph "E:\Trabajo_JR\Docencia\Esqclases\Medicina\pruebaspreparacion\pp_2\graf4.gph", replace
