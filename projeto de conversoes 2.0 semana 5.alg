algoritmo "Conversão"

var
temp, tempc, moeda, cotacaodolar, moedac, opcao :real



funcao Cf ()  : literal
inicio
limpatela
escreval ("Qual a temperatura em Celsius nesse momento?")
leia (temp)
tempc <- temp * 1.8 + 32
escreval ("A temperatura em Fahrenheit é de:",tempc)
retorne "Você gostaria de fazer mais alguma conversão? Caso não digite 5."
fimfuncao

funcao fc ()  : literal
inicio
limpatela
escreval ("Qual a temperatura em Fahrenheit nesse momento?")
leia (temp)
tempc <- (temp - 32) / 1.8
escreval ("A temperatura em Celsius é de:", tempc)
retorne "Você gostaria de fazer mais alguma conversão? Caso não digite 5."
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
escreval ("Qual converção voce deseja?")
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
      tempf[i] := tempcelsius[i] * 1.8 + 32  // transformação
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
   escreval ("|              O que você deseja?                  |")
   escreval ("|1- Converter Celsius em Fahrenheit.               |")
   escreval ("|2- Converter Fahrenheit em Celsius.               |")
   escreval ("|3- Converter 4 temperaturas (Celsius-Fahrenheit). |")
   escreval ("|4- Converter Reais em Dólares.                    |")
   escreval ("|5- Converter Dólares em Reais.                    |")
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
               escreval ("Qual a cotação do dólar nesse momento?")
               leia(cotacaodolar)
               escreval ("Quantos reais você deseja converter em dólares?")
               leia (moeda)
               moedac <- moeda / cotacaodolar
               escreval (moeda, " reais, em dólares é", moedac, ".")
               escreval ("Você gostaria de fazer mais alguma conversão? Caso não digite 5.")

            senao
               se opcao = 5 entao
                  limpatela
                  escreval ("Qual a cotação do dólar nesse momento?")
                  leia (cotacaodolar)
                  escreval ("Quantos dólares você deseja converter em reais?")
                  leia (moeda)
                  moedac <- moeda * cotacaodolar
                  escreval (moeda, " dólares, em reais é", moedac, ".")
                  escreval ("Você gostaria de fazer mais alguma conversão? Caso não digite 5.")
               senao
                  se opcao > 6 entao
                     escreval ("Opção Inválida.")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

ate opcao = 6

fimalgoritmo

