#Parcialito Camila Lopez

getwd()   #veo donde esta mi directorio 
setwd("/home/clinux01/Descargas/CamiLabo/")  #Lo seteo para que est donde quiero

dias<-readline("Ingrese un dia del mes de Agosto")
agosto<-1:31  #dias del mes de agosto
temp<-c()
for(dia in agosto){
  if(dias>=1 | dias<=31){
    temperatura<-as.numeric(readline("Ingrese temperatura en °C"))
    temp<-as.numeric(c(temp,temperatura))
    promedio_temp<-(mean(temp))
  }if(temperatura<promedio_temp){
    print(paste("El dia",dias,"del mes de Agosto la temperatura fue de",temperatura,"°C es decir debajo de la",promedio_temp,"media mensual"))
  }else if(temperatura>promedio_temp){
    print(paste("El dia",dias,"del mes de Agosto la temperatura fue de",temperatura,"es decir por encima  de la",promedio_temp,"media mensual"))
  }else if(temperatura==promedio_temp){
  print(paste("El dia",dias, "del mes de Agosto la temperatura fue de",temperatura,"ºC es decir igual a la",promedio_temp,"media mensual"))
  }    
 
}


#Cuando corro la primer parte por separado no me da error en el promedio, pero si lo corro tdo junto me sale erro apesar d que lo fuerzo a que sea un valor numerico
#Creo que la estructura esta bien pero ha detalles  de la consugna que no llegue






























































