# Estudio de una prueba diagnóstica
# Asigna valores iniciales
p_pre <- seq(0,1,0.1)
sen <- 0.7
esp <- 0.9
vpp <- numeric(11)
vpn <- numeric(11)
# Calcula Valores predictivos
for(i in 1:11){
  vpp[i] <- sen*p_pre[i]/(sen*p_pre[i]+(1-esp)*(1-p_pre[i]))
  vpn[i] <- esp*(1-p_pre[i])/((1-sen)*p_pre[i]+esp*(1-p_pre[i]))
}
delta <- vpp-p_pre
increm <- (delta/p_pre)*100
# Graficos
plot(p_pre,vpp, ylim=c(0,1), type="l", xlab="Probabilidad pre-prueba", ylab="Valor Predictivo +")
lines(p_pre,p_pre, col="red")
plot(p_pre,vpn, ylim=c(0,1), type="l")
lines(p_pre,1-p_pre)
