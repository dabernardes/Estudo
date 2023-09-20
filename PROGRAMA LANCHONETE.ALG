Algoritmo "PROGRAMA LANCHONETE"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Paulo
// Descrição   : ACQA - Programa para vendas de uma lanchonete que
//faca vendas e no final do dia apresente uma tela com os dados referente as vendas
// Autor(a)    :Douglas de Abreu Bernardes
// Data atual  : 06/09/2023
Var
   i:inteiro
   x:inteiro
   y:inteiro
   z:inteiro
   w:inteiro
   k:inteiro
   tx:inteiro
   ty:inteiro
   tz:inteiro
   sn:inteiro
   VERIFICA:INTEIRO
   compara:inteiro
   opcaoM:inteiro
   opcaoL:inteiro
   opcaoA:inteiro
   opcaoB:inteiro
   QNTLANCHE:inteiro
   QNTACOM:inteiro
   QNTBEBI:inteiro
   NMLANCHE:caracter
   NMACOMPAN:caracter
   NMBEBI:caracter
   VLLANCHE:real
   VLACOM:real
   VLBEBI:real
   tlanche:real
   TACOMPAN:real
   TOTAL:REAL
   MEDIA:REAL
   TBEB:real
   Nlanches:vetor[1..7]de caracter
   NACOMPAN:vetor[1..7]de caracter
   NBEB:vetor[1..7]de caracter
   QNTLANCHES:vetor[1..7]de inteiro
   QNTACOMPAN:vetor[1..7]de inteiro
   QNTBEB:vetor[1..7]de inteiro
   VLLANCHES:vetor[1..7]de real
   VLACOMPAN:vetor[1..7]de real
   VLBEB:vetor[1..7]de real
   tvenda:vetor[1..200]de real

procedimento menuinicial
inicio
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
   ESCREVAL("@                                                              @")
   ESCREVAL("@              BEM VINDO A LANCHONETE DO DOUGLAS               @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@                      ESCOLHA UMA OPCAO                       @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@  1 - LANCHES                                                 @")
   ESCREVAL("@  2 - ACOMPANHAMENTOS                                         @")
   ESCREVAL("@  3 - BEBIDAS                                                 @")
   ESCREVAL("@  4 - FINALIZA VENDA                                          @")
   ESCREVAL("@  0 - SAIR                                                    @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
fimprocedimento

procedimento menulanches
inicio
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
   ESCREVAL("@                                                              @")
   ESCREVAL("@                       FACA SEU LANCHE                        @")                                                                @")
   ESCREVAL("@  1 - X-TUDO                              R$ 20,00            @")
   ESCREVAL("@  2 - PIZZA MODA DA CASA                  R$ 60,00            @")
   ESCREVAL("@  3 - HOT DOG                             R$ 18,50            @")
   ESCREVAL("@  4 - MISTO QUENTE                        R$  7,25            @")
   ESCREVAL("@  5 - X-SALADA                            R$ 15,00            @")
   ESCREVAL("@  6 - CALDO DE FRANGO                     R$ 22,00            @")
   ESCREVAL("@  7 - PEIXE FRITO                         R$ 45,00            @")
   ESCREVAL("@  0 - RETORNA AO MENU PRINCIPAL                               @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
fimprocedimento

procedimento menuacompanhamento
inicio
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
   ESCREVAL("@                                                              @")
   ESCREVAL("@             ESCOLHA O ACOMPANHAMENTO DO LANCHE               @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@  1 - BATATA FRITA                     R$  8,75               @")
   ESCREVAL("@  2 - CEBOLA CRISP                     R$ 10,00               @")
   ESCREVAL("@  3 - SALADA                           R$  5,00               @")
   ESCREVAL("@  4 - SORVETE                          RS  7,00               @")
   ESCREVAL("@  5 - TORRADA                          R$  2,35               @")
   ESCREVAL("@  6 - PORCAO DE ARROZ                  R$  4,75               @")
   ESCREVAL("@  7 - MINI PIZZA DOCE                  R$ 19,00               @")
   ESCREVAL("@  0 - RETORNA AO MENU PRINCIPAL                               @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
fimprocedimento

procedimento menubebida
inicio
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
   ESCREVAL("@                                                              @")
   ESCREVAL("@                      ESCOLHA UMA BEBIDA                      @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@  1 - AGUA SEM GAS                       R$ 3,00              @")
   ESCREVAL("@  2 - AGUA COM GAS                       R$ 3,00              @")
   ESCREVAL("@  3 - COCA-COLA LATA                     R$ 4,50              @")
   ESCREVAL("@  4 - FANTA LATA                         R$ 4,00              @")
   ESCREVAL("@  5 - SUCOS                              R$ 8,00              @")
   ESCREVAL("@  6 - AGUA DE COCO                       R$ 5,00              @")
   ESCREVAL("@  7 - CAFE                               R$ 2,50              @")
   ESCREVAL("@  0 - VOLTAR                                                  @")
   ESCREVAL("@                                                              @")
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
fimprocedimento

funcao opcaoini:inteiro
var
   opc:inteiro
inicio
   opc <- 0

   menuinicial

   escreval("DIGITE A OPÇÃO DESEJADA")
   leia (opc)

   enquanto (opc < 0) ou (opc > 4) faca
      escreval("Digite um Valor Valido")
      leia (opc)
   fimenquanto
   retorne opc
fimfuncao

funcao OpcaoLanche:inteiro
var
   opc:inteiro
inicio
   opc <- 0

   menulanches

   escreval("DIGITE A OPÇÃO DESEJADA")
   leia (opc)

   enquanto (opc < 0) ou (opc > 7) faca
      escreval("Digite um Valor Valido")
      leia (opc)
   fimenquanto
   retorne opc
fimfuncao

funcao Opcaoacomp:inteiro
var
   opc:inteiro
inicio
   opc <- 0

   menuacompanhamento

   escreval("DIGITE A OPÇÃO DESEJADA")
   leia (opc)

   enquanto (opc < 0) ou (opc > 7) faca
      escreval("Digite um Valor Valido")
      leia (opc)
   fimenquanto
   retorne opc
fimfuncao

funcao Opcaobebida:inteiro
var
   opc:inteiro
inicio
   opc <- 0

   menubebida

   escreval("DIGITE A OPÇÃO DESEJADA")
   leia (opc)

   enquanto (opc < 0) ou (opc > 7) faca
      escreval("Digite um Valor Valido")
      leia (opc)
   fimenquanto
   retorne opc
fimfuncao





Inicio

   repita
      OPCAOM<-9
      VERIFICA<- opcaoini
      SE VERIFICA = 0 ENTAO
         SE X > 0 ENTAO
            LIMPATELA
            ESCREVAL("LANCHE NO CARRINHO, FINALIZE A VENDA ANTES DE FECHAR O DIA")
            escreval("")
            ESCREVAL("APERTE ENTER PARA CONTINUAR")
            LEIA (SN)
         SENAO
            SE Y > 0 ENTAO
               LIMPATELA
               ESCREVAL("ACOMPANHAMENTO NO CARRINHO, FINALIZE A VENDA ANTES DE FECHAR O DIA")
               escreval("")
               ESCREVAL("APERTE ENTER PARA CONTINUAR")
               LEIA (SN)
            SENAO
               SE Z > 0 ENTAO
                  LIMPATELA
                  ESCREVAL("BEBIDA NO CARRINHO, FINALIZE A VENDA ANTES DE FECHAR O DIA")
                  escreval("")
                  ESCREVAL("APERTE ENTER PARA CONTINUAR")
                  LEIA (SN)
               SENAO
                  OPCAOM <- VERIFICA
               FIMSE
            FIMSE
         FIMSE
      SENAO
         OPCAOM <- VERIFICA
      FIMSE
      escolha opcaoM
      caso 1
         COMPARA <- 0
         SE X = 0 ENTAO
            repita
               opcaoL <- opcaolanche
               escolha opcaoL
               CASO 1
                  NMLANCHE <- "X-TUDO"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                  VLLANCHE <- 20.00 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE
               CASO 2
                  NMLANCHE <- "PIZZA MODA DA CASA"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                          VLLANCHE <- 60.00 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE
               CASO 3
                  NMLANCHE <- "HOT DOG"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                  VLLANCHE <- 18.50 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE
               CASO 4
                  NMLANCHE <- "MISTO QUENTE"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                  VLLANCHE <- 7.25 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE
               CASO 5
                  NMLANCHE <- "X-SALADA"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                  VLLANCHE <- 15.00 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE
               CASO 6
                  NMLANCHE <- "CALDO DE FRANGO"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                  VLLANCHE <- 22.00 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE
               CASO 7
                  NMLANCHE <- "PEIXE FRITO"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTLANCHE)
                  VLLANCHE <- 45.00 * QNTLANCHE
                  PARA I DE 1 ATE 7 FACA
                     SE NLANCHES[I] = NMLANCHE ENTAO
                        QNTLANCHES[I] <- QNTLANCHES[I] + QNTLANCHE
                        VLLANCHES[I] <- VLLANCHES[I] + VLLANCHE
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     X <- X+1
                     NLANCHES[X]<- NMLANCHE
                     QNTLANCHES[X]<- QNTLANCHE
                     VLLANCHES[X]<- VLLANCHE
                  FIMSE

               FIMESCOLHA
            ate opcaoL = 0
            PARA X DE 1 ATE 7 FACA
               SE NLANCHES[X] <> "" ENTAO
                  ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                  ESCREVAL("@",NLANCHES[X]," @ QNT: ",QNTLANCHES[X]:2," VALOR: ",VLLANCHES[X]:4:2)
               FIMSE
            FIMPARA
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("OS PEDIDOS ESTAO CORRETOS?")
            ESCREVAL(" 1 - SIM")
            ESCREVAL(" 2 - NAO")
            LEIA(SN)
            SE (SN = 0) OU (SN > 2)  ENTAO
               ESCREVAL("DIGITE UMA OPCAO VALIDA!")
               ESCREVAL("OS PEDIDOS ESTAO CORRETOS?")
               ESCREVAL(" 1 - SIM")
               ESCREVAL(" 2 - NAO")
            SENAO
               SE SN = 2 ENTAO
                  PARA X DE 1 ATE 7 FACA
                     NLANCHES[X] <- ""
                     QNTLANCHES[X] <- 0
                     VLLANCHES[X] <- 0
                  FIMPARA
                  NMLANCHE <- ""
                  QNTLANCHE <- 0
                  VLLANCHE <- 0
                  LIMPATELA
                  ESCREVAL("NECESSARIO EFETUAR O REGISTRO DOS LANCHES NOVAMENTE")
                  escreval("")
                  ESCREVAL("APERTE ENTER PARA CONTINUAR")
                  LEIA(SN)
                  X<-0
               SENAO
                  PARA X DE 1 ATE 7 FACA
                     TX <- TX + QNTLANCHES[X]
                  FIMPARA
               FIMSE
            FIMSE
         SENAO
            LIMPATELA
            ESCREVAL("LANCHE JA PEDIDO VERIFIQUE OPCOES DE ACOMPANHAMENTOS OU/E")
            ESCREVAL("BEBIDAS E FINALIZE A VENDA")
            escreval("")
            ESCREVAL("APERTE ENTER PARA CONTINUAR")
            LEIA(SN)
         FIMSE


      caso 2
         COMPARA <- 0
         SE Y = 0 ENTAO
            repita
               opcaoA <- opcaoacomp
               escolha opcaoA
               caso 1
                  NMACOMPAN <- "BATATA FRITA"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 8.75 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1

                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               caso 2
                  NMACOMPAN <- "CEBOLA CRISP"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 10.00 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               caso 3
                  NMACOMPAN <- "SALADA"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 5.00 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               caso 4
                  NMACOMPAN <- "SORVETE"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 7.00 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               caso 5
                  NMACOMPAN <- "TORRADA"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 2.35 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               caso 6
                  NMACOMPAN <- "PORCAO DE ARROZ"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 4.75 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               caso 7
                  NMACOMPAN <- "MINI PIZZA DOCE"
                  ESCREVAL("DIGITE A QUANTIDADE: ")
                  LEIA(QNTACOM)
                  VLACOM <- 19.00 * QNTACOM
                  PARA I DE 1 ATE 7 FACA
                     SE NACOMPAN[I] = NMACOMPAN ENTAO
                        QNTACOMPAN[I] <- QNTACOMPAN[I] + QNTACOM
                        VLACOMPAN[I] <- VLACOMPAN[I] + VLACOM
                        COMPARA <- 1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Y <- Y +1
                     NACOMPAN[Y] <- NMACOMPAN
                     VLACOMPAN[Y] <- VLACOM
                     QNTACOMPAN[Y] <- QNTACOM
                  FIMSE
               fimescolha
            ate opcaoA = 0
            PARA y DE 1 ATE 7 FACA
               SE NACOMPAN[Y] <> "" ENTAO
                  ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                  ESCREVAL("@",NACOMPAN[Y]," QNT: ",QNTACOMPAN[Y]:2," VALOR: ",VLACOMPAN[Y]:4:2,"@")
               FIMSE
            FIMPARA
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("OS PEDIDOS ESTAO CORRETOS?")
            ESCREVAL(" 1 - SIM")
            ESCREVAL(" 2 - NAO")
            LEIA(SN)
            SE (SN = 0) OU (SN > 2)  ENTAO
               ESCREVAL("DIGITE UMA OPCAO VALIDA!")
               ESCREVAL("OS PEDIDOS ESTAO CORRETOS?")
               ESCREVAL(" 1 - SIM")
               ESCREVAL(" 2 - NAO")
            SENAO
               SE SN = 2 ENTAO
                  PARA Y DE 1 ATE 7 FACA
                     NACOMPAN[Y] <- ""
                     VLACOMPAN[Y] <- 0
                     QNTACOMPAN[Y] <- 0
                  FIMPARA
                  NMACOMPAN <-""
                  QNTACOM <- 0
                  VLACOM <- 0
                  LIMPATELA
                  ESCREVAL("NECESSARIO EFETUAR O REGISTRO DOS LANCHES NOVAMENTE")
                  escreval("")
                  ESCREVAL("APERTE ENTER PARA CONTINUAR")
                  LEIA (SN)
                  Y <-0
               SENAO
                  PARA Y DE 1 ATE 7 FACA
                     TY <- TY + QNTACOMPAN[Y]
                  FIMPARA
               FIMSE
            fimse
         SENAO
            LIMPATELA
            ESCREVAL("ACOMPANHAMENTO JA PEDIDO VERIFIQUE OPCOES DE LANCHES OU/E")
            ESCREVAL("BEBIDAS E FINALIZE A VENDA")
            escreval("")
            ESCREVAL("APERTE ENTER PARA CONTINUAR")
            LEIA(SN)
         FIMSE


      caso 3
         compara<-0
         SE z = 0 ENTAO
            repita
               opcaoB <- opcaobebida
               escolha opcaoB
               caso 1
                  NMBEBI <- "AGUA SEM GAS"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 3,00 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1

                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               caso 2
                  NMBEBI <- "AGUA COM GAS"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 3.00 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               CASO 3
                  NMBEBI <- "COCA-COLA LATA"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 4.50 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               CASO 4
                  NMBEBI <- "FANTA LATA"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 4.00 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               CASO 5
                  NMBEBI <- "SUCOS"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 8.00 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               CASO 6
                  NMBEBI <- "AGUA DE COCO"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 5.00 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               CASO 7
                  NMBEBI <- "CAFE"
                  ESCREVA("DIGITE A QUANTIDADE: ")
                  LEIA(QNTBEBI)
                  VLBEBI <- 2.50 * QNTBEBI
                  PARA I DE 1 ATE 7 FACA
                     SE NBEB[I]=NMBEBI ENTAO
                        VLBEB[I] <- VLBEB[I] + VLBEBI
                        QNTBEB[I] <- QNTBEB[I] +QNTBEBI
                        COMPARA <-1
                     FIMSE
                  FIMPARA
                  SE COMPARA = 0 ENTAO
                     Z<-Z + 1
                     NBEB[Z] <- NMBEBI
                     VLBEB[Z] <- VLBEBI
                     QNTBEB[Z] <- QNTBEBI
                  FIMSE
               fimescolha
            ate opcaoB = 0
            PARA Z DE 1 ATE 7 FACA
               SE NBEB[Z] <> "" ENTAO
                  ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                  ESCREVAL("@",NBEB[Z]," QNT: ",QNTBEB[Z]:2," VALOR: ",VLBEB[Z]:4:2,"@")
               FIMSE
            FIMPARA
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("OS PEDIDOS ESTAO CORRETOS?")
            ESCREVAL(" 1 - SIM")
            ESCREVAL(" 2 - NAO")
            LEIA(SN)
            SE (SN = 0) OU (SN > 2)  ENTAO
               ESCREVAL("DIGITE UMA OPCAO VALIDA!")
               ESCREVAL("OS PEDIDOS ESTAO CORRETOS?")
               ESCREVAL(" 1 - SIM")
               ESCREVAL(" 2 - NAO")
            SENAO
               SE SN = 2 ENTAO
                  PARA Z DE 1 ATE 7 FACA
                     NBEB[Z] <- ""
                     VLBEB[Z] <- 0
                     QNTBEB[Z] <- 0
                  FIMPARA
                  NMBEBI <- ""
                  VLBEBI <- 0
                  QNTBEBI<- 0
                  LIMPATELA
                  ESCREVAL("NECESSARIO EFETUAR O REGISTRO DOS LANCHES NOVAMENTE")
                  escreval("")
                  ESCREVAL("APERTE ENTER PARA CONTINUAR")
                  LEIA(SN)
                  Z <-0
               SENAO
                  PARA Z DE 1 ATE 7 FACA
                     TZ <- TZ + QNTBEB[Z]
                  FIMPARA
               FIMSE
            fimse
         SENAO
            LIMPATELA
            ESCREVAL("BEBIDA JA PEDIDA VERIFIQUE OPCOES DE ACOMPANHAMENTOS OU/E")
            ESCREVAL("LANCHES E FINALIZE A VENDA")
            escreval("")
            ESCREVAL("APERTE ENTER PARA CONTINUAR")
            LEIA(SN)
         FIMSE
      caso 4
            LIMPATELA
    ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
    ESCREVAL("@                                                               @")
    ESCREVAL("@   DEJESA FINALIZAR A COMPRA?                                  @")
    ESCREVAL("@                                                               @")
    ESCREVAL("@  1 - TOTALIZAR COMPRA                                         @")
    ESCREVAL("@  2 - CANCELAR COMPRA                                          @")
    ESCREVAL("@                                                               @")
    ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
    ESCREVA("@ VOCE ESCOLHEU A OPCAO: ")
          LEIA (SN)
         SE SN = 1 ENTAO
            LIMPATELA
            PARA X DE 1 ATE 7 FACA
               TLANCHE <- TLANCHE + VLLANCHES[X]
            FIMPARA
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("@ VALOR DOS LANCHES : ",TLANCHE:5:2,"$")
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            PARA Y DE 1 ATE 7 FACA
               TACOMPAN <- TACOMPAN + VLACOMPAN[Y]
            FIMPARA
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("@ VALOR DOS ACOMPANHAMENTOS : ",TACOMPAN:5:2,"$")
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            PARA Z DE 1 ATE 7 FACA
               TBEB <- TBEB + VLBEB[Z]
            FIMPARA
            W <- W + 1
            TVENDA[W] <- TLANCHE + TACOMPAN + TBEB
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("@ VALOR DAS BEBIDAS : ",TBEB:5:2,"$")
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("@                                                             @")
            ESCREVAL("@       VALOR TOTAL A SER PAGO = ",TVENDA[W]:5:2                ,"@")
            ESCREVAL("@                                                             @")
            ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            ESCREVAL("@ DIGITE ENTER PARA CONTINUAR                                 @")
            LEIA(SN)
            ENQUANTO SN <> "" FACA
               ESCREVAL(" DIGITE APENAS ENTER ")
            FIMENQUANTO
            PARA X DE 1 ATE 7 FACA
               NLANCHES[X] <- ""
               NACOMPAN[X] <- ""
               NBEB[X] <- ""
               VLLANCHES[X] <- 0
               VLACOMPAN[X] <- 0
               VLBEB[X]<- 0
            FIMPARA
            x <- 0
            Y <- 0
            Z <- 0
            TLANCHE <- 0
            TACOMPAN <- 0
            TBEB <- 0

         SENAO
            SE SN = 2 ENTAO
               PARA X DE 1 ATE 7 FACA
                  NLANCHES[X] <- ""
                  NACOMPAN[X] <- ""
                  NBEB[X] <- ""
                  VLLANCHES[X] <- 0
                  VLACOMPAN[X] <- 0
                  VLBEB[X]<- 0
               FIMPARA
               x <- 0
               Y <- 0
               Z <- 0
               TLANCHE <- 0
               TACOMPAN <- 0
               TBEB <- 0


            FIMSE
         FIMSE
      OUTROCASO
      FIMESCOLHA
   ate opcaoM = 0
   LIMPATELA
   PARA K DE 1 ATE W FACA
      TOTAL <- TOTAL + TVENDA[K]
   FIMPARA
   MEDIA <- TOTAL / W
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
   ESCREVAL("@                                                         @")
   ESCREVAL("@                  INFORMACOES DO DIA                     @")
   ESCREVAL("@                                                         @")
   ESCREVAL("@ QUANTIDADE DE VENDAS NO DIA = ",W:3 ,"                       @")
   ESCREVAL("@ QUANTIDADE DE LANCHES VENDIDOS = ",TX:3,"                    @")
   ESCREVAL("@ QUANTIDADE DE ACOMPANHAMENTOS VENDIDOS = ",TY:3,"            @")
   ESCREVAL("@ QUANTIDADE DE BEBIDAS VENDIDAS = ",TZ:3,"                    @")
   ESCREVAL("@                                                         @")
   ESCREVAL("@ QUANTIDADE TOTAL DE PRODUTOS VENDIDOS = ",(TX+TY+TZ):4,"            @")
   ESCREVAL("@                                                         @")
   ESCREVAL("@ TOTAL DO VALOR DE VENDAS DO DIA = ",TOTAL:5:2,"                @")
   ESCREVAL("@                                                         @")
   ESCREVAL("@ MEDIA DO VALOR DE VENDAS NO DIA = ",MEDIA:5:2,"                @")
   ESCREVAL("@                                                         @")
   ESCREVAL("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
   ESCREVA("      DIGITE ENTER          ")
   LEIA (SN)
   LIMPATELA
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶     ¶¶  ¶¶  ¶¶¶¶  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶  ¶¶¶¶¶¶¶¶¶   ¶¶   ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶    ¶¶¶  ¶¶        ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶  ¶¶¶¶¶  ¶¶  ¶  ¶  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶  ¶¶¶¶¶  ¶¶  ¶¶¶¶  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   ESCREVAL("                   DIGITE ENTER PARA FINALIZAR                   ")
   LEIA(SN)
Fimalgoritmo