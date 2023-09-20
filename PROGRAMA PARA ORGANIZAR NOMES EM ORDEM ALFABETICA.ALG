Algoritmo "PROGRAMA PARA ORGANIZAR NOMES EM ORDEM ALFABETICA"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis 
 NOME:VETOR[0..9]DE CARACTER
  I:INTEIRO
  J:INTEIRO
  AUX:CARACTER
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    PARA I DE 0 ATE 9 FACA
    LEIA (NOME[I])
    FIMPARA

   para i de 0 ate 9 faca
      para j de i+1 ate 9 faca
         se nome[i]> nome[j] entao
            aux<-nome[i]
            nome[i]<-nome[j]
            nome[j]<-aux
         fimse
      fimpara
   fimpara




    ESCREVAL(" ")
    ESCREVAL(" ")
    PARA I DE 0 ATE 9 FACA
    ESCREVAL(NOME[I])
    FIMPARA
Fimalgoritmo