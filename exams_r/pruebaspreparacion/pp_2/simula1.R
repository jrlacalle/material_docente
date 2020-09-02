
d <- data.frame(x = sort(runif(100, -1, 1)))
a <- 0
b <- sample(c(-1, 1), 1) * sample(c(0, 0.6, 0.9), 1)
d$y <- a + b * d$x + rnorm(100, sd = 0.25)
write.csv(d, "regression.csv", row.names = FALSE, quote = FALSE)
plot(d$x,d$yb)

m <- lm(y ~ x, data = d)
bhat <- coef(m)[2]
bpvl <- summary(m)$coefficients[2, 4]
bsol <- c(bpvl >= 0.05, (bpvl < 0.05) & (bhat > 0), (bpvl < 0.05) & (bhat < 0))
    