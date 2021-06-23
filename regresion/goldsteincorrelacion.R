R <-  matrix(cbind(1,.80,.80,1),nrow=2)
U <-  t(chol(R))
nvars <-  dim(U)[1]
numobs <-  40
set.seed(1)
## Estímulo pequeño
random.normal <-  matrix(rnorm(nvars*numobs,414480.4,98321), nrow=nvars, ncol=numobs);
X <-  U %*% random.normal
newX <-  t(X)
raw <-  as.data.frame(newX)
orig.raw <-  as.data.frame(t(random.normal))
names(raw) <-  c("V1","V2")
cor(raw)
plot(head(raw, 40))
plot(head(orig.raw,40))
with(raw,t.test(V1,V2,paired = T))
summary(raw)
raw$V3 <- with(raw, V2-V1)
with(raw,summary(V3))
#
## Estimulo grande
random.normal <-  matrix(rnorm(nvars*numobs,599357.9,74185), nrow=nvars, ncol=numobs);
X <-  U %*% random.normal
newX <-  t(X)
raw <-  as.data.frame(newX)
orig.raw <-  as.data.frame(t(random.normal))
names(raw) <-  c("V4","V5")
cor(raw)
plot(raw, 40)
plot(orig.raw,40)
with(orig.raw,t.test(V1,V2,paired = T))
summary(raw)
raw$V6 <- with(raw, V4-V5)
with(raw,summary(V6))