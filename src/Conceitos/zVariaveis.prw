//Bibliotecas
#include "protheus.ch"

/*/{Protheus.doc} zVariaveis
Exemplo de declaração de variáveis
@author Andre
@since 28/06/2017
@version 1.0
	@example
	u_zVariaveis()
/*/

User function zVariaveis()
	local aArea := GetArea()
	
	// Declaração de variáveis, como é possivel definir mais de um valor para uma váriavel,
	// é costume, a primeira letra usar um identificador
	// Ex: nVariavel
	local nValor	:= 0	// Váriavel numérica
	local dData	:= Date()	// Váriavel data
	local lTeste	:= .T.	// Váriavel lógica
	local cTexto	:= "Terminal de Informação"  // Váriavel caracter ou string
	local oObjeto	:= TFont():New("Tahoma")	 // Váriavle objeto
	local xInfo	:= 0		// Váriavel que pode ter mais de um valor
	local aDados	:= {"André", "Silva", dData}	// Váriavel do tipo array
	local bBloco1	:= {||	nValor := 1,;
							Alert("Valor é igual a "+cValToChar(nValor))}   // Bloco de código são funções que o advpl ira executar e seguida de pipe pipe
																			// dentro dela podemos passar váriavels e depois disso as funções executadas
	local bBloco2	:= {|nValor|	nValor += 2,;									
							Alert("Valor é igual a "+cValToChar(nValor))}
	
	//Eval Executa o bloco de código
	EVal(bBloco1)
	EVal(bBloco2, 5)
	
	ALERT("O dia atual é: " + Dtoc(dData))
	
	//Alterando valores da váriavel
	xInfo := "Teste"
	
	RestArea(aArea)
return