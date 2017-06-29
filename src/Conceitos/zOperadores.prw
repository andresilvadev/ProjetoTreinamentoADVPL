//Bibliotecas
#include "protheus.ch"
 
/*/{Protheus.doc} zOperadores
Exemplo de Operadores mais comuns em AdvPL
@author Andre Silva
@since 29/06/2017
@version 1.0
    @example
    u_zOperadores()
    @obs Utilize esse teste no cadastro de f�rmulas
/*/
 
User function zOperadores()
    local aArea := GetArea()
     
    //Declara��o de vari�veis
    local nValor1   := 5
    local nValor2   := 3
    local cTexto1   := "Andr� Silva"
    local cTexto2   := "Andr�"
     
    //Operadores de Atribui��o
    nValor1 := 6    //Existe tamb�m o replace, por�m ele � utilizado para campos (RecLock)
     
    //Operadores de Manipula��o
    nValor1++       //Soma 1 na vari�vel. 		Outro exemplo:	nValor1 := nValor1 + 1
    nValor1--       //Subtrai 1 na vari�vel.	Outro exemplo:	nValor1 := nValor1 - 1
    nValor1 *= 2    //Multiplica o valor. 		Outro exemplo:  nValor1 := nValor1 * 2
    nValor1 /= 2    //Divide o valor. 			Outro exemplo:  nValor1 := nValor1 / 2
    nValor1 += 7  	//Soma o valor. 			Outro exemplo:  nValor1 := nValor1 + 7
    nValor1 -= 7    //Subtrai o valor. 			Outro exemplo:  nValor1 := nValor1 - 7
     
    //ConOut : Exibe a saida no console, � parecido com o console.log, se a saida for .T. � True, .F. � false 
    //Testes booleanos
    ConOut("Testes: ")
    ConOut( nValor1 == nValor2 )        //Exatamente igual
    ConOut( !(nValor1 == nValor2) )     //Nega��o de teste
    ConOut( nValor1 != nValor2 )        //Diferente de (tamb�m pode ser usado <>)
    ConOut( cTexto2 $ cTexto1 )         //Est� contido
    ConOut( nValor1 > nValor2 )         //� maior que (tamb�m pode ser >=, seria maior ou igual)
    ConOut( nValor1 < nValor2 )         //� menor que (tamb�m pode ser <=, seria menor ou igual)
     
    //Testes compostos
    ConOut("Testes Compostos: ")
    ConOut( (1==1) .And. (1!=1) )       //Teste com .And. s� retorna verdadeiro, se todos os testes forem verdadeiro
    ConOut( (1==1) .Or.  (1!=1) )       //Teste com .Or.  retorna verdadeiro, se qualquer teste for verdadeiro
     
    //Macro Substitui��o
    &("nValor3 := 8")
    Alert(nValor3)
     
    RestArea(aArea)
    
return