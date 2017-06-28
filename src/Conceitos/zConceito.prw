//------------------------------------------------------------------
//    Corpo de um programa AdvPL:
//------------------------------------------------------------------
 

// Boas pr�ticas de desenvolvimento 
/*	
{Bibliotecas utilizadas - Includes}
 
{Constantes declaradas - Defines}
 
{Vari�veis Est�ticas - Static}
 
{Documenta��o da Fun��o}
 
{Tipo Fun��o} Function {Nome Fun��o}
    {Declara��o de vari�veis}
 
    {L�gica do Programa}
 
    {Encerramento de vari�veis / �reas}
Return {Vari�vel Retorno}
*/
 
//------------------------------------------------------------------
//    Exemplo abaixo:
//------------------------------------------------------------------
 
//Bibliotecas
#include "protheus.ch"
 
//Constantes que simula um Enter
#define STR_PULA Chr(13)+Chr(10)
 
/*/{Protheus.doc} zCorpo
Exemplo de corpo de programa em AdvPL
@author Andre
@since 28/06/2017
@version 1.0
    @example
    u_zCorpo()
/*/

User function zCorpo()
      
    Local cHora := Time()
         
    //Mostrando uma mensagem da hora atual
    MsgInfo("Hora Atual: " + cHora, "Informa��es da hora")
      
return
