algoritmo "CALENDARIO"
var

        AM  : vetor[1..6, 1..7] DE CARACTER
        vt  : vetor[0..6] de caracter
dia,mes,ano : INTEIRO
  i,j,k,t,d : INTEIRO
linha,coluna: INTEIRO
     Ultimo : Inteiro
    a,y,m,q : REAL
aa,yy,mm,qq : REAL
       Flag : Logico
pd,sx,xm,xs : CARACTER
Funcao Data_ok(xm : Caracter) : Logico
Var
Bisext,Resp : Logico
dia,mes,ano : Inteiro
xBar1,xbar2 : Inteiro
Tamh,Ultimo : Inteiro
B1,B2,Barra : caracter
Inicio
        Resp:= Verdadeiro
        Tamh:= Compr(xm)
       Barra:= "/"
      Bisext:= Falso

      Se Tamh = 10 Entao
         Dia := CaracpNum(copia(xm,1,2))
         B1  := copia(xm,3,1)
         Mes := CaracpNum(copia(xm,4,2))
         B2  := copia(xm,6,1)
         Ano := CaracpNum(copia(xm,7,4))
      Senao
         Resp:= Falso
      Fimse

   Se Resp Entao
      xBar1 := Pos(B1,Barra)
      xBar2 := Pos(B2,Barra)a
      Se ((xBar1 > 0) e (xBar2 > 0)) entao
         Resp := Verdadeiro
      Senao
         Resp := Falso
      Fimse
      SE ((Ano < 1900) ou (Ano>2350)) Entao
         Resp := Falso
      Senao
         Bisext := ((Ano mod 4) = 0)
      FimSe
      SE ((Mes < 1) ou (Mes>12)) Entao
         Resp := Falso
      FimSe
      Ultimo  := 31
      SE (Mes = 2) Entao
         Ultimo := 28
         Se Bisext Entao
            Ultimo := Ultimo + 1
         Fimse
      Fimse

      SE ((Dia < 1) ou (Dia> Ultimo)) Entao
         Resp := Falso
      FimSe
   Fimse
   Retorne Resp
Fimfuncao

Funcao StrZero(Numero,Qtde: Inteiro) : Caracter
Var
     Resp : Caracter
     i    : inteiro
Inicio
     Para i de 1 ate Qtde-1 faca
        Resp := "0" + Resp
     Fimpara
     SE Numero < 10 entao
        Resp := Resp + NumpCarac(Numero)
     SENAO
        Resp := NumpCarac(Numero)
     FIMSE
     Retorne Resp
Fimfuncao

inicio
     sx := "31,28,31,30,31,30,31,31,30,31,30,31"
     vt[0] := "Dom"
     vt[1] := "Seg"
     vt[2] := "Ter"
     vt[3] := "Qua"
     vt[4] := "Qui"
     vt[5] := "Sex"
     vt[6] := "Sab"
    Flag := Verdadeiro
    Enquanto Flag Faca
      LimpaTela
      Escreva("DIGITE A DATA EM DIA, MES E ANO (XX/XX/XXXX): ")
      Leia(xm)
      Se Nao(Data_ok(xm)) Entao
         Escreval("Data Invalida !!! - Tecle <ENTER>")
         Leia(xm)
         Flag := Verdadeiro
      senao
         Flag := Falso
      fimse
    FimEnquanto
    Dia := CARACPNUM(COPIA(XM,1,2))
    Mes := CARACPNUM(COPIA(XM,4,2))
    Ano := CARACPNUM(COPIA(XM,7,4))
    A := int((14 - Mes) / 12)
    Y := Ano - A
    M := Mes + (12 * A) - 2
    q := 01+int((31*M)/12)+y+int(y/4)-int(y/100)+int(y/400)
    d := Int(q)
    d := (d mod 7)
    xs := vt[d]
    K      := (Mes * 3) - 2
    Ultimo := CaracPNum(Copia(sx,K,2))
   para i de 1 ate 6 faca
      para j de 1 ate 7 faca
          am[i,j] := "__"
      fimpara
   fimpara
   T := 1
   Linha := 1
   Coluna := d + 1
   Enquanto T <= Ultimo faca
        Se T = 1 Entao
           Pd:= "1º"
        senao
           Pd:= StrZero(T,2)
        Fimse
        SE ((T > 1) e (T = DIA)) Entao
           Pd := "><"
        Fimse
        am[Linha,Coluna] := Pd
        T := T + 1
        Coluna := Coluna + 1
        SE Coluna > 7 entao
           Coluna := 1
           Linha := Linha + 1
           SE Linha > 6 entao
              Linha := 1
           FIMSE
        FIMSE
   FIMENQUANTO

   LimpaTela
   Escreval("Data: ",xm)
   Para i de 0 ate 6 faca
       Escreva(vt[i]," ")
   FimPara
   para i de 1 ate 6 faca
      Escreval(" ")
      para j de 1 ate 7 faca
          Escreva(" ",am[i,j]," ")
      fimpara
   fimpara
   Escreval(" ")
fimalgoritmo
