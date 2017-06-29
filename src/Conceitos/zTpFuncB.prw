//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zTpFuncB
Teste de Função de Usuário
@type function
@author Andre
@since 29/06/2017
@version 1.0
    @example
    u_zTpFuncB()
/*/
 
User function zTpFuncB()
    local aArea := GetArea()
     
    //Mostra mensagem e chama função estática
    MsgInfo("Estou em uma função de user u_zTpFuncB() chamando uma função statica chamada fTesteB() ", "Atenção")
    fTesteB()
     
    RestArea(aArea)
    
    return
 
/*-------------------------------------------------*
 | Função: fTesteB                                |
 | Autor:  Andre Silva                           	|
 | Data:   29/06/2017                     			|
 | Descr.: Função estática de teste                	|
 *-------------------------------------------------*/
 
Static function fTesteB(cPar1)
    local aArea := GetArea()
    default cPar1 := ""
     
    //Mostrando mensagem
    MsgInfo("Estou em uma função estática <b>(B)</b>, " + cPar1 + "!", "Atenção")
     
    RestArea(aArea)
    
    Return
 
/*
	Abaixo uma função de usuário com o nome similar com a função acima, porém ultrapassa 8 caracteres
	 
	User Function zTpFuncB2()
	 
	Return
*/
 
/*
	Abaixo uma função padrão, porém somente é possível compilar se tiver chave de compilação
	 
	Function zTpFunPad()
	 
	Return
*/