algoritmo "Convers�o"

var
temp, tempc, moeda, cotacaodolar, moedac, opcao :real

inicio
repita
   escreval ("|------------------------------------|")
   escreval ("|        O que voc� deseja?          |")
   escreval ("|1- Converter Celsius em Fahrenheit. |")
   escreval ("|2- Converter Fahrenheit em Celsius. |")
   escreval ("|3- Converter Reais em D�lares.      |")
   escreval ("|4- Converter D�lares em Reais.      |")
   escreval ("|5- Sair.                            |")
   escreval ("|------------------------------------|")
   leia (opcao)

   se opcao = 1 entao
      limpatela
      escreval ("Qual a temperatura em Celsius nesse momento?")
      leia (temp)
      tempc <- temp * 1.8 + 32
      escreval ("A temperatura em Fahrenheit � de:", tempc)
      escreval ("Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5.")

   senao
      se opcao = 2 entao
         limpatela
         escreval ("Qual a temperatura em Fahrenheit nesse momento?")
         leia (temp)
         tempc <- (temp - 32) / 1.8
         escreval ("A temperatura em Celsius � de:", tempc)
         escreval ("Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5.")

      senao
         se opcao = 3 entao
            limpatela
            escreval ("Qual a cota��o do d�lar nesse momento?")
            leia(cotacaodolar)
            escreval ("Quantos reais voc� deseja converter em d�lares?")
            leia (moeda)
            moedac <- moeda / cotacaodolar
            escreval (moeda, " reais, em d�lares �", moedac, ".")
            escreval ("Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5.")

         senao
            se opcao = 4 entao
               limpatela
               escreval ("Qual a cota��o do d�lar nesse momento?")
               leia (cotacaodolar)
               escreval ("Quantos d�lares voc� deseja converter em reais?")
               leia (moeda)
               moedac <- moeda * cotacaodolar
               escreval (moeda, " d�lares, em reais �", moedac, ".")
               escreval ("Voc� gostaria de fazer mais alguma convers�o? Caso n�o digite 5.")
            senao
               se opcao > 5 entao
                  escreval ("Op��o Inv�lida.")
               fimse
            fimse
         fimse
      fimse
   fimse
ate opcao = 5


fimalgoritmo

