algoritmo "Conversão"

var
temp, tempc, moeda, cotacaodolar, moedac, opcao :real

inicio
repita
   escreval ("|------------------------------------|")
   escreval ("|        O que você deseja?          |")
   escreval ("|1- Converter Celsius em Fahrenheit. |")
   escreval ("|2- Converter Fahrenheit em Celsius. |")
   escreval ("|3- Converter Reais em Dólares.      |")
   escreval ("|4- Converter Dólares em Reais.      |")
   escreval ("|5- Sair.                            |")
   escreval ("|------------------------------------|")
   leia (opcao)

   se opcao = 1 entao
      limpatela
      escreval ("Qual a temperatura em Celsius nesse momento?")
      leia (temp)
      tempc <- temp * 1.8 + 32
      escreval ("A temperatura em Fahrenheit é de:", tempc)
      escreval ("Você gostaria de fazer mais alguma conversão? Caso não digite 5.")

   senao
      se opcao = 2 entao
         limpatela
         escreval ("Qual a temperatura em Fahrenheit nesse momento?")
         leia (temp)
         tempc <- (temp - 32) / 1.8
         escreval ("A temperatura em Celsius é de:", tempc)
         escreval ("Você gostaria de fazer mais alguma conversão? Caso não digite 5.")

      senao
         se opcao = 3 entao
            limpatela
            escreval ("Qual a cotação do dólar nesse momento?")
            leia(cotacaodolar)
            escreval ("Quantos reais você deseja converter em dólares?")
            leia (moeda)
            moedac <- moeda / cotacaodolar
            escreval (moeda, " reais, em dólares é", moedac, ".")
            escreval ("Você gostaria de fazer mais alguma conversão? Caso não digite 5.")

         senao
            se opcao = 4 entao
               limpatela
               escreval ("Qual a cotação do dólar nesse momento?")
               leia (cotacaodolar)
               escreval ("Quantos dólares você deseja converter em reais?")
               leia (moeda)
               moedac <- moeda * cotacaodolar
               escreval (moeda, " dólares, em reais é", moedac, ".")
               escreval ("Você gostaria de fazer mais alguma conversão? Caso não digite 5.")
            senao
               se opcao > 5 entao
                  escreval ("Opção Inválida.")
               fimse
            fimse
         fimse
      fimse
   fimse
ate opcao = 5


fimalgoritmo

