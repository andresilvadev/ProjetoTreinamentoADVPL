	
//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zLacos
Exemplo de laços de repetição em AdvPL
@author Andre
@since 29/06/2017
@version 1.0
    @example
    u_zLacos()
/*/
 
User function zLacos()
    Local aArea := GetArea()
    Local nValor:= 1
    Local cNome := ""
     
    /*
	===========================================
	Exemplo de For (Fazer do Valor de 1 Até 10)
	===========================================
	*/    
    For nValor := 1 To 10
    Next
    Alert("Mostrando laço de um até 11 com For (++): "+cValToChar(nValor))   
    
    
    /*
	===================================================
	Exemplo de For Inverso (Fazer do Valor de 10 Até 1)
	===================================================
	*/    
    For nValor := 10 To 1 Step -1
    Next
    Alert("Mostrando laço decrescente de 10 a 1 contando -1 usando For (--): "+cValToChar(nValor))
    
    
    /*
	===================================================================================================
	Exemplo de While (Faça Enquanto o valor for diferente de 10)... Também pode ser utilizado o Do While
	===================================================================================================
	*/   
    nValor := 1
    While nValor != 10
        nValor++
    EndDo
    Alert("Mostrando laço incrementando de 1 em 1 com While: "+cValToChar(nValor))
    
    
     /*
	===============================================================
	Exemplo do While composto (mais de 1 teste no laço de repetição)
	===============================================================
	*/   
    nValor := 1
    While nValor != 10 .And. cNome != "Andre Silva"
        //Se chegar no meio do laço
        If nValor == 5
            cNome := "Andre Silva"
        EndIf
         
        nValor++
    EndDo
    Alert("Mostrando o laço While Composto: "+cValToChar(nValor))
    
    
     /*
	==========================================================================================
	Exemplo de quebra de laço de repetição (Fazer do Valor de 1 Até 10 incrementando de 2 em 2)
	==========================================================================================
	*/   
    For nValor := 1 To 10 Step 2
        //Se o valor for igual a 6, diminui um valor (será 5), e pula o laço
        If nValor == 6
            nValor--
            Loop
        EndIf
         
        //Se o valor for igual a 7, encerra o laço de repetição
        If nValor == 7
            Exit
        EndIf
    Next
    Alert("Mostrando o laço com saída do loop usando For (Quebra): "+cValToChar(nValor))
     
    RestArea(aArea)
return