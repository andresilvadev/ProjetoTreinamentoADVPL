//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zIndPos
Função de exemplo de índices e posicionamento
@type function
@author Andre
@since 29/06/2017
@version 1.0
    @example
    u_zIndPos()
/*/
 
User function zIndPos()
    local aArea := GetArea()
    local cDescri := ""
     
    DbSelectArea("SB1")		//Seleciona a tabela desejada através do alias
    SB1->(DbSetOrder(1)) 	//Nesta função, parametrizo que irei utilizar o índice 1... após o 9, na tabela de índices será gravado A (10), B (11), C (12)...Estes são os indices criados lá na nas tabelas
    SB1->(DbGoTop()) 		//Garantindo que após a ordenação, minha tabela fique no topo, essa é uma boa prática
     
    //Posicionando conforme DbSeek, onde passo os campos na sequência do índice... utilizamos a FWxFilial que retorna a filial atual para essa tabela
    If SB1->(DbSeek(FWxFilial('SB1') + 'PTD0004'))
        MsgInfo("Descrição do produto 4: "+SB1->B1_DESC, "Atenção")
    EndIf
     
    //Também posso utilizar o DbOrderNickName, caso o índice tenha um apelido, por exemplo:
    //SE1->(DbOrderNickName("TITPAI"))
     
    //Por último, existe também a função Posicione, que me retorna um campo qualquer da tabela
    cDescri := Posicione(   'SB1',;                     //Alias da Tabela
                             1,;                       	//Índice de pesquisa
                             FWxFilial('SB1')+'PTD0005',;//Chave da Pesquisa
                             'B1_DESC')                 //Campo de retorno
    MsgInfo("Descrição do produto 5: "+cDescri, "Atenção")
     
    RestArea(aArea)
    
return