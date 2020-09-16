# Pruebas de funciones con purrr
library(purrr)
library(repurrrsive)
# Preliminares
a <- 1:5*1.2
b <- letters[1:5]
d <- c(FALSE, FALSE, TRUE, TRUE)
is.numeric(a)
is.integer(a)
is.double(a)
a[0]
typeof(a[0])
class(a)
b[0]
a[10]
a[1:10]
a[d]
(b_log <- as.logical(b))
(b_num <- as.numeric(b))
(b_int <- as.integer(b))

# Listas
(x <- list(1:3, c("four", "five")))
(is.list(x))
(is.vector(x))
(is.atomic(x))
(is.recursive(x))

my_vec <- c(a = 1, b = 2, c = 3)
my_list <- list(a = 1, b = 2, c = 3)
my_vec[2:3]
my_vec[c(2,3)]
my_vec[[2:3]]
my_list[2:3]
my_list[c("b","c")]
# 1 aplicacion de funciones
## Un ejemplo sencillo
(a <- (3:5)^2)
(sqrt(a))
map(a,sqrt)
# creo tres vectores
x <- rnorm(10,5,1)
y <- rnorm(10,20,5)
z <- rnorm(10,1000,100)
n_lista <- list(x,y,z)
# Calculamos la media, produce una lista
aplica1 <- map(n_lista,mean)
# Calculamos la media, produce un vector
aplica2 <- map_dbl(n_lista,mean)
