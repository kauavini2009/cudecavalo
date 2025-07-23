algoritmo "CadastroDeVeiculos"
var
   modelo: caractere
   ano, anoAtual: inteiro
   preco: real
   emEstoque: logico
   continuar: caractere

inicio
   anoAtual <- 2025
   repita

      escreval("   BEM-VINDO AO CADASTRO DE VEÍCULOS")

      escreva("Insira o modelo do veículo: ")
      leia(modelo)

      repita
         escreva("Insira o ano de fabricação (entre 1990 e ", anoAtual, "): ")
         leia(ano)
         se (ano < 1990) ou (ano > anoAtual) entao
            escreval("O ano não é válido. Tente novamente entre 1990 e ", anoAtual, "!")
         fimse
      ate (ano >= 1990) e (ano <= anoAtual)

      repita
         escreva("Informe o preço do veículo (deve ser pelo menos R$ 10.000): R$ ")
         leia(preco)
         se (preco < 10000) entao
            escreval("O preço precisa ser pelo menos R$ 10.000. Tente novamente")
         fimse
      ate (preco >= 10000)

      repita
         escreva("Este veículo está disponível em estoque? (Responda com S para sim ou N para não): ")
         leia(continuar)
         se (continuar = "s") ou (continuar = "S") entao
            continuar <- "S"
         senao se (continuar = "n") ou (continuar = "N") entao
            continuar <- "N"
         fimse
      ate (continuar = "S") ou (continuar = "N")

      emEstoque <- (continuar = "S")

      escreval("\n DADOS DO VEÍCULO CADASTRADO ")
      escreval("Modelo: ", modelo)
      escreval("Ano: ", ano)
      escreval("Preço: R$ ", preco)  // Formatação simplificada
      se emEstoque entao
         escreval("Disponibilidade: em estoque!")
      senao
         escreval("Disponibilidade: O veículo não está disponível no momento.")
      fimse

      repita
         escreva("Gostaria de cadastrar outro veículo? (Responda com S para sim ou N para não): ")
         leia(continuar)
         se (continuar = "s") ou (continuar = "S") entao
            continuar <- "S"
         senao se (continuar = "n") ou (continuar = "N") entao
            continuar <- "N"
         fimse
      ate (continuar = "S") ou (continuar = "N")

   ate (continuar = "N")

   escreval("Programa encerrado!")
fimalgoritmo