install.packages("ggplot2")
library("ggplot2")

mean(saude$altura)
altura <- saude$altura


# Carregar pacotes necessários

saude <- read.csv("C:/Users/Marina/Downloads/SaudeX.csv", sep = ";")

#Calcular a média e o desvio padrão

mean(saude$altura)

sd(saude_altura)

# saude para o histograma
saude_altura <- saude$altura

#Plotando o histograma de altura

ggplot(as.data.frame(saude$altura)) +
 aes(x = saude$altura) +
  labs (x = "Altura", title = "Histograma de Altura") +
 geom_histogram(bins = 8L, fill = "lightpink") +
 theme_minimal()


# Parâmetros da distribuição normal
mu <- mean(saude_altura)
sigma <- sd(saude_altura)

# Cálculo da curva de distribuição normal
x <- seq(min(saude_altura), max(saude_altura), length.out = 100)
pdf <- dnorm(x, mean = mu, sd = sigma)

# Plotagem do histograma e curva de distribuição normal
ggplot() +
  geom_histogram(data = saude, aes(x = altura, y = after_stat(density)), bins = 8, fill = "lightblue", alpha = 0.5) +
  geom_line(data = data.frame(x = x, pdf = pdf), aes(x = x, y = pdf), color = "red") +
  geom_ribbon(data = data.frame(x = x, pdf = pdf), aes(x = x, ymin = 0, ymax = pdf), fill = "lightpink", alpha = 0.2) +
  labs(x = "Altura em cm", y = "Densidade de Probabilidade", title = "Histograma") +
  theme_minimal()

