algoritmo "times"
var
   Times: Vetor [1..3] de Caractere
   Jogos: Vetor [1..6] de Caractere
   NumeroT, C: Inteiro
inicio
      NumeroT <- 3
      Para C <- 1 ate NumeroT faca
           Escreva ("Digite o ", C, "o. time")
           Leia (Times[C])
      FimPara
      
fimalgoritmo