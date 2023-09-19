Algoritmo "ProjetoACQA"
// Disciplina  :  [ALGORITIMO E ESTRUTURA DE DADOS]
// Professor   :
// Descrição   : RECEBE NUMEROS POSITIVOS E NEGATIVOS E FAZ A CONTAGEM DOS
//PARES E IMPARES , FZ A SOMA DOS NUMEROS DIGITADOS ,TIRA A MEDIA ,A PORCENTAGEM
//DE NUMEROS POSITIVOS E NEGATIVOS EM RELACAO AO TOTAL E CONTABILIZA QUANTOS
// A QUANTIDADE DE NUMEROS QUE FORAM DIGITADOS SAO PARES E MULTIPLOS DE CINCO
// Autor(a)    : DOUGLAS DE ABREU BERNARDES
// Data atual  : 03/06/2023
Var
   contam5,valor,contadorpositivo,contadornegativo,totalcontador:inteiro
   valortotal,valornegativo,valorpositivo,porcentopositivo,porcentonegativo:real


Inicio
   contam5<-0
   valorpositivo<-0
   valornegativo<-0
   contadorpositivo<-0
   contadornegativo<-0

   repita
      escreva("digite um numero: ")
      leia(valor)
      se valor>0 entao

         contadorpositivo<-contadorpositivo+1
         valorpositivo<-valorpositivo+valor



         se valor mod 5=0 entao
            contam5<-contam5+1
         fimse
      senao
         se valor<0 entao
            contadornegativo<-contadornegativo+1
            valornegativo<-valornegativo+valor
         fimse
      fimse


   ate valor=0



   totalcontador<-contadorpositivo+contadornegativo
   valortotal<-valorpositivo+valornegativo
   porcentopositivo<-(100*contadorpositivo)/totalcontador
   porcentonegativo<-(100*contadornegativo)/totalcontador
   escreval("A quantidade de numeros digitados foram: ",totalcontador)
   escreval("A quantidade de numeros positivos digitados foram: ",contadorpositivo)
   escreval("A quantidade de numeros negativos digitados foram: ",contadornegativo)
   escreval("A soma dos numeros positivos digitados é: ",valorpositivo)
   escreval("A soma dos numeros negativos digitados é: ",valornegativo)
   escreval("A soma total dos numeros digitados é: ",valortotal)
   escreval("A quantidade de numeros positivos multiplos de 5 foram: ",contam5)
   escreval("A porcentagem de numeros positivos digitados em relacao ao total é: ",porcentopositivo,"%")
   escreval("A porcentagem de numeros negativos digitados em relacao ao total é: ",porcentonegativo,"%")
   escreval("A media dos valores digitados é: ",valortotal/(contadorpositivo+contadornegativo))
Fimalgoritmo