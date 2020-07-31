algoritmo "Tabuada"

var
   cont, n, r, respex, nt, err, alea: inteiro // contador, numero, resposta,
   // resposta ao exercício, nota do exercicio,
   // erros, número aleatorio.
   nome, resp: caractere   // nome jogador, reposta para continuar.

Procedimento Calculo () // procedimento tábuada de 0a10 de um número.
Inicio
   cont <- 0
   repita
      r <- n * cont
      Escreval (n, " x ", cont, " = ", r)
      cont <- cont + 1
   ate ( cont > 10)
FimProcedimento

Procedimento Visual () // chamar cabeçalho
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
      Escreva (nome, " Gostaria de ver a tábuada de qual número: ")
      Leia (n)
      Calculo ()
      Escreval
      Escreva ("Essa é a tabuada de 0 á 10 do número ", n)
      Escreval
      Escreval
      Escreva ("Gostaria de ver outra Tábuada? [s/n]")
      Leia (resp)
      Escreval
   Ate (resp = "n")

   LimpaTela

   Visual ()
   // Exercicio
   Escreva ("Faça um exercício agora:")
   Aleatorio on
   Leia (alea)
   Aleatorio off
   Escreva (" Quanto é ", n, " x ", alea, "?")
   Leia (respex)

   nt <- 10
   err <- 0
   Se (n*alea = respex)  entao                // Condições para  certo ou errado
      Escreval ("Parabéns você acertou!")
      Escreva ("Sua nota do exercicio foi: ", nt)
      Escreval
   Senao
      Escreval ("Você errou! tente novamente.")
      nt <- nt - 1
      err <- err + 1
      Escreval
   FimSe

   Se (n*alea = respex) entao
FimAlgoritmo  // Se resposta estiver certa, Fim Algoritmo.
Senao         // Se não, entra no repita até acertar.
FimSe

repita
   Escreva (" Quanto é ", n, " x ", alea, "?")
   Leia (respex)
   Se (n*alea = respex)  entao
      Escreval ("Parabéns você acertou!")
      Escreval
   Senao
      Escreval ("Você errou! tente novamente.")
      nt <- nt - 1
      err <- err + 1
      Escreval
   FimSe
ate (n*alea = respex)
Escreval
Escreval ("Você teve um total de ", err, " erros.")
Escreval ("Sua nota do exercicio foi: ", nt)
EscrevaL

fimalgoritmo