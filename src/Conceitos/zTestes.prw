//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zTestes
Exemplo de testes em AdvPL
@author Andre
@since 29/06/2015
@version 1.0
    @example
    u_zTestes()
/*/
 
User function zTestes()
    local aArea := GetArea()
    local dDataTst := Date()
    local lQuinta := .F.
     
    //Testando se o dia de hoje é quinta feira. Testa se é verdadeira ou falsa
    If Upper(cDoW(dDataTst)) == "THURSDAY"
        lQuinta := .T.
        Alert("Hoje é Quinta!")
         
    //Senão mostra um alerta que hoje não é quinta
    Else
        lQuinta := .F.
        Alert("Hoje não é Quinta!")
    EndIf
     
    //Se não for quinta feira, e for sábado
    If !lQuinta .And. Upper(cDoW(dDataTst)) == "SATURDAY"
        Alert("Sábadão!")
     
    //Senão, se não for quinta feira, e for domingo
    ElseIf !lQuinta .And. Upper(cDoW(dDataTst)) == "SUNDAY"
        Alert("Domingão!")
    EndIf
     
     
    //Fazendo case de testes
    Do Case
        Case Upper(cDoW(dDataTst)) == "MONDAY"
            Alert("Hoje é <b>Segunda</b>")
             
        Case Upper(cDoW(dDataTst)) == "TUESDAY"
            Alert("Hoje é <b>Terça</b>")
             
        Case Upper(cDoW(dDataTst)) == "WEDNESDAY"
            Alert("Hoje é <b>Quarta</b>")
             
        Case Upper(cDoW(dDataTst)) == "THURSDAY"
            Alert("Hoje é <b>Quinta</b>")
             
        Case Upper(cDoW(dDataTst)) == "FRIDAY"
            Alert("Hoje é <b>Sexta</b>")
             
        Case Upper(cDoW(dDataTst)) == "SATURDAY"
            Alert("Hoje é <b>Sábado</b>")
             
        Case Upper(cDoW(dDataTst)) == "SUNDAY"
            Alert("Hoje é <b>Domingo</b>")
        OtherWise
            Alert("Hoje é <b>???</b>")
    EndCase
     
    RestArea(aArea)
return