algoritmo "VETORES"
var
   n : vetor[1..5]de caracter
   c,posicao : inteiro
inicio

   para c <- 1 ate 5 faca
      Escreva("Digite um nome: ")
      leia(n[c])
      c <- c + 1
   fimpara

   Escreval()

   Escreval("Digite uma posição de vetor: ")
   leia(posicao)

   Escreval("O valor da posição é ", n[posicao])

fimalgoritmo