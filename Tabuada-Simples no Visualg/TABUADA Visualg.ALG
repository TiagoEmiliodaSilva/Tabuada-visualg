algoritmo "Tabuada"

var
   cont, n, r, respex, nt, err, alea: inteiro // contador, numero, resposta,
   // resposta ao exerc�cio, nota do exercicio,
   // erros, n�mero aleatorio.
   nome, resp: caractere   // nome jogador, reposta para continuar.

Procedimento Calculo () // procedimento t�buada de 0a10 de um n�mero.
Inicio
   cont <- 0
   repita
      r <- n * cont
      Escreval (n, " x ", cont, " = ", r)
      cont <- cont + 1
   ate ( cont > 10)
FimProcedimento

Procedimento Visual () // chamar cabe�alho
Inicio
   Escreval ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
   Escreval ("            TABUADA            ")
   Escreval ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
   Escreval
FimProcedimento



inicio

   Visual ()

   Escreva ("Qual o Aluno: ")
   Leia (nome)
   cont <- 0

   Repita
      Escreva (nome, " Gostaria de ver a t�buada de qual n�mero: ")
      Leia (n)
      Calculo ()
      Escreval
      Escreva ("Essa � a tabuada de 0 � 10 do n�mero ", n)
      Escreval
      Escreval
      Escreva ("Gostaria de ver outra T�buada? [s/n]")
      Leia (resp)
      Escreval
   Ate (resp = "n")

   LimpaTela

   Visual ()
   // Exercicio
   Escreva ("Fa�a um exerc�cio agora:")
   Aleatorio on
   Leia (alea)
   Aleatorio off
   Escreva (" Quanto � ", n, " x ", alea, "?")
   Leia (respex)

   nt <- 10
   err <- 0
   Se (n*alea = respex)  entao                // Condi��es para  certo ou errado
      Escreval ("Parab�ns voc� acertou!")
      Escreva ("Sua nota do exercicio foi: ", nt)
      Escreval
   Senao
      Escreval ("Voc� errou! tente novamente.")
      nt <- nt - 1
      err <- err + 1
      Escreval
   FimSe

   Se (n*alea = respex) entao
FimAlgoritmo  // Se resposta estiver certa, Fim Algoritmo.
Senao         // Se n�o, entra no repita at� acertar.
FimSe

repita
   Escreva (" Quanto � ", n, " x ", alea, "?")
   Leia (respex)
   Se (n*alea = respex)  entao
      Escreval ("Parab�ns voc� acertou!")
      Escreval
   Senao
      Escreval ("Voc� errou! tente novamente.")
      nt <- nt - 1
      err <- err + 1
      Escreval
   FimSe
ate (n*alea = respex)
Escreval
Escreval ("Voc� teve um total de ", err, " erros.")
Escreval ("Sua nota do exercicio foi: ", nt)
EscrevaL

fimalgoritmo