//Bibliotecas
//Para trabalahr com TCQuery priemiramente precisamos incluir o TopConn.ch, que é responsavel pelo comando TCQuery
#include "Protheus.ch"
#include "TopConn.ch"
 
//Constantes
#Define STR_PULA        Chr(13) + Chr(10)
 
/*/{Protheus.doc} zTCQuery
Exemplo de manipulação de query via AdvPL
@author Andre
@since 30/06/2017
@version 1.0
    @example
    u_zTCQuery()
/*/
 
User function zTCQuery()
    local aArea		:= GetArea()
    local cQuery    := ""
     
    //OBS: no TCQuery monto a cláusula conforme as regras do SQL.
    //Montando a Consulta... Tentem evitar o SELECT * pois isso pode travar o TOPCONN
    //O ChangeQuery(cQuery) faz a conversão da query depenendo do banco que vc utiliza, MYSQL, MSSQL, ORACLE, DB2, o protheus fica responsável por isso
    cQuery := " SELECT "                            + STR_PULA
    cQuery += "   B1_COD AS CODIGO, "               + STR_PULA
    cQuery += "   B1_DESC AS DESCRI "               + STR_PULA
    cQuery += " FROM "                              + STR_PULA
    cQuery += "   "+RetSQLName("SB1")+" SB1 "       + STR_PULA
    cQuery += " WHERE "                             + STR_PULA
    cQuery += "   SB1.D_E_L_E_T_ = '' "         	+ STR_PULA
    cQuery += "   AND B1_MSBLQL != '1' "            + STR_PULA
    cQuery := ChangeQuery(cQuery)
     
    //Executando consulta
    //Instanciando uma nova consulta e chamando na váriavel cQuery e o Alias que ela vai ficar "QRY_SB1"
    TCQuery cQuery New Alias "QRY_SB1"
    //TCSetField('QRY_SB1', 'CAMPO_DATA', 'D')
     
    //Percorrendo os registros
    While ! QRY_SB1->(EoF())
        ConOut("> QRY_SB1: " + QRY_SB1->CODIGO + "|" + QRY_SB1->DESCRI)
     
        QRY_SB1->(DbSkip())  //Pula a linha do registro
    EndDo
     
    QRY_SB1->(DbCloseArea()) //Fecha e sai da consulta
    RestArea(aArea)

return