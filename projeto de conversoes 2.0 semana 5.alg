algoritmo "Convers�o"

var
temp, tempc, moeda, cotacaodolar, moedac, opcao :real



funcao Cf ()  : literal
inicio
limpatela
escreval ("Qual a temperatura em Celsius nesse momento?")
leia (temp)
tempc <- temp * 1.8 + 32
escreval ("A temperatura em Fahrenheit � de:",tempc)
retorne "Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5."
fimfuncao

funcao fc ()  : literal
inicio
limpatela
escreval ("Qual a temperatura em Fahrenheit nesse momento?")
leia (temp)
tempc <- (temp - 32) / 1.8
escreval ("A temperatura em Celsius � de:", tempc)
retorne "Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5."
fimfuncao

procedimento temps ()
var
Hora: vetor [1..4] de real
tempcelsius, tempf : vetor [1..4] de real
i, j: inteiro
aux: real
opc: inteiro
inicio
//usuario
escreval ("Qual conver��o voce deseja?")
escreval ("1- Celsius-Fahrenheit")
escreval ("2- Fahrenheit-Celsius")
leia (opc)
limpatela
se opc = 1 entao
   para i de 1 ate 4 faca
      escreval ("Hora que a temp foi medida?")
      leia (Hora[i])
      escreval ("Temperatura medida em celsius?")
      leia (tempcelsius[i])
      tempf[i] := tempcelsius[i] * 1.8 + 32  // transforma��o
   fimpara
senao
   se opc = 2 entao
      para i de 1 ate 4 faca
         escreval ("Hora que a temp foi medida?")
         leia (Hora[i])
         escreval ("Temperatura medida em Fahrenheit?")
         leia (tempf[i])
         tempcelsius[i] := (tempf[i] - 32) / 1.8
      fimpara
   fimse
fimse
// botar em ordem crescente celsius
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se tempcelsius[j] > tempcelsius[i] entao
         aux <- tempcelsius[i]
         tempcelsius[i]<- tempcelsius[j]
         tempcelsius[j] <- aux
      fimse
   fimpara
fimpara
// botar em ordem crescente Fahrenheit
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se tempf[j] > tempf[i] entao
         aux <- tempf[i]
         tempf[i]<- tempf[j]
         tempf[j] <- aux
      fimse
   fimpara
fimpara
//retornar
para i de 1 ate 4 faca
   escreval ("Celsius,",tempcelsius[i],". Horas:",Hora[i],". Fahrenheit", tempf[i])
fimpara
fimprocedimento

inicio

repita
   escreval ("")
   escreval ("|--------------------------------------------------|")
   escreval ("|              O que voc� deseja?                  |")
   escreval ("|1- Converter Celsius em Fahrenheit.               |")
   escreval ("|2- Converter Fahrenheit em Celsius.               |")
   escreval ("|3- Converter 4 temperaturas (Celsius-Fahrenheit). |")
   escreval ("|4- Converter Reais em D�lares.                    |")
   escreval ("|5- Converter D�lares em Reais.                    |")
   escreval ("|6- Sair.                                          |")
   escreval ("|--------------------------------------------------|")
   leia (opcao)

   se opcao = 1 entao
      escreval (cf())
   senao
      se opcao = 2 entao
         escreval (fc())
      senao
         se opcao = 3 entao
            temps ()
         senao
            se opcao = 4 entao
               limpatela
               escreval ("Qual a cota��o do d�lar nesse momento?")
               leia(cotacaodolar)
               escreval ("Quantos reais voc� deseja converter em d�lares?")
               leia (moeda)
               moedac <- moeda / cotacaodolar
               escreval (moeda, " reais, em d�lares �", moedac, ".")
               escreval ("Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5.")

            senao
               se opcao = 5 entao
                  limpatela
                  escreval ("Qual a cota��o do d�lar nesse momento?")
                  leia (cotacaodolar)
                  escreval ("Quantos d�lares voc� deseja converter em reais?")
                  leia (moeda)
                  moedac <- moeda * cotacaodolar
                  escreval (moeda, " d�lares, em reais �", moedac, ".")
                  escreval ("Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5.")
               senao
                  se opcao > 6 entao
                     escreval ("Op��o Inv�lida.")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

ate opcao = 6

fimalgoritmo

