# Tabela dos aminoácidos
codigo <- c("A", "R", "N", "D", "C", "Q", "E", "G",
            "H", "I", "L", "K", "M", "F", "P", "S",
            "T", "W", "Y", "V")

polaridade <- c("Apolar", "Polar", "Polar", "Polar",
                "Polar", "Polar", "Polar", "Apolar",
                "Polar", "Apolar", "Apolar", "Polar",
                "Apolar", "Apolar", "Apolar", "Polar",
                "Polar", "Apolar", "Polar", "Apolar")

# Solicitaa a sequência
sequencia <- readline("Digite a sequência de aminoácidos: ")

# Separa os aminoácidos
residuos <- strsplit(toupper(sequencia), "")[[1]]

# Identificar a polaridade
resultado <- polaridade[match(residuos, codigo)]

# Exibir resultados de polaridade de cada resíduo

for (i in seq_along(residuos)) {
  cat("O resíduo", i, "(", residuos[i], ") é", resultado[i], "\n")
}


total <- length(residuos)

porcentagem_apolar <- sum(resultado == "Apolar") / total * 100

porcentagem_polar <- sum(resultado == "Polar") / total * 100

# Mostrar resultados em porcentagem.

cat("Aminoácidos apolares:", porcentagem_apolar, "%\n")

cat("Aminoácidos polares:", porcentagem_polar, "%\n")

# Me retornaa a polaridade predominante.

if (porcentagem_apolar > porcentagem_polar) {
  print("A sequência apresenta predominância de aminoácidos apolares.")

} else if (porcentagem_polar > porcentagem_apolar) {
  print("A sequência apresenta predominância de aminoácidos polares.")

} else {
  print("A sequência apresenta proporções iguais de aminoácidos polares e apolares.")
}
