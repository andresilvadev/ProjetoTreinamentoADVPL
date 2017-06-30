//Bibliotecas
#include 'protheus.ch'
 
/*-------------------------------------------------*
 | P.E.:   A010TOK                                 |
 | Autor:  Andre                         |
 | Data:   30/06/2017                              |
 | Descr.: Fun��o que valida o cadastro de produto |
 *-------------------------------------------------*/
 
User Function A010TOK()
    Local aArea := GetArea()
    Local aAreaB1 := SB1->(GetArea())
    Local lRet := .T.
     
    //Neste ponto de entrada ser� mostrando a pergunta, se ele confirma o cadastro
    lRet := MsgYesNo("Confirma o cadastro do <b>"+M->B1_DESC+"</b>?", "Aten��o")
     
    RestArea(aAreaB1)
    RestArea(aArea)
Return lRet