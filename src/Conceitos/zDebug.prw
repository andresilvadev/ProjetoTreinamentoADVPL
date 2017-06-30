//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zDebug
Fun��o de teste para Debug / Depurar programas via TDS
@type function
@author Andre
@since 30/06/2017
@version 1.0
    @example
    u_zDebug()
/*/
 
User function zDebug()
    Local aArea := GetArea() //Pega a �rea armazenada na mem�ria
    Local aProds := {}		 //Array vazio chamado aProds que vai receber os produtos
    Local nSequen := 0		 //Vari�vel de sequencia que ser� incrementada de um em um
     
    //Selecionando a tabela de produtos e posicionando no topo
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) //Filial + C�digo
    SB1->(DbGoTop())
    
    //TODO fazer rotina X
    //Enquanto n�o for fim do arquivo, adiciona no array de produtos o COD, DESC, TIPO
    //nSequencia adiciona um
    //pula um registro
    While ! SB1->(EoF())
        aAdd(aProds,{   SB1->B1_COD,;
                        SB1->B1_DESC,;
                        SB1->B1_TIPO})
     
        nSequen++
        SB1->(DbSkip())
    EndDo
     
    Alert(nSequen)
    
    RestArea(aArea)
    
return

