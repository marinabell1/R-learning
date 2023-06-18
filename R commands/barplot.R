tempo <- c(16, 7,15,20, 5, 2, 7,10,12,10, 8, 0,30,10, 5,14, 5, 5,10,28,
           4, 5, 5,10,12, 2, 2,10,18,10,25,14,12,10,12, 2,10,20, 6,20,
           14,10,25,14, 8,10, 8, 3, 5,14)
h <- c(0, 5, 10, 15, 20, 25, 30)
stripchart(tempo, method="stack", pch=20, main="Tempo TV", offset=0.5,
           xlab="horas/semana", col="red3", xlim=c(0,30), cex.main=0.75, cex.axis
           =0.75, frame.plot=F, axes=F)
axis(1, pos=0.8)
hist(tempo, breaks=h, main="Tempo TV", xlab="horas/semana", col="bisque",
     xlim=c(-3,33), ylim=c(0,22), ylab="", cex.main=0.75, cex.axis =0.75,
     axes=F, right=F, cex.lab = 0.75)
axis(1, h, pos=0)
axis(2, pos=-4)
#lines(c(-4,33), c(0,0))
#lines(c(-4,-4), c(0,22))
#lines(c(33,33), c(0,22))
#lines(c(-4,33), c(22,22))
box()



Integrantes <- c("Byanka", "Marina", "Matheus")
Variáveis <- c("Freq. Cardíaca", "Freq. Pulmonar")
rm("Integrantes")
Tempo <- c("Antes de andar", "Depois de andar", "Depois de correr")

install.packages("ggplot2")

?ggplot2
help("ggplot2")
??ggplot2
install.packages("dplyr")
?dplyr
library(dplyr)
?dplyr
?ggplot2
library(ggplot2)
?ggplot2
library(tidyverse)
?tidyverse
apropos(table)
help.search(field="title","table")


Byanka <- as.data.frame((x = Tempo), (y =Variáveis),
                                      row.names = FALSE)
Byanka <- 
  rm(Byanka)

# Criar dados
nome <- c("João", "Maria", "Carlos")
idade <- c(25, 30, 35)
salario <- c(2500, 3000, 3500)

# Criar tabela
dados <- data.frame(Nome = nome, Idade = idade, Salário = salario)

# Imprimir tabela
print(dados)

# Criar as variáveis
variavel1 <- c("A", "B", "A", "B", "A")
variavel2 <- c("X", "Y", "X", "Y", "X")

# Criar a tabela utilizando a função table()
tabela <- table(variavel1, variavel2)
print(tabela)

# Criar as variáveis
variavel1 <- c("NA", "B", "A", "B", "A")
variavel2 <- c("X", "Y", "X", "Y", "X")

# Criar o data frame
df <- data.frame(Variavel1 = variavel1, Variavel2 = variavel2)


# Dados de exemplo
situação <- c("situação 1", "situação 2", "situação 1", "situação 2")
variável1 <- c("A", "B", "B", "A")
variável2 <- c("X", "Y", "X", "Y")

# Transformar "situação" em fator
situação <- factor(situação)

# Criar a tabela de contingência com "situação" como índice das linhas
tabela <- table(situação, variável1, variável2, dnn = c("Situação", "Variável 1", "Variável 2"))

# Exibir a tabela
print(tabela)

sit <- as.data.frame(tabela)
?ggplot2

d <- ggplot()
Byanka <- as.numeric(Byanka, 23)
Marina <- as.numeric(Marina, 32)
Marina <- 32

Byanka <- 23

Matheus <- 21

Matheus <- as.numeric(Matheus, 21)


DF  <- read.csv(text=
                  "Antes de Caminhar, Depois de Caminhar, Nomes, Frequência Cardíaca
78,90, Byanka
112,123, Marina
240,195, Matheus
                ")

DF$Frequência.Cardíaca <- as.integer(DF$Frequência.Cardíaca)

ggplot(data = DF, aes(x= Nomes, y = Frequência.Cardíaca)) +
  geom_bar(x = Antes.de.Caminhar , y = ..count..)


# prepare the matrix for barplot
# note that we exclude the 3rd column and we transpose the data
#mx <- t(as.matrix(DF[-3]))
#colnames(mx) <- DF$Nomes

#colours = c("lightgreen","lightblue")
# note the use of ylim to give 30% space for the legend
#barplot(mx,main='Variação da Frequência Cardíaca',ylab='Frequência Cardíaca', xlab='Nomes',beside = TRUE, 
        #col=colours, ylim=c(0,max(mx)*1.3))
# to add a box around the plot
#box()

# add a legend
#legend('topright',fill=colours,legend=c('Antes de Caminhar','Depois de Caminhar'))

#colnames(DF) <- c("AntesDeCaminhar", "DepoisDeCaminhar", "Nomes", "FrequênciaCardíaca")
#library(ggplot2)
#ggplot(data = DF, aes(x = Nomes, y = AntesDeCaminhar)) +
  #geom_bar(stat = "identity")


#library(ggplot2)
#ggplot(data = DF, aes(x = Nomes)) +
  #geom_bar(aes(y = AntesDeCaminhar, fill = "Antes de Caminhar"), 
           #position = "dodge", stat = "identity") +
  #geom_bar(aes(y = DepoisDeCaminhar, fill = "Depois de Caminhar"), 
           #position = "dodge", stat = "identity") +
  #labs(fill = "Dados") +
  #scale_fill_manual(values = c("Antes de Caminhar" = "blue", "Depois de Caminhar" = "red")) +
  #ylab("Frequência.Cardíaca") +
  #xlab("Nomes") +
  #ggtitle("Gráfico de Barras - Antes e Depois de Caminhar")

library(ggplot2)

DF <- read.csv(text = "Repouso, Depois de Caminhar, Depois de Correr, Nomes
                   78, 90, 129, Byanka
                   112, 123, 140, Marina
                   240, 195, 114,  Matheus",)

# Renomear as colunas
colnames(DF) <- c("Repouso", "DepoisDeCaminhar","DepoisDeCorrer", "Nomes")

# Transformar o dataframe no formato "long"
DF_long <- tidyr::pivot_longer(DF, cols = c("Repouso", "DepoisDeCaminhar", "DepoisDeCorrer"),
                               names_to = "Momento", values_to = "Frequência Cardíaca")

#Ordenar o eixo x

DF_long$Nomes <- factor(DF_long$Nomes, levels = c("Matheus", "Byanka", "Marina"))

# Plot dos dados Antes e Depois de Caminhar
ggplot(data = DF_long, aes(x = Nomes, y = Frequência, fill = Momento)) +
  geom_bar(position = position_dodge2(width = 0.9, padding = 0.1), stat = "identity", width = 0.4) +
  labs(fill = "Momento") +
  scale_fill_manual(values = c("Repouso" = "lightblue", "DepoisDeCaminhar" = "lightgreen", 
                               "DepoisDeCorrer" = "yellow")) +
  ylab("FrequênciaCardíaca") +
  xlab("Nomes") +
  ggtitle("Gráfico de Barras - Antes e Depois de Caminhar")



DF <- read.csv(text = "Repouso, Depois de Caminhar, Depois de Correr, Nomes, Frequência Cardíaca
                  78, 90, 129, Byanka
                    75, 93, 114, Matheus
                    112, 123, 140, Marina")
# Renomear as colunas
colnames(DF) <- c("Repouso", "DepoisDeCaminhar","DepoisDeCorrer", "Nomes", "FrequênciaCardíaca")
# Transformar o dataframe no formato "long"
DF_long <- DF %>%
  +   pivot_longer(cols = c(Repouso, DepoisDeCaminhar, DepoisDeCorrer), names_to = "Momento", values_to = "Frequência")
DF_long$Momento <- factor(DF_long$Momento, levels = c("Repouso", "DepoisDeCaminhar", "DepoisDeCorrer"))
# Plot dos dados Antes e Depois de Caminhar
  ggplot(data = DF_long, aes(x = Nomes, y = Frequência, fill = Momento)) +
  +   geom_bar(position = position_dodge(width = 0.7), stat = "identity", width = 0.7) +
  +   labs(fill = "Momento") +
  +   scale_fill_manual(values = c("Repouso" = "lightblue", "DepoisDeCaminhar" = "lightgreen", 
                                   +                                "DepoisDeCorrer" = "yellow")) +
  +   ylab("Frequência Cardíaca") +
  +   xlab("Nomes") +
  +   ggtitle("Antes e Depois de Caminhar")

####################################################################################3

  DF <- read.csv(text = "Repouso, Depois de Caminhar, Depois de Correr, Nomes, Frequência Cardíaca
                    78, 90, 129, Byanka
                    75, 93, 114, Matheus
                    112, 123, 140, Marina")
  # Renomear as colunas
  colnames(DF) <- c("Repouso", "DepoisDeCaminhar","DepoisDeCorrer", "Nomes", "FrequênciaCardíaca")
  # Transformar o dataframe no formato "long"
  DF_long <- DF %>%
    pivot_longer(cols = c(Repouso, DepoisDeCaminhar, DepoisDeCorrer), names_to = "Momento", values_to = "Frequência")
  DF_long$Momento <- factor(DF_long$Momento, levels = c("Repouso", "DepoisDeCaminhar", "DepoisDeCorrer"))
  DF_long$Nomes <- as.factor(DF_long$Nomes)
 # DF_long$Nomes <- factor(DF_long$Nomes, levels = c("Matheus", "Byanka", "Marina"), ordered = TRUE)
  #DF_long$Nomes <- factor(DF_long$Nomes, levels = c("Matheus", "Byanka", "Marina"))
  # Plot dos dados Antes e Depois de Caminhar
  ggplot(data = DF_long, aes(x = Nomes, y = Frequência, fill = Momento)) +
    geom_bar(position = position_dodge(width = 0.7), stat = "identity", width = 0.7) +
    labs(fill = "Momento") +
    scale_fill_manual(values = c("Repouso" = "lightblue", "DepoisDeCaminhar" = "lightgreen", 
                                 "DepoisDeCorrer" = "yellow")) +
    ylab("Frequência Cardíaca") +
    xlab("Nomes") +
    ggtitle("Repouso e Movimento")

  glimpse(DF_long)
##################################################################################################3
  
    ggplot(data = DF_long, aes(x = reorder(Nomes, (Frequência)), y = Frequência, fill = Momento)) +
    geom_bar(position = position_dodge(width = 0.7), stat = "identity", width = 0.7) +
    labs(fill = "Momento") +
    scale_fill_manual(values = c("Repouso" = "lightblue", "DepoisDeCaminhar" = "lightgreen", 
                                 "DepoisDeCorrer" = "yellow")) +
    ylab("Frequência Cardíaca") +
    xlab("Nomes") +
    ggtitle("Repouso e Movimento")
####################################################################################################