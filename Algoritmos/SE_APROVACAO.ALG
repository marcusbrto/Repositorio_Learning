algoritmo "SE_APROVACAO"
var
   primeira_nota, segunda_Nota, media : real
inicio
   primeira_nota <- 0
   segunda_nota <- 0

   Escreva("Digite a primeira nota: ")
   leia(primeira_nota)

   Escreva("Digite a segunda nota: ")
   leia(segunda_nota)
   escreval()
   media <- (primeira_nota + segunda_nota) / 2

   se (media > 7) entao
      escreval("Aluno Aprovado")
      escreval("Parabéns!")
   senao
      se (media >= 5) entao
         escreval("Aluno em Recuperação")
         escreval("Ainda tem chances")
      senao
         se(media < 5 )entao
            escreval("Aluno Reprovado")
            escreval("Que pena, você já era")
         fimse
      fimse
   fimse

   escreval()
   Escreva("Sua média é ", media)

fimalgoritmo