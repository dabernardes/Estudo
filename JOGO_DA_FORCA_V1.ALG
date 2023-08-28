Algoritmo "Jogo_da_Forca"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Douglas
// Data atual  : 12/06/2023
Var
   opcaoinicio,erros,acertos,tamanhopalavra,i,cont,opcao:inteiro
   palavra,letraspalavra,letrasdigitadas,corpo:vetor[1..20] de caractere
   palavrasecreta,letra:caracter



Inicio
   corpo[1]<-"( )"
   corpo[2]<-"|"
   corpo[3]<-"/|"
   corpo[4]<-"/|\"
   corpo[5]<-"/"
   corpo[6]<-"/ \"
   corpo[7]<-"(x.x)"
   opcao<-1


      escreval("*****************************************************")
      escreval("*                   JOGO DA FORCA                   *")
      escreval("*****************************************************")
      escreval("*                                                   *")
      escreval("*                     1-Inicio                      *")
      escreval("*                     0-Sair                        *")
      escreval("*****************************************************")
      escreva ("*Digite uma opção: ")
      leia(opcaoinicio)
 enquanto opcao = opcaoinicio faca
 erros<-0
 acertos<-0
  para i<-1 ate 20 faca
     letrasdigitadas[i]<-" "
  fimpara
      se opcaoinicio = 1 entao
         limpatela
         escreval("*****************************************************")
         escreval("*                   JOGO DA FORCA                   *")
         escreval("*****************************************************")
         escreva ("*Escreva a Palavra Secreta: ")
         leia(palavrasecreta)
         escreval("*_______________                                   *")
         escreval("*||            |                                   *")
         escreval("*||                                                *")
         escreval("*||                                                *")
         escreval("*||                                                *")
         escreval("*||                                                *")
         escreval("*||                                                *")
         escreval("*| \                                               *")
         escreval("*|__\                                              *")
         escreval("****************************************************")
         tamanhopalavra<-compr(palavrasecreta)
         para i de 1 ate tamanhopalavra  faca
            letraspalavra[i]<-copia(palavrasecreta,i,1)
            palavra[i]<- " _ "

            Escreva(palavra[i]," ")
         fimpara
         repita
            escreval(" ")
            Escreval("*****************************************************")
            escreva("*Digite uma Letra: ")
            leia(letra)
            para i de 1 ate tamanhopalavra faca




               limpatela
               se letra =letraspalavra[i] entao
                  acertos<-acertos+1
                  palavra[i]<-letra
               senao
                  cont<-cont+1
               fimse
               escreval("*****************************************************")
               escreval("*                   JOGO DA FORCA                   *")
               escreval("*****************************************************")
               escreval("* Voce digitou: ",letra)
               escreval("*****************************************************")
               letrasdigitadas[i]<-letrasdigitadas[i]+"|"+letra

               escreva ("*letras : ",letrasdigitadas[i])
               escreval(" ")
               escreval("*****************************************************")
               escreval("*_______________                                    *")
               escreval("*||            |                                    *")
               cont<-0
            fimpara
            para i de 1 ate tamanhopalavra faca
               se letraspalavra[i] <> letra entao
                  cont<-cont+1
               fimse
            fimpara
            se cont=tamanhopalavra entao
               erros<-erros+1
            fimse
            se erros =1 entao
               escreval("*||           ",corpo[1], "                                   *")
            senao
               se erros = 2 entao
                  escreval("*||           ",corpo[1], "                                   *")
                  escreval("*||            ",corpo[2], "                                    *")
               senao
                  se erros = 3 entao
                     escreval("*||           ",corpo[1], "                                   *")
                     escreval("*||           ",corpo[3], "                                    *")
                  senao
                     se erros =4 entao
                        escreval("*||           ",corpo[1], "                                   *")
                        escreval("*||           ",corpo[4], "                                   *")
                     senao
                        se erros = 5 entao
                           escreval("*||           ",corpo[1], "                                   *")
                           escreval("*||           ",corpo[4], "                                   *")
                           escreval("*||           ",corpo[5], "                                     *")
                        senao
                           se erros = 6 entao


                              escreval("*||          ",corpo[7], "                                  *")
                              escreval("*||+++++++++++++++++VOCÊ MORREU+++++++++++++++++++++*")
                              escreval("*||           ",corpo[4], "                                   *")

                              escreval("*||           ",corpo[6 ], "        A Palavra era: ",palavrasecreta, "         *")


                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
            escreval("*||                                                 *")
            escreval("*||                                                 *")
            escreval("*||                                                 *")
            escreval("*||                                                 *")
            escreval("*| \                                                *")
            escreval("*|__\                                               *")
            escreval("*****************************************************")
            para i de 1 ate tamanhopalavra faca
               se letraspalavra[i]=letra entao
                  palavra[i]<-letra
                  escreva(palavra[i]," ")
               senao
                  escreva(palavra[i]," ")
               fimse
            fimpara
            escreval(" ")
            escreval("*****************************************************")


         ate (erros=6)ou (acertos=tamanhopalavra)
         se acertos = tamanhopalavra entao
            limpatela
            escreval("***********************************************")
            escreval("*Você Venceu, Por Hoje sua cabeca esta a Salvo*")
            escreval("***********************************************")
            escreval("*               O QUE FAZER ?                 *")
            escreval("* 1 - Voltar ao inicio                        *")
            escreval("* 0 - Sair                                    *")
            escreval("***********************************************")
            leia (opcao)
         senao
            limpatela
            escreval("***********************************************")
            escreval("*Você Perdeu, Sua Cabeça foi descepada        *")
            escreval("***********************************************")
            escreval("*               O QUE FAZER ?                 *")
            escreval("* 1 - Voltar ao inicio                        *")
            escreval("* 0 - Sair                                    *")
            escreval("***********************************************")
            leia (opcao)
         fimse
      fimse
   fimenquanto





Fimalgoritmo