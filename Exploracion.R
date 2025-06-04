library(digest)
library(discretization)
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

summary(df)
sd(df$Minutes, na.rm=TRUE)
sd(df$Seasons, na.rm=TRUE)

n_distinct(df$type)
n_distinct(df$country)
n_distinct(df$director)
