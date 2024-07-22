dataset <- read.csv("aluno_turmas_fisica.csv", sep = ";")

# Q1. b
nota_turma_a <- dataset$Nota_TurmaA
nota_turma_b <- dataset$Nota_TurmaB

media_turma_a <- mean(nota_turma_a)
media_turma_b <- mean(nota_turma_b)

mediana_turma_a <- median(nota_turma_a)
mediana_turma_b <- median(nota_turma_b)

desvio_padrao_a <- sd(nota_turma_a)
desvio_padrao_b <- sd(nota_turma_b)

# Q1. d
table(dataset$Posicao_TurmaA)
table(dataset$Posicao_TurmaB)

# Q2. a
faltas_a <- dataset$Faltas_TurmaA
faltas_b <- dataset$Presenca_TurmaB

plot(faltas_a, nota_turma_a)
plot(faltas_b, nota_turma_b)

# Q3. a
# H0: ma <= mb
# HA: ma > mb

qt(0.95, 19)
t <- (media_turma_a - media_turma_b) / sqrt((desvio_padrao_a ^ 2) / 20 + (desvio_padrao_b ^ 2) / 20)
