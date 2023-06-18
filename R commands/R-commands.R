setwd("C:/Users/Marina/Desktop/R commands")

#Comando geral do R= função(argumento1=valor1, arg2=valor2)

sum(3+5) -> a
#setwd = set working directory
#getwd = get to workint directory
?ls
#ls is a function that returns all the objects in a working environment
#Tem como pesquisar funções com a função apropos; ele acha funções
#Com um determinado string tipo apropos(mãe) ele acha todas as funções com mãe
#Para buscas mais precisas  help.search(field="title","skew")
#Help files with title matching 'skew' using regular expression
#matching:

sum(3,5)
#R é uma linguagem orientada a objetos que podem ser classificados como
#character, function, numeric, date, etc
#It is very important to establish with what you are working with
#for example, if a non-numeric argument has to be operated, you have to establish 
#what it is for it to be operated
#for example

a <- c(1, 2, 3, 4, 5)
class(a)
#ele me retorna que o objeto a possui classe numérica

b <- c("1, 2, 3, 4, 5")
class(b)
#ele me retorna que o objeto b possui classe de caracter
#ambos são números, mas as aspas indicam que a operação é com um caracter

#Operações com datas- quero saber quantos dias se passaram
#do meu nascimento desde o nascimento da minha mãe



mãe <- "31/01/70"
eu <-  "12/11/01"

mãe <- as.Date(mãe, format = "%d/%m/%y")
eu <- as.Date(eu, format = "%d/%m/%y")

eu-mãe

firm(b,d)

#Operadores Lógicos

#== : igual
#!= : diferente
#> : maior que
#< : menor que
#>= : maior ou igual
#<=: menor ou igual
#| : uma das condições
#& : ambas as condições

#a função as. serve para fazer a conversão de tipos de objetos

?table

Byanka <- as.data.frame(x, )





