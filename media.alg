algoritmo Calculador de Média
variáveis
    numeroDeNotas, i  inteiro
    nota, soma  real
    media  real
início
     Inicializa a soma das notas
    soma ← 0

    escreva(Digite o número de notas )
    leia(numeroDeNotas)

     Loop para receber as notas
    para i de 1 até numeroDeNotas faça
        escreva(Digite a nota , i,  )
        leia(nota)
        soma ← soma + nota   Soma as notas
    fimpara

     Calcula a média
    media ← soma  numeroDeNotas

     Exibe a média final
    escreva(A média final é , media)
fimenquanto
