algoritmo "Calculador_de_Media_Melhorado"
// Data: 12/11/2025
// Descrição: Calcula a média de N notas com validação de entrada,
//            status de aprovação e loop de repetição.

var
   continuar: caractere
   mediaFinal: real
   statusFinal: caractere

//-------------------------------------------------------------
// FUNÇÃO: calcularMediaAprovacao
// Objetivo: Pedir as notas, calcular a média e retornar a média e o status.
// (Usamos passagem por referência para retornar dois valores)
//-------------------------------------------------------------
procedimento calcularMediaAprovacao(porRef media: real, porRef status: caractere)
var
   numeroDeNotas, i: inteiro
   nota, soma: real
inicio
   soma := 0
   media := 0

   // --- Validação da Quantidade de Notas ---
   // Garante que o número de notas seja positivo para evitar divisão por zero
   repita
      escreval("Digite o número de notas a serem calculadas:")
      leia(numeroDeNotas)
      se (numeroDeNotas <= 0) entao
         escreval("Erro! O número de notas deve ser pelo menos 1.")
      fimse
   ate (numeroDeNotas > 0)
   
   escreval("--------------------------------")

   // --- Loop para receber as notas ---
   para i de 1 ate numeroDeNotas faca
      
      // Validação de cada nota individual (ex: 0 a 10)
      repita
         escreva("Digite a ", i, "ª nota (de 0 a 10): ")
         leia(nota)
         se (nota < 0) ou (nota > 10) entao
            escreval("Nota inválida! Digite um valor entre 0 e 10.")
         fimse
      ate (nota >= 0) e (nota <= 10)
      
      soma := soma + nota
   fimpara

   // Calcula a média
   media := soma / numeroDeNotas

   // Define o status
   se (media >= 7.0) entao
      status := "APROVADO"
   senao se (media >= 4.0) entao
      status := "RECUPERAÇÃO"
   senao
      status := "REPROVADO"
   fimse
fimprocedimento

//-------------------------------------------------------------
// BLOCO PRINCIPAL
// Objetivo: Controlar a execução do programa e o loop de replay.
//-------------------------------------------------------------
inicio
   repita
      limpatela()
      escreval("--- Calculadora de Média Escolar ---")
      escreval("------------------------------------")
      
      // Chama o procedimento que faz todo o cálculo
      // As variáveis mediaFinal e statusFinal serão atualizadas por referência
      calcularMediaAprovacao(mediaFinal, statusFinal)
      
      // Exibe o resultado final formatado
      escreval("------------------------------------")
      escreval("A média final é: ", mediaFinal:0:2)
      escreval("Status: ", statusFinal)
      escreval("------------------------------------")
      
      escreval
      escreva("Deseja calcular outra média? (S/N): ")
      leia(continuar)
      
   ate (maiusc(continuar) = "N")
   
   limpatela()
   escreval("Obrigado por usar a calculadora. Fim do programa.")
   
fimalgoritmo
