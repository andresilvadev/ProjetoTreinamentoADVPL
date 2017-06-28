//Bibliotecas
#include "protheus.ch"
#include "topConn.ch"
/*
	CONDICIONAL
*/
//Se for espanhol
#ifdef SPANISH
	#define STR_TESTE	'Un gran poder conlleva una gran responsabilidad.'
	#define STR_TITULO	'Precauci�n'
	
	//Sen�o, ir� fazer outros testes
	#else
		//Se for em Ingl�s
		#ifdef ENGLISH
			#define STR_TESTE	'With great power comes great responsibility.'
			#define STR_TITULO	'Caution'
			
			//Sen�o, ser� o padr�o (Portugu�s)
			#else
				#define STR_TESTE	'Com grandes poderes v�m grandes responsabilidades.'
				#define STR_TITULO	'Aten��o'
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