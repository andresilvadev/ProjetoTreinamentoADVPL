//Bibliotecas
#include "Protheus.ch"
 
/*/{Protheus.doc} zEmbedd
Exemplo de utilização do Embedded SQL
@author Andre
@since 30/06/2017
@version 1.0
    @example
    u_zEmbedd()
/*/
 
User function zEmbedd()
    local aArea := GetArea()
    
    //OBS: No embedd.sql basicamente é feito uma consulta sql via advpl, onde passo parametros e ele joga para o TOPCONN 
    //Construindo a consulta, declarando o alias temporario pra ela
    BeginSql Alias "QUERY_SB1"
    	
    	//Para converter a consulta para tipo data, evitando de usar funcoes como CTOD, DTOC etc.
        //COLUMN F3_ENTRADA AS DATE
        //Diz que quer a tabela atual %table:SB1%
        //Diz que não quer os registros excluidos %notDel%
        SELECT 
            B1_COD,
            B1_DESC
        FROM
            %table:SB1% SB1		
        WHERE
            SB1.%notDel%		
            AND B1_MSBLQL != '1'           
    EndSql  
     
    //Enquanto não for fim do arquivo dou um ConOut passando meu alias e as colunas 
    //Lembrando que o ConOut mostra a saída no console
    //Percorrendo os registros
    While ! QUERY_SB1->(EoF())
        ConOut("# QUERY_SB1: " + QUERY_SB1->B1_COD + "|" + QUERY_SB1->B1_DESC)
     
        QUERY_SB1->(DbSkip()) //Pula a linha do registro
    EndDo
     
    QUERY_SB1->(DbCloseArea()) //Fecha e sai da consulta
    RestArea(aArea)

return