// Bibliotecas
#include 'protheus.ch'

//Definição de uma constante
#define TEXTO "Conheçendo a liguagem ADVPL"


/*/{Protheus.doc} zTeste
//Exemplo de teste de função
@author Andre
@since 28/06/2017
@version 1.0
	@example
	u_zTeste()
@type function
/*/
User function zTeste()  // Definção de uma função

	//Definição e atribuição de valor a uma variável
	Local cOutroTexto	:= " Istó é um exemplo de atribuição de string em uma váriavel"
	
	//Comandos e concatenação
	MsgInfo(TEXTO + cOutroTexto)	
		
	//Retorno da função
	return .T.


/*
	Exemplo de função recebendo métodos por parametros
	Para chamar uma função o padrão sera u_zNomeDaFuncao()
	Lembrando que a chamada é limitada a apenas 10 caracteres
	ADVPL = Advanced Protheus Language	
*/
User function zTeste2()
	MsgInfo(u_zLeiaTexto()) //Passagem de parametros
	MsgInfo(u_zLeiaTitulo())

User function zLeiaTexto()
	return "Texto comum da função leia texto"

User function zLeiaTitulo()
	return "Título do texto"


/*
	
*/
User function zNomeFuncao()






