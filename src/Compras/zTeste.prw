// Bibliotecas
#include 'protheus.ch'

//Defini��o de uma constante
#define TEXTO "Conhe�endo a liguagem ADVPL"


/*/{Protheus.doc} zTeste
//Exemplo de teste de fun��o
@author Andre
@since 28/06/2017
@version 1.0
	@example
	u_zTeste()
@type function
/*/
User function zTeste()  // Defin��o de uma fun��o

	//Defini��o e atribui��o de valor a uma vari�vel
	Local cOutroTexto	:= " Ist� � um exemplo de atribui��o de string em uma v�riavel"
	
	//Comandos e concatena��o
	MsgInfo(TEXTO + cOutroTexto)	
		
	//Retorno da fun��o
	return .T.


/*
	Exemplo de fun��o recebendo m�todos por parametros
	Para chamar uma fun��o o padr�o sera u_zNomeDaFuncao()
	Lembrando que a chamada � limitada a apenas 10 caracteres
	ADVPL = Advanced Protheus Language	
*/
User function zTeste2()
	MsgInfo(u_zLeiaTexto()) //Passagem de parametros
	MsgInfo(u_zLeiaTitulo())

User function zLeiaTexto()
	return "Texto comum da fun��o leia texto"

User function zLeiaTitulo()
	return "T�tulo do texto"


/*
	
*/
User function zNomeFuncao()






