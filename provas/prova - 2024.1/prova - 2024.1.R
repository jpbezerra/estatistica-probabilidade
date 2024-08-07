# 1
data_sentado <- c(2.96, 4.65, 3.27, 2.50, 2.59, 5.97, 1.74, 3.51, 4.37, 4.02)
data_deitado <- c(1.97, 3.05, 2.29, 1.68, 1.58, 4.43, 1.53, 2.81, 2.70, 2.70)

# 1. a

hist(data_sentado, col = "lightblue", main = "Posição sentada")
hist(data_deitado, col = "lightblue", main = "Posição deitada")

# 1. b
media_sentado <- mean(data_sentado)
mediana_sentado <- median(data_sentado)
dp_sentado <- sd(data_sentado)

media_deitado <- mean(data_deitado)
mediana_deitado <- median(data_deitado)
dp_deitado <- sd(data_deitado)

# 1. c
# H0: não há diferença entre as medidas
# HA: há diferença entre as medidas
# nível de significância de 5%

qt(0.95, min((length(data_sentado) - 1), (length(data_deitado) - 1)))
          
t <- abs(media_deitado - media_sentado) / sqrt((dp_sentado ^ 2 / length(data_sentado)) + (dp_deitado ^ 2 / length(data_deitado)))

# como t > qt(); podemos rejeitar a hipótese nula

# 3
data_coroas <- c(21, 21, 21, 22, 22, 23, 23, 23, 24, 24, 25, 25, 25, 25, 26, 26, 26, 28, 30, 31, 31, 32, 33, 33, 33, 34, 34, 35, 35, 36)

#3. a
media_coroa <- mean(data_coroas)
mediana_coroa <- median(data_coroas)
var_coroa <- var(data_coroas)

# 3. b
pct <- 100 * (sum(data_coroas > 30) / length(data_coroas))

# 3. c
hist(data_coroas)
