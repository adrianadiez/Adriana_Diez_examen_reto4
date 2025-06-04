library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)

#Cargar Datos
#Exploracion
df<- read.csv("netflix.csv")

#Missings por variables
miss_var_summary(df)

#Visualizacion de missings
vis_miss(df)

#Imputacion de missings
df_knn<- kNN(df, variable=colnames(df[,c(10,11)]), dist_var = colnames(df[,c(10,11)]))
df_imputado<-df_knn[,-c(12,13)]
colnames(df_imputado)
