//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zTpFuncA
Teste de Fun��o de Usu�rio
@type function
@author Andre
@since 29/06/2017
@version 1.0
    @example
    u_zTpFuncA()
/*/
 
User function zTpFuncA()
    local aArea := GetArea()
     
    //Ex de chamada de fun��o padr�o do sistema
    //Mata010() cadastro de produtos
    Mata010()
 
    //Chamada de fun��o de usu�rio do arquivo zTpFuncB.prw
    u_zTpFuncB()
     
    //Chamada de fun��o est�tica no zTpFuncB.prw
    fTesteA()
     
    //Chamada de fun��o est�tica de outro prw
    StaticCall(zTpFuncB, fTesteB, "Andr�")
     
    RestArea(aArea)
    
    return
 
 
/*-------------------------------------------------*
 | Fun��o: fTesteA                                 |
 | Autor:  Andre Silva                           |
 | Data:   29/06/2017                              |
 | Descr.: Fun��o est�tica de teste                |
 *-------------------------------------------------*/
 
Static function fTesteA()
    local aArea := GetArea()
     
    //Mostrando mensagem
    MsgInfo("Estou em uma fun��o est�tica <b>(A)</b>!", "Aten��o")
     
    RestArea(aArea)
    
    return