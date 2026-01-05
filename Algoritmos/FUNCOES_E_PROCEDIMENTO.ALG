algoritmo "Funcoes_e_Procedimento"
var
   primeiro_numero, segundo_numero: real
   resultado : real
//AS VARIAVEIS DENTRO DE PROCEDIMENTO E FUNCAO SÓ EXISTEM DENTRO DELAS
procedimento somar()
var         //procedimento não retorna valor //
resultado_local : real
inicio
      resultado_local <- primeiro_numero + segundo_numero
      escreval("O resultado somar é: ",resultado_local )
fimprocedimento
funcao subtrair(x,y//Parametros recebem valores // : real):real
var
res_local : real
inicio     //função retorna valor//
       res_local <- primeiro_numero - segundo_numero
       retorne res_local
fimfuncao
inicio
       escreva("Digite o primeiro número: ")
       leia(primeiro_numero)
       escreva("Digite o segundo número: ")
       leia(segundo_numero)
       
       subtrair(primeiro_numero,segundo_numero)//valores que serão mandados p/
       // para os parametros
       
       somar() //chama o procedimento somar

       resultado <- subtrair() //só é usado assim quando for precisar usar o
       //resultado em outra coisa
       
       escreval("O resultado de subtrair é: ",resultado)
       //escreval("O resultado de subtrair é: ",subtrair())
fimalgoritmo