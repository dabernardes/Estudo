Algoritmo "Jogo_da_Forca"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Douglas
// Data atual  : 12/06/2023

Var
   opcaoinicio,erros,acertos,tamanhopalavra,i,cont,opcao,x:inteiro
   palavra,letraspalavra,letrasdigitadas,corpo,plvrand,dica:vetor[1..20] de caractere
   palavrasecreta,letra,plvescolhida,fraseescolhida:caracter



Inicio
   plvrand[1]<-"PAPAGAIO"
   plvrand[2]<-"LIQUIDIFICADOR"
   plvrand[3]<-"FEIJOADA"
   plvrand[4]<-"SMARTPHONE"
   plvrand[5]<-"SATURNO"
   plvrand[6]<-"VIOLA CAIPIRA"
   plvrand[7]<-"DEZEMBRO"
   plvrand[8]<-"ALGORITMO"
   plvrand[9]<-"MG"
   plvrand[10]<-"UNIUBE"
   
   dica[1]<-" Especie de passaro"
   dica[2]<-" Aparelho eletrico geralmente usado na cozinha "
   dica[3]<-" Prato típico popular da culinária brasileira"
   dica[4]<-" Aparelho eletronico mais usado nos ultimos tempos"
   dica[5]<-" Nome de um planeta"
   dica[6]<-" Instrumento Musical"
   dica[7]<-" Nome de um Mes "
   dica[8]<-" E uma sequência de instruções para alcançar um objetivo"
   dica[9]<-" Sigla de um estado"
   dica[10]<-"Universidade de Verdade"
   
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
      escreval("*                                                   *")
      escreval("* Obs: Pode haver palavras compostas ou separadas   *")
      escreval("*      por espaco nao esqueca de digitar            *")
      escreval("*****************************************************")
      escreva ("*Digite uma opção: ")
      leia(opcaoinicio)
 enquanto opcao = opcaoinicio faca
 erros<-0
 acertos<-0
  x<-randi(10)+1
   plvescolhida<- plvrand[x]
   fraseescolhida<- dica[x]
  para i<-1 ate 20 faca
     letrasdigitadas[i]<-" "
  fimpara
      se opcaoinicio = 1 entao
         limpatela
         escreval("*****************************************************")
         escreval("*                   JOGO DA FORCA                   *")
         escreval("*****************************************************")
         //escreva ("*Escreva a Palavra Secreta: ")
         escreval ("* Dica: ",fraseescolhida)
         //leia(palavrasecreta)
         palavrasecreta <- plvescolhida
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
               escreval("* Dica: ",fraseescolhida)
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

                              escreval("*||           ",corpo[6 ], "        A Palavra era: ",plvescolhida, "         *")


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
            leia (palavrasecreta)
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