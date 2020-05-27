#Importa os dados
tab2_1 <- read.table("dados/chap2/tab2_1.csv", sep = ";", header = TRUE, dec = ",")

#List as variaveis
names(tab21)

#Print tabela
View(tab21)

######################
## Resumo dos dados ##
######################

#Criando tabela de frequencias
#para grau_instrucao
ni <- table(tab21$grau_instrucao) #Absoluta
fi <- prop.table(table(tab21$grau_instrucao))
p_fi <- 100 * prop.table(table(tab21$grau_instrucao))


#Cria linhas com total
ni <- c(ni, sum(ni))
fi <- c(fi, sum(fi))
p_fi <- c(p_fi, sum(p_fi))

#Renomeia linha total
names(ni)[4] <- "Total"

#Concatena os vetores para formar a tabela final
tab2_2 <- cbind(ni, fi=round(fi,digits = 2), p_fi=round(p_fi,digits = 2))
