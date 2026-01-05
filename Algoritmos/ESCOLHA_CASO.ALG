algoritmo "ESCOLHA_CASO"
var
   //Conceitos
   //Maior ou Igual a 8.5 será A
   // 7.5 até 8.4 será B
   //6.5 até 7.4 será C
   //5 até 6.4 será D
   //Menor que 5 será E
   opcao : inteiro
inicio
   EscrevaL("Por favor, selecione uma opção")
   Escreval("1 - Iniciar atendimento")
   Escreval("2 - Acompanhar meu pedido")
   Escreval("3 - Falar com atendente")
   Leia(opcao)

   Escolha(opcao)
   caso 1
      Escreval("Vamos iniciar seu atendimento")

   caso 2
      Escreval("Vamos acompanhar o pedido")

   caso 3
      Escreval("Você será encaminhado para um atendente")

   OutroCaso
      Escreval("Opção Inválida")
   FimEscolha

fimalgoritmo