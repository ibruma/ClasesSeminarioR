

## ----------------------------------------------------------------------------
## Crea el objeto a al que se le asigna el valor numérico de tres
a <- 3


## ----------------------------------------------------------------------------
## Muestra por pantalla la información almacenada en el objeto a
a


## ----------------------------------------------------------------------------
## Muestra por pantalla la información almacenada en el objeto a
print(a)


## ----------------------------------------------------------------------------
A


## ----------------------------------------------------------------------------
x <- 1 ## Es un número real
class(x) ## Muestra cual es la clase de x


## ----------------------------------------------------------------------------
x <- 6/2  
x
class(x)


## ----------------------------------------------------------------------------
x <- 1L # es un entero
x
class(x)


## ----------------------------------------------------------------------------
x <- 1/Inf # Dividir por infinito
x


## ----------------------------------------------------------------------------
y <- 1/0   # Dividir por 0
y


## ----------------------------------------------------------------------------
(-y)     # Menos infinito


## ----------------------------------------------------------------------------
x <- 0/0 # Valor no definido
x


## ----------------------------------------------------------------------------
x <- 3
x


## ----------------------------------------------------------------------------
x <- c(0.1,0.2,0.3) ## vector numérico de longitud 3
x
class(x)


## ----------------------------------------------------------------------------

x <- c(TRUE,FALSE,FALSE) ## vector lógico de longitud 3
x
class(x)

x <- c(T,F,F) ## Igual pero utilizando T (TRUE) y F (FALSE)
x


## ----------------------------------------------------------------------------
x <- c("a","b","d") # vector carácter de longitud 3
x
class(x)


## ----------------------------------------------------------------------------
x <- c(2,3,7)
y <- c(8,9,10)

z <- c(x,y) # concatena dos vectores
z


## ----------------------------------------------------------------------------
w <- c(x,y,c(5,6)) ## concatena 3 vectores
w


## ----------------------------------------------------------------------------
x <- 1:7  # vector de longitud 7 formado por la secuencia de
        # enteros del 1 al 7
x


## ----------------------------------------------------------------------------
class(x) # integer


## ----------------------------------------------------------------------------
x <- 40:12 # vector de enteros formado por la secuencia 
        #   decreciente de enteros del 40 al 12
x


## ----------------------------------------------------------------------------
x <- seq(from=2,to=10, by=2) ## secuencia numérica del 2 
                           ## hasta el 10 con incrementos de 2
class(x) # con seq la clase es numeric y no integer


## ----------------------------------------------------------------------------
x <- seq(from=2, to=10,length.out=4) ## secuencia de 4 números
                            ## iniciada en 2 y acabada en 10
x


## ----------------------------------------------------------------------------
y <- seq(from=2, by=2,length.out=4) ## secuencia de 4 números
                                  ## iniciada en 2 y de 2 en 2
y


## ----------------------------------------------------------------------------
x <- c(3,4,7)
y <- rep(x,times=5) # concatenamos el vector x 5 veces 
                  # para crear el vector y
y


## ----------------------------------------------------------------------------
y <- rep(x,each=5) # pega cada número del vector x 
                  # 5 veces para crear el vector y
y


## ----------------------------------------------------------------------------
length(x)


## ----------------------------------------------------------------------------
x <- c(3,7,11,15,19)
x[2]  # el segundo elemento de x


## ----------------------------------------------------------------------------
x
x[2] <- x[2]-x[1]  # almacena en la posición 2 del vector x, 
                 # el resultado de restar el valor de x
                 # en la posición 1 menos el valor de x 
                 # en la posición 2


## ----------------------------------------------------------------------------
x # nuevo valor de x en la posición 2


## ----------------------------------------------------------------------------
x[c(2,1,4)] # muestra las posiciones 2, 1 y 4 del vector x


## ----------------------------------------------------------------------------
x[1:3] # muestra las tres primeras posiciones del vector x


## ----------------------------------------------------------------------------
y <- 1:3 # vector con la secuencia de enteros del 1 al 3
y
x[y] # valores del vector x en las posiciones indicadas en y


## ----------------------------------------------------------------------------
x <- c(2,3,4)
y <- c(1,2,3)
z <- x+y ## suma de los elemento de x con los elementos de y. 
        # Posición por posición
z


## ----------------------------------------------------------------------------
w <- x-y ## resta los elemento de x de los elementos de y. 
       ## Posición por posición
w


## ----------------------------------------------------------------------------
r <- x/y ## divide cada elemento de x 
       # por cada elemento de y   
r


## ----------------------------------------------------------------------------
t <- x**y
t


## ----------------------------------------------------------------------------
x+2 ## sumar 2 a cada valor del vector x


## ----------------------------------------------------------------------------
x*2
x/2
x**2


## ----------------------------------------------------------------------------
x <- c(9,81,6561)
sqrt(x) ## raíz cuadrada de cada elemento del vector x


## ----------------------------------------------------------------------------
## Sexo de 10 personas encuestadas
sexo <- c("H", "M", "H", "H", "M", "M", "M", "M", "H", "H")
sexo
class(sexo)


## ----------------------------------------------------------------------------
## Convierte el vector de caracteres sexo en un factor
sexo <- factor(sexo)

## ----------------------------------------------------------------------------
## Muestra sexo por pantalla
sexo


## ----------------------------------------------------------------------------
## Indica de que clase es el vector sexo
class(sexo)


## ----------------------------------------------------------------------------
## Muestra el factor sexo
sexo


## ----------------------------------------------------------------------------
## Muestra los niveles del factor sexo
levels(sexo)


## ----------------------------------------------------------------------------
## muestra el número de niveles del factor sexo
nlevels(sexo)


## ----------------------------------------------------------------------------
## Numero de observaciones en cada nivel del factor sexo
Tab <- table(sexo)
Tab


## ----------------------------------------------------------------------------
# Proporción de observaciones en cada nivel del factor sexo
prop.table(Tab)


## ----------------------------------------------------------------------------
## Lista con tres componentes
Agenda <- list(Nombre=c("Maria","Juan","Pedro"),
             Apellido=c("Garcia","Perez","Hernandez"),
             Telf=c(6237863,6253478))


## ----------------------------------------------------------------------------
Agenda


## ----------------------------------------------------------------------------
class(Agenda)


## ----------------------------------------------------------------------------
names(Agenda)  # Muestra el nombre de los componentes


## ----------------------------------------------------------------------------
## Muestra los elementos del componente Apellido
Agenda$Apellido


## ----------------------------------------------------------------------------
Agenda[["Apellido"]]


## ----------------------------------------------------------------------------
## Muestra el primer componente
Agenda[[1]]


## ----------------------------------------------------------------------------
## Muestra el nombre del componente y su contenido
Agenda[1]


## ----------------------------------------------------------------------------
## Creación de un marco de datos
## El componente Sexo es un factor
datos.Ind <- data.frame(Peso=c(57,65,78),
                      Altura=c(1.60,1.75,1.67),
                      Sexo=factor(c("M","M","H")))


## ----------------------------------------------------------------------------
datos.Ind
class(datos.Ind)


## ----------------------------------------------------------------------------
## Nombres de los componentes del marco de datos datos.Ind
colnames(datos.Ind)


## ----------------------------------------------------------------------------
## Muestra el valor de la fila 1 columna 1
## Utilizando la posición
datos.Ind[1,2]



## ----------------------------------------------------------------------------
## Utilizando el nombre de la columna
datos.Ind[1,"Altura"]


## ----------------------------------------------------------------------------
## Muestra la primera fila, todas las columnas
datos.Ind[1,]


## ----------------------------------------------------------------------------
## Muestra la columna Peso. Tres formas distintas
datos.Ind[,"Peso"]
datos.Ind$Peso
datos.Ind[,1]


## ----------------------------------------------------------------------------
## Indice de masa corporal de cada individuo en el marco de datos
datos.Ind$IMC <- datos.Ind$Peso/(datos.Ind$Altura**2)
datos.Ind


## ----------------------------------------------------------------------------
str(datos.Ind)

