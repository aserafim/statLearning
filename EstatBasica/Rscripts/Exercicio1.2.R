##########################
# Tabelas de Frequencias #
#########################

###############
# Est. Civil #
##############

ni <- table(tab2_1$estado_civil)
fi <- prop.table(table(tab2_1$estado_civil))
p_fi <- fi * 100

ni <- c(ni, sum(ni))
fi <- c(fi, sum(fi))
p_fi <- c(p_fi, sum(p_fi))

names(ni)[3] <- "Total"

tab2_2 <- cbind(ni, fi = round(fi, digits = 2), p_fi = round(p_fi, digits = 2))

#################
# Regiao Proce. #
#################

ni <- table(tab2_1$reg_procedencia)
fi <- prop.table(ni)
p_fi <- 100 * fi

ni <- c(ni, sum(ni))
fi <- c(fi, sum(fi))
p_fi <- c(p_fi, sum(p_fi))

names(ni)[4] <- "Total"

tab2_2 <- cbind(ni, fi = round(fi, digits = 2), p_fy = round(p_fi, digits = 2))

###############
# Nmr. Filhos #
###############

ni <- table((tab2_1$n_filhos))
fi <- prop.table(ni)
p_fi <- 100 * fi

ni <- c(ni, sum(ni))
fi <- c(fi, sum(fi))
p_fi <- c(p_fi, sum(p_fi))

names(ni)[6] <- "Total"

tab2_2 <- cbind(ni, fi = round(fi, digits = 2), p_fi = round(p_fi, digits = 2))


#Visualizando
View(ni)
View(fi)
View(p_fi)
View(tab2_2)

summary(tab2_1)
