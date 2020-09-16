grafos
========================================================
author: Juan Ramón Lacalle
date: 
autosize: true



Introducción
========================================================

For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

- Bullet 1
- Bullet 2
- Bullet 3

Nodos
========================================================


```r
dag <- dagitty("dag{A -> B}")
# tidy_dagitty(dag)
ggdag(dag, layout = "circle")
```

![plot of chunk unnamed-chunk-1](grafos-figure/unnamed-chunk-1-1.png)

Aristas
========================================================

![plot of chunk unnamed-chunk-2](grafos-figure/unnamed-chunk-2-1.png)
Grafo dirigido
========================================================

![plot of chunk unnamed-chunk-3](grafos-figure/unnamed-chunk-3-1.png)
Grafo acíclico
========================================================

![plot of chunk unnamed-chunk-4](grafos-figure/unnamed-chunk-4-1.png)
Padre e hijo
========================================================

![plot of chunk unnamed-chunk-5](grafos-figure/unnamed-chunk-5-1.png)
Ascendiente y descendiente
========================================================

![plot of chunk unnamed-chunk-6](grafos-figure/unnamed-chunk-6-1.png)
Puerta trasera (retrógrado)
========================================================

![plot of chunk unnamed-chunk-7](grafos-figure/unnamed-chunk-7-1.png)
Colisionador
========================================================

![plot of chunk unnamed-chunk-8](grafos-figure/unnamed-chunk-8-1.png)
