//Bibliotecas
#include "protheus.ch"

/*/{Protheus.doc} zVariaveis
Exemplo de declara��o de vari�veis
@author Andre
@since 28/06/2017
@version 1.0
	@example
	u_zVariaveis()
/*/

User function zVariaveis()
	local aArea := GetArea()
	
	// Declara��o de vari�veis, como � possivel definir mais de um valor para uma v�riavel,
	// � costume, a primeira letra usar um identificador
	// Ex: nVariavel
	local nValor	:= 0	// V�riavel num�rica
	local dData	:= Date()	// V�riavel data
	local lTeste	:= .T.	// V�riavel l�gica
	local cTexto	:= "Terminal de Informa��o"  // V�riavel caracter ou string
	local oObjeto	:= TFont():New("Tahoma")	 // V�riavle objeto
	local xInfo	:= 0		// V�riavel que pode ter mais de um valor
	local aDados	:= {"Andr�", "Silva", dData}	// V�riavel do tipo array
	local bBloco1	:= {||	nValor := 1,;
							Alert("Valor � igual a "+cValToChar(nValor))}   // Bloco de c�digo s�o fun��es que o advpl ira executar e seguida de pipe pipe
																			// dentro dela podemos passar v�riavels e depois disso as fun��es executadas
	local bBloco2	:= {|nValor|	nValor += 2,;									
							Alert("Valor � igual a "+cValToChar(nValor))}
	
	//Eval Executa o bloco de c�digo
	EVal(bBloco1)
	EVal(bBloco2, 5)
	
	ALERT("O dia atual �: " + Dtoc(dData))
	
	//Alterando valores da v�riavel
	xInfo := "Teste"
	
	RestArea(aArea)
return