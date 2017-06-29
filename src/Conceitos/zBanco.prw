//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zBanco
Exemplo de manipulação de Banco de Dados via AdvPL
@author Andreo
@since 29/09/2017
@version 1.0
    @example
    u_zBanco()
/*/
 
User function zBanco()
    local aArea     := GetArea() //GetArea() serve para pegar a Area em memória que esta aberta, RestArea() devolve a rotina sem alterar a integridade
    local aAreaB1   := SB1->(GetArea())
    local cMens     := ""
     
    //Verifica se a tabela já estiver posicionada, ou já está aberta! SB1 é a tabela de produtos
    // if select alias > 0 então mostre a mensagem
    If Select("SB1") > 0
        MsgStop("Tabela SB1 já está aberta!", "Atenção")
    EndIf
     
    //Selecionando a tabela de produtos ou abre a tabela
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) 	//B1_FILIAL+B1_COD	//DbSetOrder(1) posiciona o indicie 1
    SB1->(DbGoTop())		//Posiciona no topo da tabela ou no primeiro registro que encontrar
     
    //Posicionando no produto de código F00002, percorre o resultado para pegar a filial corrente com o FWxFilial("SB1") e o produto de códito
    //F00002, se eu conseguir dar um seek nele, ou seja se eu conseguir achar esse registro, dou um alert do campo descriçao do produto,
    //com o campo B1_DESC
    If SB1->(DbSeek(FWxFilial("SB1") + "F00002"))
        Alert(SB1->B1_DESC)
    EndIf
     
    //Agora, percorro todos os registros e adiciono a descrição em uma variável
    //Enquanto não for final do arquivo -> EoF()
    //variavel cMens recebe a descrição do produto e com uma quebra de linha
    //depois o comando DbSkip() serve para pular o registro atual
    SB1->(DbGoTop())
    While !SB1->(EoF())
        cMens += Alltrim(SB1->B1_DESC)+";"+Chr(13)+Chr(10)
     
        SB1->(DbSkip())
    EndDo
     
    //Mostrando a mensagem
    Aviso('Atenção', cMens, {'OK'}, 03)
     
    RestArea(aAreaB1)
    RestArea(aArea)
Return
 
/*
O ideal de usar referências: EX: SB1->(EoF())
Modo Errado:
    DbSelectArea("SB1")
     
    While ! EoF()
        //Tratamentos para o relatório....
         
        DbSelectArea("SB2")
        //Pega o saldo do produto
         
        DbSkip()
    EndDo
 
Modo Certo:
    DbSelectArea("SB1")
    DbSelectArea("SB2")
     
    //Referencia a tabela de produtos
    While ! SB1->(EoF())
        //Tratamentos para o relatório....
         
        DbSelectArea("SB2")
        //Pega o saldo do produto
         
        SB1->(DbSkip())
    EndDo
*/