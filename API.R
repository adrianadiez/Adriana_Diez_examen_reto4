library(plumber)
library(ggplot2)
library(dplyr)
#* @apiTitle Api Netflix
#* @apiDescription Esta api trabaja con la transformacion de la variable Minutes y muestra un histograma
#* @param   Transformacion
#* @get /minutos
function(Transformacion){
  if (Transformacion == 1)
  transformacion<- df_imputado %>%mutate(minutos=scale(df_knn$Minutes, center=TRUE, scale=TRUE))
  histograma<- ggplot(transformacion, aes(x=minutos))+ geom_histogram()
  return(histograma)
  if (Transfomacion == 0 )
  histograma<- ggplot(df_knn, aes(x=Minutes))+ geom_histogram()
  return(histograma)
}


histograma<- ggplot(df_imputado, aes(x=Minutes))+ geom_histogram()
transformacion<- df_imputado %>%mutate(minutos=scale(df_knn$Minutes, center=TRUE, scale=TRUE))
histograma<- ggplot(transformacion, aes(x=minutos))+ geom_histogram()
plot(transformacion, x=)

