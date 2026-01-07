algoritmo "exercicio29"
var
   aumento, salario, novo_salario : real
   temp : inteiro
inicio
   Escreva("Quanto tempo você tem na empresa? ")
   leia (temp)
   Escreva("Qual o seu salário? ")
   leia(salario)
   se (temp < 3)entao
      aumento <- salario * (3 / 100)
   senao
      se (temp >= 3) e (temp < 10)entao
         aumento <- salario * (12.5 / 100)
      senao
         se (temp >= 10)entao
            aumento <- salario * (20 / 100)
         fimse
      fimse
   fimse
   novo_salario <- salario + aumento
   Escreva("Seu novo salário é: ",novo_salario)
fimalgoritmo