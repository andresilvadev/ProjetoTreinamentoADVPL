	
//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zLacos
Exemplo de la�os de repeti��o em AdvPL
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
	Exemplo de For (Fazer do Valor de 1 At� 10)
	===========================================
	*/    
    For nValor := 1 To 10
    Next
    Alert("Mostrando la�o de um at� 11 com For (++): "+cValToChar(nValor))   
    
    
    /*
	===================================================
	Exemplo de For Inverso (Fazer do Valor de 10 At� 1)
	===================================================
	*/    
    For nValor := 10 To 1 Step -1
    Next
    Alert("Mostrando la�o decrescente de 10 a 1 contando -1 usando For (--): "+cValToChar(nValor))
    
    
    /*
	===================================================================================================
	Exemplo de While (Fa�a Enquanto o valor for diferente de 10)... Tamb�m pode ser utilizado o Do While
	===================================================================================================
	*/   
    nValor := 1
    While nValor != 10
        nValor++
    EndDo
    Alert("Mostrando la�o incrementando de 1 em 1 com While: "+cValToChar(nValor))
    
    
     /*
	===============================================================
	Exemplo do While composto (mais de 1 teste no la�o de repeti��o)
	===============================================================
	*/   
    nValor := 1
    While nValor != 10 .And. cNome != "Andre Silva"
        //Se chegar no meio do la�o
        If nValor == 5
            cNome := "Andre Silva"
        EndIf
         
        nValor++
    EndDo
    Alert("Mostrando o la�o While Composto: "+cValToChar(nValor))
    
    
     /*
	==========================================================================================
	Exemplo de quebra de la�o de repeti��o (Fazer do Valor de 1 At� 10 incrementando de 2 em 2)
	==========================================================================================
	*/   
    For nValor := 1 To 10 Step 2
        //Se o valor for igual a 6, diminui um valor (ser� 5), e pula o la�o
        If nValor == 6
            nValor--
            Loop
        EndIf
         
        //Se o valor for igual a 7, encerra o la�o de repeti��o
        If nValor == 7
            Exit
        EndIf
    Next
    Alert("Mostrando o la�o com sa�da do loop usando For (Quebra): "+cValToChar(nValor))
     
    RestArea(aArea)
return