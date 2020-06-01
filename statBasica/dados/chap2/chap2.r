#Importando bibliotecas
library(plyr)

#Lendo arquivo csv e armazenando em uma variavel
tab2_1 <- read.table("/home/aserafim/Documentos/estatistica_basica_bussab/chap2/tab2.1.csv", dec=",", sep=";", header = TRUE)

#Para saber as variaveis importadas
names(tab2_1)

#Sumario dos salarios
summary(tab2_1$salario)
boxplot(tab2_1$salario)

#Sumario das idades
summary(tab2_1$idade_anos)
boxplot(tab2_1$idade_anos)

barplot(tab2_1$idade_anos, tab2_1$salario)

#Funcao table gera uma tabela com a frequencia de uma variavel
ni <- table(tab2_1$grau_instrucao) #Frequencia absoluta
fi <- prop.table(ni) #Frequencia relativa
p_fi <- 100 * prop.table(ni) #Frequencia relativa em percentual

#Adicionando a soma à tabela
ni <- c(ni, sum(ni))
fi <- c(fi, sum(fi))
p_fi <- c(p_fi, sum(p_fi))

#Alterando o nome da variavel soma
names(ni)[4] <- "Total"
names(fi)[4] <- "Total"
names(p_fi)[4] <- "Total"

#Criando tabela única
tab2_2.2 <- cbind(ni, fi=round(fi,digits = 2), p_fi = round(p_fi, digits = 2))
tab2_2.3 <- as.data.frame(tab2_2)

names(tab2_2.3) = c("Frequencia ni", "Proporcao fi", "Porcentagem 100fi")

tab2_2.3 <- row.names(tab2_2.3,"Fundamental")


rownames(tab2_2.3)[3] <- "Superior"


names(tab2_2.3)

nrow(tab2_2)
ncol(tab2_2)


?row.names

View(tab2_2.3)
