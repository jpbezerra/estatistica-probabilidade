data <- read.csv("Idades_vencedores_oscar.csv", sep = ",")

# 1
atores <- data$Idades_atores
atrizes <- data$Idades_atrizes

media_atores <- mean(atores)
media_atrizes <- mean(atrizes)

mediana_atores <- median(atores)
mediana_atrizes <- median(atrizes)

desvio_padrao_atores <- sd(atores)
desvio_padrao_atrizes <- sd(atrizes)

variancia_atores <- var(atores)
variancia_atrizes <- var(atrizes)

amplitude_atores <- max(atores) - min(atores)
amplitude_atrizes <- max(atrizes) - min(atrizes)

# 3
classes <- round(1 + 3.22 * log10(length(atores)), 1)

inter_atores <- round((amplitude_atores / classes), 1)
inter_atrizes <- round((amplitude_atrizes / classes), 1)

hist_atores <- hist(atores, breaks = inter_atores, 
                    col = "lightblue", main = "Idade dos atores")

hist_atores <- hist(atrizes, breaks = inter_atrizes, 
                    col = "lightblue", main = "Idade das atrizes")

# 5
# H0: média_atores = média_atrizes -> não há diferença significativa
# H1: média_atores != média_atrizes -> há diferença significativa
# considerando nível de significância de 5%

aux <- qt(0.95, length(atores) - 1) # 1.66462464450661 ->  valor crítico
t <- (media_atores - media_atrizes) / sqrt((desvio_padrao_atores ^ 2) / 20 + (desvio_padrao_atrizes ^ 2) / 20)
# 2.47132853833426 -> valor calculado

# como o valor calculado > valor crítico, então quer dizer que rejeitamos H0
