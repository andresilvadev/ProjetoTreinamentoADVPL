//Bibliotecas
#include "protheus.ch"
 
//Variáveis Estáticas
static cTesteSta := ''

 
/*/{Protheus.doc} zEscopo
Função exemplo de escopo de variáveis
@author Andre
@since 28/06/2017
@version 1.0
    @example
    u_zEscopo()
/*/ 
User function zEscopo()
    local aArea := GetArea()
     
    //Variáveis Locais
    // Obs: As váriaveis locais devem ser declaradas antes de qualquer coisa, se deixar para declarar depois pode dar erro de compilação.
    local nVar01 := 5
    local nVar02 := 8
    local nVar03 := 10
     
    //Variáveis Privadas
    private cTexto := "Imprimindo valor da váriavel private cTexto"    
     
    //Variáveis públicas
    //Boa prática é sempre criar uma váriavel publica com dois underlines no começo, por que dificil mente no padrão
    //terão váriaveis publicas com dois underlines no começo do nome da váriavel
    public __cPrimeiroNome  := "André"
    public __cUltimoNome := "Silva"
     
    //Chamando outra rotina para demonstrar o escopo de variáveis
    // @ significa que estou passando a váriavel por referencia, isto significa que qualquer modificação que esta váriavel sofrer,
    // na função fEscopo ela vai ser atualizada
    fEscopo(nVar01, @nVar02)
     
    Alert(nVar02)
    Alert("Public: " + __cPrimeiroNome + " " + __cUltimoNome)
    
    RestArea(aArea)
return 
 
 
/*-------------------------------------------------*
 | Função: fEscopo                                 |
 | Autor:  André Silva                        |
 | Data:   28/06/2017                             |
 | Descr.: Função que testa escopo de variáveis    |
 *-------------------------------------------------*/
 
Static Function fEscopo(nValor1, nValor2, nValor3)
    Local aArea := GetArea()
     
    //Variáveis locais
    Local __cTeste2 := "Teste2"
     
    //Valores Default
    Default nValor1 := 0
    Default nValor2 := 0
    Default nValor3 := 0
     
    //Alterando conteúdo do nValor2
    nValor2 += 10
     
    //Mostrando conteúdo da variável private
    Alert("Private: " + cTexto)
     
    //Setando valor da variável pública para demonstrar como pode ser perigoso a utilização
    __cTeste := "Teste1"
     
    RestArea(aArea)
Return