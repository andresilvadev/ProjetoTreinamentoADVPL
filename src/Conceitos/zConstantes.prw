//Bibliotecas
#include "protheus.ch"
#include "topConn.ch"
/*
	CONDICIONAL
*/
//Se for espanhol
#ifdef SPANISH
	#define STR_TESTE	'Un gran poder conlleva una gran responsabilidad.'
	#define STR_TITULO	'Precaución'
	
	//Senão, irá fazer outros testes
	#else
		//Se for em Inglês
		#ifdef ENGLISH
			#define STR_TESTE	'With great power comes great responsibility.'
			#define STR_TITULO	'Caution'
			
			//Senão, será o padrão (Português)
			#else
				#define STR_TESTE	'Com grandes poderes vêm grandes responsabilidades.'
				#define STR_TITULO	'Atenção'
		#endif
#endIf

//Constante que simula um Enter
#define STR_PULA	Chr(13)+Chr(10)

/*/{Protheus.doc} zConstantes
Exemplo de teste com diretivas / constantes
@author Andre
@since 28/06/2017
@version 1.0
	@example
	u_zConstantes()
/*/

User function zConstantes()
	local aArea := GetArea()
	
	//Mostrando mensagem
	MsgAlert(STR_TESTE + STR_PULA + "...", STR_TITULO)
	
	RestArea(aArea)
Return