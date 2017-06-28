//------------------------------------------------------------------
//    Corpo de um programa AdvPL:
//------------------------------------------------------------------
 

// Boas práticas de desenvolvimento 
/*	
{Bibliotecas utilizadas - Includes}
 
{Constantes declaradas - Defines}
 
{Variáveis Estáticas - Static}
 
{Documentação da Função}
 
{Tipo Função} Function {Nome Função}
    {Declaração de variáveis}
 
    {Lógica do Programa}
 
    {Encerramento de variáveis / áreas}
Return {Variável Retorno}
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
    MsgInfo("Hora Atual: " + cHora, "Informações da hora")
      
return
