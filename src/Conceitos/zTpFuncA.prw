//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zTpFuncA
Teste de Função de Usuário
@type function
@author Andre
@since 29/06/2017
@version 1.0
    @example
    u_zTpFuncA()
/*/
 
User function zTpFuncA()
    local aArea := GetArea()
     
    //Ex de chamada de função padrão do sistema
    //Mata010() cadastro de produtos
    Mata010()
 
    //Chamada de função de usuário do arquivo zTpFuncB.prw
    u_zTpFuncB()
     
    //Chamada de função estática no zTpFuncB.prw
    fTesteA()
     
    //Chamada de função estática de outro prw
    StaticCall(zTpFuncB, fTesteB, "André")
     
    RestArea(aArea)
    
    return
 
 
/*-------------------------------------------------*
 | Função: fTesteA                                 |
 | Autor:  Andre Silva                           |
 | Data:   29/06/2017                              |
 | Descr.: Função estática de teste                |
 *-------------------------------------------------*/
 
Static function fTesteA()
    local aArea := GetArea()
     
    //Mostrando mensagem
    MsgInfo("Estou em uma função estática <b>(A)</b>!", "Atenção")
     
    RestArea(aArea)
    
    return