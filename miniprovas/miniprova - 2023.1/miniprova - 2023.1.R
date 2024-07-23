# 1
data_zod <- read.csv("votacao_zodiaco.csv", sep = ",")

# 1. a, b, c
media_zod <- mean(data_zod$Votos)
mediana_zod <- median(data_zod$Votos)
dp_zod <- sd(data_zod$Votos)

# 1. d
pie(data_zod$Votos, labels = data_zod$Animal, col = rainbow(length(data_zod$Votos))
    )

# 2
data_picole <- read.csv("amostra_picoles.csv", sep = ",")

# H0: as médias são iguais
# HA: as médias são diferentes

media1 <- 27
dp1 <- 12
tamanho1 <- 9

qt(0.95, length(data_picole$A..car..g.) - 1)
t <- mean(data_picole$A..car..g.) - media1 / sqrt((sd(data_picole$A..car..g.) ^ 2 / length(data_picole$A..car..g.)) + (dp1 ^ 2 / tamanho1))

# como t > qt(), rejeitamos a hipótese nula