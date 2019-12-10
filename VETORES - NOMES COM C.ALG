algoritmo "Vetores - Nomes com C"
var
  Nome: Caractere
  Vet: vetor [1..10] de Caractere
  Cont, TotalC: Inteiro
inicio
      TotalC <- 0
      Para Cont <- 1 ate 5 faca
         Escreva (" Digite um nome ")
         Leia (Nome)
         Se (Pos("C", Maiusc(Nome)) = 1) entao
             TotalC <- TotalC + 1
             Vet[TotalC] <- Nome
         Fimse
      Fimpara
      LimpaTela
      EscrevaL("O total de pessoas com C e ", TotalC)
      Para Cont <- 1 ate TotalC faca
           EscrevaL("Pessoa ", Cont, ": " , Vet[Cont])
      FimPara
fimalgoritmo