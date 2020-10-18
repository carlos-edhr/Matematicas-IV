#  Unidad 1 | Actividad Complementaria 1
#  Matemáticas IV (Estadística descriptiva e inferencial)
#  Autor: Carlos Eduardo Hoyos Rojas 
#  UUNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
#  Este trabajo ha sido escrito y compilado utilizando
#  Fedora Packages of R Software y RStudio


library(epiDisplay)
library(knitr)

#Altura de varones en cm
medidas <- c(159, 161, 163,163,163, 167, 167, 167, 167, 168, 168, 168, 169, 169, 170, 171, 171, 173, 174, 175, 175, 175, 178, 179, 181, 181, 183, 184, 187, 191)
medidas

par(yaxs="i",las=1)
#Histograma
hist(medidas,
     main="Estaturas de los varones adultos",
     xlab="Medidas en cm",
     col="darkblue",
     border="black" )
box(bty="l")
lines(density(medidas),col="red")
grid(nx=NA,ny=NULL,lty=1,lwd=1,col="gray")

boxplot(medidas)

#Medidas de tendencia central datos desagrupados
#Media
mean(medidas)
#Mediana
median(medidas)

medianaNoAgrupada <- c(178, 179, 181, 181)
median(medianaNoAgrupada)

#Moda
y <- table(medidas)
y 
names(y)[which(y==max(y))] #MODA es 167

#Medidas de Dispersión
#Varianza
var(medidas)
#Desviación Estándar
sd(medidas)
#Coeficiente de Variación
sd(medidas)/mean(medidas)*100
     
summary(medidas)

tab1(medidas, sort.group = "decreasing", cum.percent = TRUE)
table(medidas)
barplot(medidas)

tab.6a = table(medidas)
Total = sum
tab.6b = as.data.frame(addmargins(tab.6a, FUN = Total))
colnames(tab.6b) = c("SES Category", "Frequency")
kable(tab.6b, booktabs = TRUE, caption = "Tabla de Frecuencias", "latex")
