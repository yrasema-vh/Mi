#Estadistica descriptiva solo de variables cuantitativas o continuas

#1.Subir base de datos
?read.csv
#read.csv(escritorio, header = T, sep = ",")
datos <-read.csv("C:/Users/SALAA-/Desktop", header=T, sep = ",")

#2.Estadistica descriptiva de base de datos 2022 Valores 
#Medidas de tendencia central
mean (datos_2022...tabla_de_datos$average)
median (datos_2022...tabla_de_datos$average)
#Medida de dispersion
range (datos_2022...tabla_de_datos$average)
var(datos_2022...tabla_de_datos$average)

#3.Resumen de los datos
#Instalacion de libreria se utiliza summary SE para sacar resumen de los datos
install.packages("Rmisc")
library("Rmisc")
?summarySE
resumen <- summarySE(data =  datos_2022...tabla_de_datos, measurevar = "average", groupvars = "gender", conf.interval = 0.9) 
resumen <- summarySE (data =  datos_2022...tabla_de_datos, measurevar = "average", groupvars = c ("gender","hobby"), conf.interval = 0.9)
#No me salio la linea 22



#Estadistica descriptiva grafica
#1.Histograma
#cargar libreria
library(ggplot2)
#crear objeto para la grafica
print(grafica1)
#para obligar a R a leer algo como yo lo quiero
datos_2022...tabla_de_datos$height<-as.numeric(datos_2022...tabla_de_datos$height)
print(grafica1)
grafica1<-ggplot(data = datos_2022...tabla_de_datos, aes(height))+geom_histogram()
print(grafica1)

#Nuevo intento
#Grafica por default
grafica1<-ggplot(datos, aes(height))+geom_histogram()
print(grafica1)

#grafica a color
grafica2<-ggplot(datos, aes(height))+geom_histogram(fill = "orange", colour = "yellow")
print(grafica2)


#2.Boxplot
grafica3 <- ggplot(datos, aes(average, gender)) + geom_boxplot() +xlab("Promedio") +ylab("Género")
print(grafica3)

