//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zTpFuncB
Teste de Fun��o de Usu�rio
@type function
@author Andre
@since 29/06/2017
@version 1.0
    @example
    u_zTpFuncB()
/*/
 
User function zTpFuncB()
    local aArea := GetArea()
     
    //Mostra mensagem e chama fun��o est�tica
    MsgInfo("Estou em uma fun��o de user u_zTpFuncB() chamando uma fun��o statica chamada fTesteB() ", "Aten��o")
    fTesteB()
     
    RestArea(aArea)
    
    return
 
/*-------------------------------------------------*
 | Fun��o: fTesteB                                |
 | Autor:  Andre Silva                           	|
 | Data:   29/06/2017                     			|
 | Descr.: Fun��o est�tica de teste                	|
 *-------------------------------------------------*/
 
Static function fTesteB(cPar1)
    local aArea := GetArea()
    default cPar1 := ""
     
    //Mostrando mensagem
    MsgInfo("Estou em uma fun��o est�tica <b>(B)</b>, " + cPar1 + "!", "Aten��o")
     
    RestArea(aArea)
    
    Return
 
/*
	Abaixo uma fun��o de usu�rio com o nome similar com a fun��o acima, por�m ultrapassa 8 caracteres
	 
	User Function zTpFuncB2()
	 
	Return
*/
 
/*
	Abaixo uma fun��o padr�o, por�m somente � poss�vel compilar se tiver chave de compila��o
	 
	Function zTpFunPad()
	 
	Return
*/