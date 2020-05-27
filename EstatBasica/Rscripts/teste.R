# Title     : TESTE
# Objective : TESTE
# Created by: aserafim
# Created on: 12/05/2020

3 + 3
alefe <- 42
print(alefe)

iris <- read.csv("/home/aserafim/Downloads/iris.csv")

View(iris)

plot(iris)

iris_target <- iris$variety

iris_train <- iris[,-c(5)]

head(iris_train)
install.packages("RSNNS")
library("RSNNS")
iris_target <- decodeClassLabels(iris[,5], valTrue=0.9, valFalse=0.1)


multi <- mlp(iris_train, iris_target)

summary(multi)