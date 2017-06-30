//Bibliotecas
#include 'protheus.ch'

/*/{Protheus.doc} zPessoa
//Criação da classe pessoa
@author Andre
@since 30/06/2017
@version 1.0
	@example
	oObjeto := zPessoa():New()

@type class
/*/
class zPessoa
	//Atributos  (Quando usamos o hidden não é possivel vizualizar ou manipular o atributo)
	Data cNome
	Data nIdade
	Data dNascimento
	Data cEmail HIDDEN
	
	//Metodos
	Method New() CONSTRUCTOR
	Method MostraIdade()
	
EndClass


/*/{Protheus.doc} New
Método que cria a instância com a classe zPessoa
@author andre
@since 30/06/2017
@version 1.0
	@param cNome, characters, descricao
	@param dNascimento, date, descricao
	@example
	oObjeto := zPessoa():New("Andre", sTod("20170728"))
@type function
/*/	
//Sempre no método construtor da classe eu retorno Self "Ele mesmo"
Method New(cNome, dNascimento) Class zPessoa 
	//Atribuindo valores os atributos do objeto instanciado
	//Para identificar que é um atributo pertencente a uma classe inicia-se as váriaveis com ::
	//Do contrário quando uso mesmo nome de váriavel sem o :: o advpl entende como uma váriavel passada por parametro ou privada
	::cNome			:= cNome
	::dNascimento 	:= dNascimento
	::nIdade		:= fCalcIdade(dNascimento)	
Return Self	


Method MostraIdade() Class zPessoa
	Local cMsg := ""	
	//Criando e mostrando a mensagem
	cMsg := "A pessoa <b> " + ::cNome + " </b> tem " + cValToChar(::nIdade) + " anos."
	MsgInfo(cMsg,"Atenção")	
return	

/*---------------------------------------------------*
| Função: fCalcIdade                                 |
| Autor:  Andre										 |
| Data:	 30/06/2017									 |
| Descr:	 Função que calcula a idade da Pessoa	 |
*----------------------------------------------------*/

Static function fCalcIdade(dNascimento)
	local nIdade
	
	//Chamando a função YearSub para subtrair os anos de uma data
	nIdade := DateDiffYear(dDataBase, dNascimento)
return nIdade
