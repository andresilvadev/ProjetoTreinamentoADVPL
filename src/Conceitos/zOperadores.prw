//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zOperadores
Exemplo de Operadores mais comuns em AdvPL
@author Andre Silva
@since 29/06/2017
@version 1.0
    @example
    u_zOperadores()
    @obs Utilize esse teste no cadastro de fórmulas
/*/
 
User function zOperadores()
    local aArea := GetArea()
     
    //Declaração de variáveis
    local nValor1   := 5
    local nValor2   := 3
    local cTexto1   := "André Silva"
    local cTexto2   := "André"
     
    //Operadores de Atribuição
    nValor1 := 6    //Existe também o replace, porém ele é utilizado para campos (RecLock)
     
    //Operadores de Manipulação
    nValor1++       //Soma 1 na variável. 		Outro exemplo:	nValor1 := nValor1 + 1
    nValor1--       //Subtrai 1 na variável.	Outro exemplo:	nValor1 := nValor1 - 1
    nValor1 *= 2    //Multiplica o valor. 		Outro exemplo:  nValor1 := nValor1 * 2
    nValor1 /= 2    //Divide o valor. 			Outro exemplo:  nValor1 := nValor1 / 2
    nValor1 += 7  	//Soma o valor. 			Outro exemplo:  nValor1 := nValor1 + 7
    nValor1 -= 7    //Subtrai o valor. 			Outro exemplo:  nValor1 := nValor1 - 7
     
    //ConOut : Exibe a saida no console, é parecido com o console.log, se a saida for .T. é True, .F. é false 
    //Testes booleanos
    ConOut("Testes: ")
    ConOut( nValor1 == nValor2 )        //Exatamente igual
    ConOut( !(nValor1 == nValor2) )     //Negação de teste
    ConOut( nValor1 != nValor2 )        //Diferente de (também pode ser usado <>)
    ConOut( cTexto2 $ cTexto1 )         //Está contido
    ConOut( nValor1 > nValor2 )         //É maior que (também pode ser >=, seria maior ou igual)
    ConOut( nValor1 < nValor2 )         //É menor que (também pode ser <=, seria menor ou igual)
     
    //Testes compostos
    ConOut("Testes Compostos: ")
    ConOut( (1==1) .And. (1!=1) )       //Teste com .And. só retorna verdadeiro, se todos os testes forem verdadeiro
    ConOut( (1==1) .Or.  (1!=1) )       //Teste com .Or.  retorna verdadeiro, se qualquer teste for verdadeiro
     
    //Macro Substituição
    &("nValor3 := 8")
    Alert(nValor3)
     
    RestArea(aArea)
    
return