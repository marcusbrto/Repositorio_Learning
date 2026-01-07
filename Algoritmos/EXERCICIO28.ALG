algoritmo "exercicio28"
var
   largura, comprimento, area : real
inicio
   Escreva("Qual a largura: ")
   leia(largura)
   Escreva("Qual o comprimento: ")
   leia(comprimento)
   area <- largura * comprimento
   se (area < 100) entao
      escreva("TERRENO POPULAR")
   senao
      se (area >= 100) e (area < 500)entao
         escreva("TERRENO MASTER")
      senao
         se (area >500)entao
            escreva("TERRENO VIP")
         fimse
      fimse
   fimse
fimalgoritmo