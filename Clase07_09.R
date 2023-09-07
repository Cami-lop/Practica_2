##################################################################
# # Laboratorio de Procesamiento de Informacion  Meteorol?gica/Oceanogr?fica
# 
# 2° cuatrimestre 2023
##################################################################

# Clase_Arrays 1: son variables indexadas (muchas dimensiones)
##############################################################################################
rm(list=ls())
getwd()
setwd("/home/clinux01/Descargas/CamiLabo/")
z<-numeric(1500) #creo espacio de 1500 espacios lleno de ceros porque no le digo ninguna condicion
dim(z) <- c(3,5,100) #transformo el vec a una variable indexada (array de 100 matrices)
      #filas, columnas,100 matrices
#en este caso el 100 ademas de ser 100 matrices , me va mostrar 1 matrices en cada tiempo hasta llegar a 100

h<-numeric(24) 
Z <- array(h, dim=c(3,4,2)) #guarda un array con lo que guardas en  h con estas dimensiones
Z[,,1]  #muuestra tiempo 1, con [entro a la matriz.]
# si relleno los espacio,con posicionesz de filas y columnas, me devuelve una posicion determinada (la que pedi)

#Latitud-> filas
#Longitud-> columnas

#############################
m <- 21:40 #secuencia del 21 al 40
dim(m)<-c(4,5)	 #los acomoda por columna si no le digo nada
m 				
class(m) 	#me dice que es 

dim(m)<-c(5,4) 	#redimension


m[3,4] 		
m[14]		#posicion 14 de la secuencia 


m[3,] 	#todos los elementos de la fila 3		
m[,2] 	#todos los elementos de la columna 2

############################
#EXTRA
nn<-1:120
dim(nn)<-c(3,4,2,5)  #fila, columna,altura,tiempo
nn

#completa primero fila y columna, despues altura y tiempo

#############################
m1<-matrix(11:30,nrow=4,ncol=5,byrow=TRUE) #defino el comando y sus dimensiones
#byrow=cambia el orden del relleno de la matrices, 
#byrow:TRUE llena por filas
rownames(m1)<-c('rojo','azul','amarillo','verde') 	#defino los nombres de las filas
colnames(m1)<-c('a','b','c','d','e') #defino los nombres de las columnas, si no llama todas las columnas salta error en las  dimensiones
m1						
colnames(m1) 		
m1[,'b'] # todos los elementos de la columna b

#drop=F PARA MANTENER DIMENSIONES

##############################
x<-c(1:6)
dim(x)<-c(2,3)
dimnames(x)<-list(c('Fila1','Fila2'),c('Col1','Col2','Col3'))  #Nombres de filas y columnas
x
ejema<-matrix(1:12,ncol=3,byrow=T,
              dimnames=list(letters[1:4],LETTERS[1:3]))   #si fijo una dimen, la maquina sabe la otra
#letters abecedarios en miniscula 
ejema  #matriz 
ejema[1,1]
ejema[,c(2,3)] #todas las filas de la columna dos y tres 
#de la segunda dimension quiero la columna 2 y 3

ejema[,c(-1,-3)] #todo menos la columna 1 y 3
ejema[,c(-1,-3),drop=F] #me mantiene la dimension original


#############################
m2<-cbind(c(2,3,4.5),c(5,6,7.5))  # Combina secuencias de vectores/matrices(pego) por columnas.
m2		                            
m3<-rbind(c(2,3,4.5),c(5,6,7.5))  #Combina secuencias de vectores/matrices (pego) por filas
m3		
#############################
x<-matrix(1:6,2,3)
x
x[,2]
x[1,1:2] #fila 1, columna de la una a las dos
x[3,] # da error por que no hay 3 fila 
x[3] #tercer posicion de la sucesio de valores
ncol(x); nrow(x)
t(x)  #matriz transpuesta de x
cbind(1,x) #puso una columna con 1, recicla al elemento 1 tantas veces como lo requiera la dim de mi matriz
#pega las columnas en la psociones que estan puestas en el () 
cbind(1:3,1:6) #recicla el primer elemento las veces que requiera
apply(x,1,sum)   #aplica los de adentro (x= a quien,1= segun la dimension, fun = lo que quiero hacer)
#aplicale a la matriz x, en la dimension 1 la suma de las fias
max(x); min(x) 
dim(x)
length(x)
max(dim(x))  #max de la dim,cual es el maximo de la dimension 

#############################
a=diag(3) 	#matriz cuadrada de 3x3  con diagonal de 1  y llena de 0 
b=rnorm(9) 		#nueve valores aleatorios de la distribucion  normal, con media 0 y desvio 1 . Cambia cada vez que lo pruebe 

dim(b)=c(3,3) 		#le cambie la dim

require(abind)        # Combina secuencias de vectores/matrices por columnas o filas,según se determine. 
#require descargo el aquete abind
abind(a,b,along=3)->c		#concatena la  matrkiz a con la b 
c #matriz
abind(a,b,along=1)->d
d
abind(a,b,along=2)->e
e

##################################################

c<-matrix(c(2,1,5,6,3,8,4,9,2,7,3,5),nrow=3,ncol=4)  #ordena de forma creciente por default 
c[order(c[,1]),]     	#ordena egun colum 1
c[order(c[,3]),]    	#ordena segun colum 3
c[order(c[,2],decreasing=TRUE),] #ordena de forma decreciete 

#################################################

diag(x) 		#diagonal de mi matriz x 

l<-diag(5) #matrix 5x5
l
s=diag(10,3,4) #matriz con diagonal 10 de 3 filas y 4 columnas 
s
x=c(2,3,4,5) 
x
y=diag(x,4,4) #diag de  de x en la matriz 4x4 
y
#################################################
#EJEMPLO
#quiero sumar elemento de cada fila 
 #1° metodo: usar ciclos
x<-matrix(1:6,2,3)
sumafila<-vector("numeric",2)
aux=0
for(i in 1:2){
  for (j in 1:3){
    aux=aux+x[i,j]
    }  #variable auxiliar-> caja donde guardar las cosas, 2 filas dos posiciones para guardar 
sumafila[i]=aux
aux=0  
} 
sumafila
