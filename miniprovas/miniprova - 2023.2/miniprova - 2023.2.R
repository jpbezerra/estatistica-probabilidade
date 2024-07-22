data <- read.csv("IceCreamSales.csv", sep = ",")

lucros <- data$Lucro
temperatura <- data$Temperatura

# 1. a
media_lucro <- mean(lucros)
mediana_lucro <- median(lucros)
desvio_padrao_lucro <- sd(lucros)

# 1. b
plot(temperatura, lucros)

# 1. d
amplitude_temp <- max(temperatura) - min(temperatura)
classes <- max(sqrt(length(temperatura)), 1 + 3.22 * log(length(temperatura), 10))
intervalos <- round(amplitude_temp / classes, 1)

hist_temp <- hist(temperatura, breaks = intervalos, 
                  xlab = "Temperaturas", col = "lightblue")

# 2
acucar <- c(25.3, 24.7, 26.5, 23.8, 27.1, 25.6, 26.8, 24.5, 28.2, 25.9)
media_acucar <- mean(acucar)
