//Bibliotecas
#include "protheus.ch"
 
//Vari�veis Est�ticas
static cTesteSta := ''

 
/*/{Protheus.doc} zEscopo
Fun��o exemplo de escopo de vari�veis
@author Andre
@since 28/06/2017
@version 1.0
    @example
    u_zEscopo()
/*/ 
User function zEscopo()
    local aArea := GetArea()
     
    //Vari�veis Locais
    // Obs: As v�riaveis locais devem ser declaradas antes de qualquer coisa, se deixar para declarar depois pode dar erro de compila��o.
    local nVar01 := 5
    local nVar02 := 8
    local nVar03 := 10
     
    //Vari�veis Privadas
    private cTexto := "Imprimindo valor da v�riavel private cTexto"    
     
    //Vari�veis p�blicas
    //Boa pr�tica � sempre criar uma v�riavel publica com dois underlines no come�o, por que dificil mente no padr�o
    //ter�o v�riaveis publicas com dois underlines no come�o do nome da v�riavel
    public __cPrimeiroNome  := "Andr�"
    public __cUltimoNome := "Silva"
     
    //Chamando outra rotina para demonstrar o escopo de vari�veis
    // @ significa que estou passando a v�riavel por referencia, isto significa que qualquer modifica��o que esta v�riavel sofrer,
    // na fun��o fEscopo ela vai ser atualizada
    fEscopo(nVar01, @nVar02)
     
    Alert(nVar02)
    Alert("Public: " + __cPrimeiroNome + " " + __cUltimoNome)
    
    RestArea(aArea)
return 
 
 
/*-------------------------------------------------*
 | Fun��o: fEscopo                                 |
 | Autor:  Andr� Silva                        |
 | Data:   28/06/2017                             |
 | Descr.: Fun��o que testa escopo de vari�veis    |
 *-------------------------------------------------*/
 
Static Function fEscopo(nValor1, nValor2, nValor3)
    Local aArea := GetArea()
     
    //Vari�veis locais
    Local __cTeste2 := "Teste2"
     
    //Valores Default
    Default nValor1 := 0
    Default nValor2 := 0
    Default nValor3 := 0
     
    //Alterando conte�do do nValor2
    nValor2 += 10
     
    //Mostrando conte�do da vari�vel private
    Alert("Private: " + cTexto)
     
    //Setando valor da vari�vel p�blica para demonstrar como pode ser perigoso a utiliza��o
    __cTeste := "Teste1"
     
    RestArea(aArea)
Return