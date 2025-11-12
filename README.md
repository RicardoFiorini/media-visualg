# 🎓 Calculadora de Média Escolar em Portugol

Este é um algoritmo robusto em Portugol para calcular a média aritmética de um conjunto de notas e determinar o status acadêmico do aluno (Aprovado, Recuperação, Reprovado).

O projeto vai além de um simples cálculo, incorporando **validação de entrada** crucial para prevenir erros de execução (como divisão por zero) e **modularização** para um código mais limpo.

## ✨ Funcionalidades

* **Cálculo de Média:** O usuário pode inserir quantas notas desejar (`N`) e o programa calculará a média aritmética.
* **Loop de Execução:** Permite ao usuário realizar múltiplos cálculos de média sem precisar reiniciar o algoritmo.
* **Validação de Entradas (Robustez):** O programa possui duas camadas de validação:
    1.  **Validação de Quantidade:** Impede que o usuário insira `0` ou um número negativo de notas, evitando um erro de "divisão por zero".
    2.  **Validação de Notas:** Garante que cada nota inserida esteja dentro de um intervalo lógico (ex: 0 a 10), rejeitando valores inválidos.
* **Status de Aprovação:** Além de exibir a nota média, o programa classifica o resultado em:
    * **APROVADO** (Média >= 7.0)
    * **RECUPERAÇÃO** (Média >= 4.0 e < 7.0)
    * **REPROVADO** (Média < 4.0)
* **Saída Formatada:** A média final é exibida com formatação de duas casas decimais (ex: `7.85`).

## 🛠️ Estrutura do Código

Para manter o código organizado e fácil de ler, a lógica foi separada do fluxo principal:

1.  **`procedimento calcularMediaAprovacao(porRef ...)`:**
    * Esta é a função central do programa. Ela é responsável por toda a lógica de negócio:
    * Perguntar o número de notas e validar essa entrada.
    * Pedir cada uma das notas e validar seus valores (loop `para`).
    * Calcular a média.
    * Determinar o status de aprovação.
    * Ela usa **passagem por referência** (`porRef`) para "retornar" múltiplos valores (a `media` e o `status`) para o bloco principal.

2.  **Bloco `inicio` (Principal):**
    * Atua como o "controlador" da interface do usuário (UI).
    * É responsável por limpar a tela e exibir o título.
    * Chama o procedimento `calcularMediaAprovacao`.
    * Exibe os resultados formatados que foram calculados pelo procedimento.
    * Controla o loop de "jogar novamente" (`repita...ate`).

## 🚀 Como Executar

1.  **Ambiente:** Utilize um interpretador de Portugol como o [VisualG](httpsa://visualg3.com.br/) ou o [Portugol Studio](https://portugol-studio.github.io/).
2.  **Download:** Copie o código do arquivo.
3.  **Executar:** Abra o arquivo no interpretador e inicie a execução (normalmente com `F9`).
