Algoritmo "EXERCICIO10"
Var
       nota_aluno,maior_nota:real
       qnt,alunos,alunoqnt:inteiro
       nome_aluno:caractere

Inicio
   EscrevaL("--------------------------")
   EscrevaL("    Escola                ")
   EscrevaL("--------------------------")
   Escreva("Quantos alunos a turma tem? ")
   leia(qnt)
     alunos <- 1
   repita
   EscrevaL("--------------------------")
      EscrevaL("ALUNO",alunos)
      Escreval("Nome do aluno: ")
      leia(nome_aluno)
      Escreva("Nota de ",nome_aluno,": ")
      leia(nota_aluno)
      alunos <- alunos + 1
      se(nota_aluno >= maior_nota)entao
      maior_nota <- nota_aluno
      fimse
   ate(qnt < alunos)
   EscrevaL("A maior nota da turma foi: ",maior_nota)
Fimalgoritmo
