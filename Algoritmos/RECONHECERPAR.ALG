algoritmo "semnome"
var
   numero : vetor[1..5]de inteiro
   c,par : inteiro
inicio
   c <- 1
   par <- 0
   repita
      Escreva("Escreva um número: ")
      leia(numero[c])
      se (numero[c] % 2 = 0)entao
         par <- par + 1
      fimse
      c <- c + 1
   ate c > 5
   Escreva("A quantidade de números pares é: ",par)
fimalgoritmo