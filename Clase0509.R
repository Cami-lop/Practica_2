rm(list=ls())
getwd()
setwd("/home/clinux01/Escritorio/CamiLabo/")
# library() # poner al comienzo
#ejemplo 1 o me arroja nada x consola y el 2 me arroja x consola los valores de i**2
x<- 1:10
# Ejemplo 3 :
for (i in x){
  y<-(i**2) #me guarda la variable con el ultimo valor
}

#Ejemplo 4
x<-1:10

for ( i in x ) {
  y<-i**2
  assign( paste ("y", i,sep =" " ),y ) #hace variabe "y" on cada resultado
  rm(y)
}

#Ejercicio en clase
#Generar un ciclo que almacene los valores mismos valores i**2
#en un vector. Con i desde 1 hasta 10
x<-1:10
resultados<-c()
for ( i in x ) {
  resultados<-c(resultados,i**2) #agarrar el anterior y agregar uno nuevo, anexo los resultados
}
print(resultados) #los imprime e pantalla


#While

umbral <- 5
valor <− 10
while (valor > umbral ) {
  print( "Todavia no se ha alcanzado el umbral" )
  valor <- valor + 1 #esta sentencia se cumple siempre, hay que ponerle un freno o redefinir valor para que termine el ciclo
}
#Siempre que se cumpla  la condicion, el ciclo se repite indefinidamente
#break y next para cortar

#Ejemplo
for ( i in 1:8 ) {
  if(i == 8) { #si es =8 cortalo   ## doble = es sinonim de T o F
    break    
  }
  print (i)
}


#Ejemplo next
for ( i in 1:5) {
  if ( i == 2 ) {
    next
  }
  print ( i )
}


#Ejemplo repeat
x <- 1
repeat {   #se repite indeinidamente
  print ( x )
  x <- x+1
  if ( x == 6 ) {   #si x=6 lo corto, para repeat normalmente voy a querer cortarlo por eso el break 
    break
  }
}


#Ejercicio 1 en clase
#Definir un vector de datos de temperatura en grados Kelvin para un mes de
#30 dias donde las temperaturas ascienden 0.5 K por dia desde los 285 K.

rm(list=ls())
x<-1:30   #x es l intervalo entero 
rta<-c()
for(i in x){
 rta<- c(rta, (i*1/2)+284.5) #anexa la rta vieja + la neva hast que termina el ciclo
}
print(rta)  

#Ejercicio 2 en clase
#Crear un ciclo que convierta a cada uno de los registros en grados Celsius.
x<-285.0:299.5
x<-seq(from=285.0,by=0.5, length.out=30)
print(x)
rta_c<-c()   #para que se me guarde
for(i in x){
  rta_c<-c(rta_c,i-273.15)
}
print(rta_c)






#Ejercicio 3
#Crear un ciclo que, mientras que las temperaturas sean inferiores a los
#30°C, imprima el siguiente mensaje por pantalla “El dia X y con una
#temperatura de XX, todav´ıa no se super´o el umbral de los 30°C”.



for(i in 1:30){
  if(rta_c[i]<30){
    print(paste("El dia",i,"con una temperatura de",rta_c,"todavia no supero el umbra de 30°C"))
  } 
}  ##preguntar porque cada uno se repite 30 veces
