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

      escreval("   BEM-VINDO AO CADASTRO DE VE�CULOS")

      escreva("Insira o modelo do ve�culo: ")
      leia(modelo)

      repita
         escreva("Insira o ano de fabrica��o (entre 1990 e ", anoAtual, "): ")
         leia(ano)
         se (ano < 1990) ou (ano > anoAtual) entao
            escreval("O ano n�o � v�lido. Tente novamente entre 1990 e ", anoAtual, "!")
         fimse
      ate (ano >= 1990) e (ano <= anoAtual)

      repita
         escreva("Informe o pre�o do ve�culo (deve ser pelo menos R$ 10.000): R$ ")
         leia(preco)
         se (preco < 10000) entao
            escreval("O pre�o precisa ser pelo menos R$ 10.000. Tente novamente")
         fimse
      ate (preco >= 10000)

      repita
         escreva("Este ve�culo est� dispon�vel em estoque? (Responda com S para sim ou N para n�o): ")
         leia(continuar)
         se (continuar = "s") ou (continuar = "S") entao
            continuar <- "S"
         senao se (continuar = "n") ou (continuar = "N") entao
            continuar <- "N"
         fimse
      ate (continuar = "S") ou (continuar = "N")

      emEstoque <- (continuar = "S")

      escreval("\n DADOS DO VE�CULO CADASTRADO ")
      escreval("Modelo: ", modelo)
      escreval("Ano: ", ano)
      escreval("Pre�o: R$ ", preco)  // Formata��o simplificada
      se emEstoque entao
         escreval("Disponibilidade: em estoque!")
      senao
         escreval("Disponibilidade: O ve�culo n�o est� dispon�vel no momento.")
      fimse

      repita
         escreva("Gostaria de cadastrar outro ve�culo? (Responda com S para sim ou N para n�o): ")
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