# R spaziale: funzioni spaziali in Eco Pa

install.packages("sp")

#con library() richiamo il pacchetto

library(sp)

#dati
data(meuse)

meuse
head(meuse)

#plot cadmium e lead


#alleghiamo dataframe
attach(meuse)

plot(cadmium,lead,col="red",pch=16,cex=2)

#cambiare etichette
plot(cadmium,lead,col="red",pch=16,cex=2,xlab="rame",ylab="zinco")

#multiframe o multipanel= mettere più di un grafico in una finestra
par(mfrow=c(1,2))
plot(copper,zinc,col="red",pch=16,cex=2,xlab="rame",ylab="zinco")
plot(cadmium,lead,col="red",pch=16,cex=2,xlab="rame",ylab="zinco")

#invertiamo i grafici
par(mfrow=c(2,1))
plot(copper,zinc,col="red",pch=16,cex=2,xlab="rame",ylab="zinco")
plot(cadmium,lead,col="red",pch=16,cex=2,xlab="rame",ylab="zinco")

#multiframe automatico
install.packages("GGally")
library(GGally)
