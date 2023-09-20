rm(list=ls(all=TRUE))
## Carga paquete readxl
library(readxl)
## Importar hoja excel Menus.xlsx
Menus <- read_excel("Menus.xlsx")
## Cambia la clase del objeto Menu a un marco de datos
Menus <- as.data.frame(Menus)


## --------------------------------------------------------------------------------
## Muestra la estructura del objeto Menus
str(Menus)


## --------------------------------------------------------------------------------
## Convierte en factor la columna Empresa de l marco de datos Menu
Menus$Establecimiento <- as.factor(Menus$Establecimiento)


## --------------------------------------------------------------------------------
## Muestra la estructura del objeto Menus
str(Menus)


## --------------------------------------------------------------------------------
## Muestra los niveles del factor Establecimiento del marco de datos Menus
levels(Menus$Establecimiento)




## --------------------------------------------------------------------------------
## Importar hoja de datos excel
Censo <- read_excel("CensoGan_Madrid2009.xlsx")
## Transforma en un marco de datos
Censo <- as.data.frame(Censo)


## --------------------------------------------------------------------------------
## Muestra la estructura del objeto Censo
str(Censo)


## --------------------------------------------------------------------------------
## las primeras explotaciones
head(Censo,n=5) 


## --------------------------------------------------------------------------------
## Convierte en factor la variable Tip.Gand del marco de datos Censo
Censo$Tip.Gand <- as.factor(Censo$Tip.Gand)


## --------------------------------------------------------------------------------
## Niveles del factor Tip.Gand
levels(Censo$Tip.Gand)


## --------------------------------------------------------------------------------
## número de niveles del factor Tip.Gand
nlevels(Censo$Tip.Gand)


## --------------------------------------------------------------------------------
## Frecuencia en cada categoria de la variable Tip.Gand
frec <- table(Censo$Tip.Gand)
frec


## --------------------------------------------------------------------------------
## Frecuencia relativa en cada categoría de la variable Tip.Gand
frec.rel <- prop.table(frec)
frec.rel


## --------------------------------------------------------------------------------
## Verificamos que la suma de las frecuencias relativas es igual a 1
sum(frec.rel)


## ----tidy.opts = list(blank = FALSE, width.cutoff = 50)--------------------------
## Gráfico de frecuencias de la variable Tipo de Ganadería
barplot(frec.rel,col='red',
        main='Censo ganadero. Madrid 2009',
        xlab='Tipo de Ganadería',ylab='F. Relativa')


## --------------------------------------------------------------------------------
## Importa hoja de datos Aire_Madrid_2019.xlsx
Aire <- read_excel("Aire_Madrid_2019.xlsx", 
    col_types = c("text", "text", "numeric", 
        "numeric", "numeric", "numeric", 
        "numeric", "numeric", "numeric", 
        "numeric", "numeric"))

## Convierte el objeto Aire en un marco de datos
Aire <- as.data.frame(Aire)


## --------------------------------------------------------------------------------
## Muestra estructura del objeto Aire
str(Aire)


## --------------------------------------------------------------------------------
## Selecciona solo las estación de Barajas y el mes de Enero. Solo almacena
## las variables Dia y O3
Barajas.Ene <- subset(Aire,subset=Estacion=='Barajas' & 
     Mes=='Ene',select=c('Dia','O3'))


## --------------------------------------------------------------------------------
## Muestra que hay almacenado en el objeto Barajas.Ene
str(Barajas.Ene)


## --------------------------------------------------------------------------------
## Gráfico de puntos para la variable O3
stripchart(Barajas.Ene$O3,main='Barajas. Enero de 2019',
         xlab='Concentración de Ozono',method='stack')


## --------------------------------------------------------------------------------
## Seleciona las estaciones de Barajas, Retiro y Casa de Campo 
## Solo registros del mes de Enero y solo almacena las variables
## Estacion, Dia y O3
Esta.Ene <- subset(Aire,
     subset=Estacion%in%c('Barajas','Retiro','Casa de Campo')
     & Mes=='Ene',select=c('Estacion','Dia','O3'))


## --------------------------------------------------------------------------------
## Gráfico de puntos de la variable O3 separado para cad estación
stripchart(O3~Estacion,data=Esta.Ene,method="stack",
     main="C. Aire. Enero 2019",xlab="Ozono",
     ylab="Estaciones")


## --------------------------------------------------------------------------------
# histograma de la concentración diaria de la variable CO
hist(Aire$CO,main="Calidad del Aire. Madrid 2019",
     xlab="Concentracion de CO",ylab="Frecuencia",col="lightcyan")


## --------------------------------------------------------------------------------
## Longitud del vector Aire$CO
length(Aire$CO) 
## Longitud del vector Aire$CO eliminando los datos 
## faltantes con la funcion na.omit()
length(na.omit(Aire$CO))  


## --------------------------------------------------------------------------------
## Intervalos y frecuencias creado por la función hist()
tabla <- hist(Aire$CO,plot=FALSE)


## --------------------------------------------------------------------------------
## Límites de los intervalos creados
tabla$breaks


## --------------------------------------------------------------------------------
## Frecuencia de observaciones en cada intervalo
tabla$counts


## --------------------------------------------------------------------------------
## Verificamos que la suma es igual al total de observaciones
sum(tabla$counts)


## --------------------------------------------------------------------------------
## histograma de la variable CO
hist(Aire$CO,main="Calidad del Aire. Madrid 2019",
     xlab="Concentracion de CO",ylab="Densidad",
     col="lightcyan2",freq=FALSE)



## --------------------------------------------------------------------------------
## Importar el archivo Vivienda.xlsx
Vivienda <- read_excel("Vivienda.xlsx")
## Convierte el objeto en un marco de datos
Vivienda <- as.data.frame(Vivienda)


## --------------------------------------------------------------------------------
## Frecuencia relativa del número de habitaciones en las viviendas
tabla=prop.table(table(Vivienda$Habit))
tabla


## --------------------------------------------------------------------------------
## Diagrama de barras del número de habitaciones
plot(tabla,xlab="Número de Habitaciones",ylab="F. Relativa",
     main="Viviendas en venta ",frame=FALSE)



## --------------------------------------------------------------------------------
## Media de la variable CO en Madrid durante 2019
med.CO <- mean(Aire$CO,na.rm=TRUE)
## Muestra el valor almacenado en med.CO
med.CO


## --------------------------------------------------------------------------------
## Histograma de la variable CO y su valor medio
hist(Aire$CO,freq=FALSE,xlab="Concentración de CO",
     ylab="Densidad")
abline(v=med.CO,col="red",lty=2)




## --------------------------------------------------------------------------------
## Mediana de la variable O3 en Barajas en el mes de Enero
median(Barajas.Ene$O3)


## --------------------------------------------------------------------------------
## media de la variable PM2.5
med.PM2.5 <- mean(Aire$PM2.5,na.rm=TRUE)
## mediana de la variable PM2.5
medn.PM2.5 <- median(Aire$PM2.5,na.rm=TRUE)
## histograma
hist(Aire$PM2.5,freq=FALSE,xlab="Concentración de PM2.5",
     ylab="Densidad",main="")
abline(v=med.PM2.5,col="red",lty=2,lwd=2)
abline(v=medn.PM2.5,col="blue",lty=2,lwd=2)


## --------------------------------------------------------------------------------
## Logaritmo de la variable PM2.5 
Aire$lPM2.5 <- log(Aire$PM2.5)


## --------------------------------------------------------------------------------
## media de la variable lPM2.5
med.lPM2.5 <- mean(Aire$lPM2.5,na.rm=TRUE)
med.lPM2.5


## --------------------------------------------------------------------------------
## mediana de la variable lPM2.5
medn.lPM2.5 <- median(Aire$lPM2.5,na.rm=TRUE)
medn.lPM2.5


## --------------------------------------------------------------------------------
# histograma, la media y la mediana de la variable transformada lPM2.5
hist(Aire$lPM2.5,xlab="Log de concentración de PM2.5",
     freq=FALSE,ylab="Densidad",main="",breaks=10)
abline(v=med.lPM2.5,col="red",lty=2,lwd=2)
abline(v=medn.lPM2.5,col="blue",lty=2,lwd=2)


## --------------------------------------------------------------------------------
## Primer y tercer cuartil de O3
cuartil <- quantile(Barajas.Ene$O3,prob=c(0.25,0.75))
cuartil



## --------------------------------------------------------------------------------
summary(Barajas.Ene$O3)


## --------------------------------------------------------------------------------
# Gráfico de cajas y bigotes de la variable O3 en Barajas durante el mes de Enero
boxplot(Barajas.Ene$O3,horizontal=TRUE,
     main="Gráfico de Cajas y Bigotes",
     xlab="Concentración de Ozono",
     frame=FALSE)


## ----fig.width=5,fig.height=5,fig.align='center'---------------------------------
# Grafico de Cajas y bigotes
boxplot(Barajas.Ene$O3,horizontal=T,frame=FALSE)
# gráfico de Puntos superpuesto
stripchart(Barajas.Ene$O3,method="stack",add=T)


## --------------------------------------------------------------------------------
# Gráfico de cajas y bigotes de la variable PM2.5 en Madrid durante 2019
boxplot(Aire$PM2.5,main="",frame=FALSE,
     xlab="Concentración de PM2.5",horizontal=TRUE)


## --------------------------------------------------------------------------------
# Gráfico de cajas y bigotes de la variable logaritmo de PM2.5 en Madrid durante 2019
boxplot(Aire$lPM2.5,main="",frame=FALSE,
        xlab="Concentración de PM2.5",
        horizontal=TRUE)


## --------------------------------------------------------------------------------
## varianza de la variable PM2.5
varPM2.5 <- var(Aire$PM2.5,na.rm=TRUE)
varPM2.5


## --------------------------------------------------------------------------------
## Desviación típica de la variable PM2.5
sd(Aire$PM2.5,na.rm=TRUE)

