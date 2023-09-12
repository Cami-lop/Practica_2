#Clase Practica 12/09  Practca 3 
rm(list=ls())
vector_numerico <- c(1, 3, 5, 7) # vector numérico
vector_texto <-c("arbol", "casa", "pez") # vector de caracteres
vector_logico <- c(TRUE, FALSE, TRUE) # vector lógico
nuevo_vector_1 <- c(vector_texto, vector_numerico)
nuevo_vector_1

nuevo_vector_2<- c(vector_logico, vector_numerico)
nuevo_vector_2  #1=TRUE 0=FALSE


#sum(): suma todos los elementos del vector. Ejemplo:
  vector_numerico <- c(1, 3, 5, 7)
sum(vector_numerico)

#mean(): calcula el valor promedio de los elementos de un vector.
 mean(vector_numerico)
 
 #prod(): producto de todos los elementos del vector. Ejemplo:
   prod(vector_numeric)
   
   #length(): longitud del vector. Ejemplo:
     vector_numerico <- c(1, 3, 5, 7)
length(vector_numerico)

#head(): proporciona los primeros n elementos, por default n=6.
  vector <- c(5, 8, 1, 10, 7, 4, 1, 20, 25, 2)
head(vector, n=3)

#tail(): proporciona los últimos n elementos, por default n=6. Ejemplo:
  tail(vector)

#sort(): ordena los elementos de un vector de forma ascendente o  decreciente. Ejemplo:
    vector <- c(5, 8, 1, 10, 7)
  sort(vector)
  
 sort(vector, decreasing = T)
#INDEXACION 
 b<- c( 25, 8, 6, 50 , 10, 0)
 b[b< 15]  #me devuelve los valores de quien cumple la condicion
 
 a<- seq(0,10, by=2)
 which(a>5)  #Me das las pposiciones de quienes cumplen la condicion

 mayores_5<- a[which(a>5)] #posiciones
 mayores_5
 
 mayores_5<- a[a>5] # valores
 mayores_5
 
 #####Ejercicio en clase######
 

 set.seed(11111)
 #Dado datos de humedad relativa de un ano de una estacion
 Datos<- 15:97
 Datos
 ##Serie de datos de un mes
 HR <- sample(Datos, 31, replace = TRUE)
 HR
 ##Y datos de ocurrencia de precipitacion en la misma estacion
 ocurrencia_pp<- sample(c(1,0),31,replace = TRUE) # Vector logico que me dice si llovio o no
ocurrencia_pp 

mean(HR) #PROMEDIO HR
SATURACION<-which(HR>90)
PP<-which(ocurrencia_pp==1)
PP
 which (HR>90 & ocurrencia_pp==1)

total<-sum(ocurrencia_pp)

#######Ejercicio 2 en clase#####

rm(list=ls())
I <- 1
TF<-c()
repeat{
  TF[I]<-as.numeric(readline("Ingrese dato de Temperatura en ºF¨"))
  I<-I+1
if(I==6){
  break
  }
}
class(TF)

J<-1
R<-c()
repeat{
  R[J]<-as.numeric(readline("Ingrese dato de umedad relativa en %"))
  J<-J+1
  if(J==6){
    break
  }
}
#Calculo el indice
HI<- -42.379 + 2.04901523* TF + 10.14333127* R 
- 0.22475541 * TF * R - 6.83783 * 10**-3 *TF**2
-5.481717*10**-2*R**2+ 1.22874*10**-3*TF**2*R + 8.5282 * 10**-4*TF *R**2
- 1.99 *10**-6*TF**2*R**2
## Si la R<13% y 80<T<112 se le hace una correccion y se resta
HIRE<-((13-R)/4)*sqrt((17-abs(TF-95.))/17)
## Si la R>85% y 80<T<87 se le suma
HIS<-((R-85)/10) * ((87-TF)/5)
##HI<80 F
HII = 0.5 * (TF + 61 + ((TF-68)*1.2) + (R*0.094))
J<-1
K<-1
for(J in TF){
  for(K in R){
if(R<13 & 80<TF & TF<112){
  HI=HI+HIRE
} else IF (R>85 & 80<TF & TF<87){ 
  HI=HI+HIS
} else if(R<80){
  print(HII)}
  K<-K+1
  }
J=J+1    
}
¨