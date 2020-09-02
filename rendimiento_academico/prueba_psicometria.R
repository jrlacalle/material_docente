library(purrr)
library(repurrrsive)

x <- c("apple", "banana", "pear")
str_view(x, "an")
p[[1]]
str_detect(x,"CAACB")

str_length(x)
x <- c("BDACD")
y <- c("CAACB")
p1 <- str_split(x,"")
p2 <- str_split(y,"")
q1 <- unlist(p1)
q2 <- unlist(p2)
q2 %in% q1
str_detect(q1,q2)
sum(str_detect(q1,q2))
sum(!str_detect(q1,q2))

str_count(q1,q2)
