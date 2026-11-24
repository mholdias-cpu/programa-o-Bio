#O objetivo do código é ler uma String que represente uma cadeia de aminoácidos. Cada aminoácido é polar ou apolar. O Código relaciona a informação de polaridade a letra digitada e retorna a 
informação junto com quanto dessa suposta proteína é apolar (em %) ou polar. O código também retorna a posição de cada aminoácido.





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

if (any(!residuos %in% codigo)) {
            print("ERRO: aminoácido não encontrado")
            }
else {

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
            }
