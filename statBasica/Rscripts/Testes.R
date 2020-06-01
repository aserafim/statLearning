install.packages("rvest")
install.packages("XML")
install.packages("tidyverse")
library("tidyverse")

mpg

teste <- mpg



View(teste)

names(mpg)

ggplot2::ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


ggplot2::ggplot(data = tab2_1) +
  geom_bar(mapping = aes(x = estado_civil, y = sum(estado_civil)))

ggplot2::ggplot(data=mpg)


group_by()

netflix <- read.table("/home/aserafim/Downloads/NetflixViewingHistory.csv", sep=",", header=TRUE)


names(netflix)


View(netflix_)

netflix_ <- group_by(netflix, "Title")

summary(netflix_)
