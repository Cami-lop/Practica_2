####Clase Practica 07/09####

rm(list=ls())
getwd()

#Ejercicio 1
#CONSIGNA: Escribir un programa que almacene la cadena de caracteres contrasena en una variable, pregunte
#al usuario por la contrasena hasta que introduzca la contrasena correcta.
x<-"luke y memi"  #contraseña correcta 
z<-readline("Ingrese la contraseña")
if (z == x){
  print("Ha logrado entrar al sistema")
} else{ (z!= x)
  repeat{
    z<-readline("Ingrese la contraseña nuevamente ")
     if(z == x){
       print("Ha logrado entrar al sistema")
       break
     }
  }  
}



#Ejercicio 2 
#CONSIGNA: Escribir un programa que muestre el eco de todo lo que el usuario introduzca hasta que el usuario
#escriba “salir” que terminará
m<-readline("Introduzca un caracter")
salir<-"salir"
repeat {
  if(m==salir){
    print("Ha salido del sistema")
    break
  } else{
    print(m)
    m<-readline("Ingrese un caracter nuevamente")
  }
  
}




#Ejercicio 4      #NO ME SALIO, PREGUNTAR
#Escribir un programa en el que se pregunte al usuario por una frase y una letra, y muestre por
#pantalla el numero de veces que aparece la letra en la frase

frase<-readline("Ingrese una frase")
letra<-readline("Ingrese una letra")
c<-c()
fras<-c(strsplit(frase,""))  #separar las letras de la variable
print(frase)

for(i in length(frase)){
  if(i==letra){
    c[i]=c[i]+i
    fras[1][i]
  }
    print(i)
}





























