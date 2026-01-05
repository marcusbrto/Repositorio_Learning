algoritmo "CHURRASCO"
//o tipo como vai ser usado logo em seguida em var geral então fazemos antes
Tipo Produto = registro
   nome : caracter
   preco, qnt, total : real //meio que cria um tipo de variavel
   //esse tipo nosso recebe 3 valores, qnt e preco sendo dito pelo usuario
   //e total nos vamos calcular
fimregistro

var
   opcao : inteiro
   ingredientes: vetor[1..5]de Produto //usamos o tipo que criamos



Funcao pegar_prox_posicao_livre() : inteiro //Função para pegar posição vazia do Vetor
var
   i : inteiro
inicio
   para i de 1 até 5 faça
      se(ingredientes[i].nome = "" ) entao
         retorne i
         interrompa
      fimse
   fimpara
fimfuncao



//INICIO lista procedimentos de cada opção
procedimento mostrar_lista()
var
   i : inteiro
inicio
   LimpaTela()//limpa tela é muito importante para não ficar varias vezes o
   //menu na tela.
   escreval(" LISTA DE INGREDIENTES ")
   escreval()

   escreval(" i | Nome | Preço | Qnt | Total ")

   para i de 1 até 5 faça
      se(ingredientes[i].nome <> "" ) entao//só vai executar os escreva abaixo
         //se tiver algum nome ali, se não tiver não aparece nada.

         escreva(i)//sempre que a gente tem o escreva fica na linha e escreval
         //quebra a linha.
         escreva(" | ",ingredientes[i].nome)
         escreva(" | ",ingredientes[i].preco)
         escreva(" | ",ingredientes[i].qnt)
         escreval(" | ",ingredientes[i].total)// o escreval que mantem bonitinho aqui
      fimse
   fimpara

   escreval()
fimprocedimento

procedimento add()
var
   posicao_livre : inteiro
inicio
   LimpaTela()

   posicao_livre <- pegar_prox_posicao_livre()

   escreval("ADICIONAR INGREDIENTES NO CHURRASCO")
   Escreval("Adicionar a posição: ", posicao_livre)
   escreval()

   escreva("Informe o nome do Ingrediente: ")
   leia(ingredientes[posicao_livre].nome) //definimos os valores do nosso vetor com nosso
   //tipo personalizado, na linha 1 de cada variavel do nosso tipo.
   Escreva("Digite o Preço: ")
   leia(ingredientes[posicao_livre].preco)
   escreva("Informe a quantidade:")
   leia(ingredientes[posicao_livre].qnt)
   ingredientes[posicao_livre].total <- ingredientes[posicao_livre].qnt*ingredientes[posicao_livre].preco//faz o total usando a quantidade com o preco sempre pegando o proximo valor livre

   LimpaTela()
   escrevaL(" OK - Ingrediente add com sucesso!")
   escreval()
fimprocedimento

procedimento alterar()
var
   i : inteiro
inicio
   LimpaTela()
   escreval(" ALTERAR UM INGREDIENTE ")
   escreval()
   mostrar_lista()
   escreval()

   escreva("Informe o i do ingrediente a ser alterado:")
   leia(i)

   escreva("Informe o nome do Ingrediente: ")
   leia(ingredientes[i].nome)
   Escreva("Digite o Preço: ")
   leia(ingredientes[i].preco)
   escreva("Informe a quantidade:")
   leia(ingredientes[i].qnt)
   ingredientes[i].total <- ingredientes[i].qnt*ingredientes[i].preco

   LimpaTela()
   Escreval(" OK - Ingrediente atualizado com sucesso!")
   escreval()

fimprocedimento

procedimento remover()
var
   i : inteiro
inicio
   LimpaTela()
   escreval(" REMOVER UM INGREDIENTE ")
   escreval()
   mostrar_lista()
   escreval()

   escreva("Informe o i do ingrediente a ser removido:")
   leia(i)

   ingredientes[i].nome  <- ""
   ingredientes[i].preco  <- 0
   ingredientes[i].qnt <- 0
   ingredientes[i].total <- 0

   LimpaTela()
   Escreval(" OK - Ingrediente removido com sucesso!")
   escreval()
fimprocedimento
//FIM lista procedimentos de cada opção

//conteudo do programa
inicio
   repita
      Escreval("Sistema de Calculo do Churrasco")
      Escreval("Selecione uma opção:")
      Escreval(" 1 - Ver a lista de ingredientes")
      Escreval(" 2 - Add ingrediente")
      Escreval(" 3 - Alterar um ingrediente")
      Escreval(" 4 - Remover um ingrediente")
      Escreval(" 0 - Sair")
      escreva("Digite a opção: ")
      leia(opcao)
      //escolha é o que lê as opções e pede para executar as coisas certas de cada uma
      Escolha(opcao)
      caso 1
         mostrar_lista()
      caso 2
         add()
      caso 3
         alterar()
      caso 4
         remover()
      fimescolha
   ate(opcao = 0)
   escreval()
   escreval("Tchau :D")
fimalgoritmo