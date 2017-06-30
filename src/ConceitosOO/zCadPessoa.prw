//Biblioteca
#include 'protheus.ch'

/*/{Protheus.doc} zCadPessoa
//Função que testa a classe zPessoa
@author Andre
@since 30/06/2017
@version 1.0
	@example
	u_zCadPessoa()

@type function
/*/
User function zCadPessoa()
	local oPessoa
	local cNome			:= "Andre"
	local dNascimento	:=	sTod("19840728")
	
	//Instanciando o objeto oPessoa através da classe Pessoa
	oPessoa	:= zPessoa():New(cNome,dNascimento)
	
	//Chamando um método da classe
	oPessoa:MostraIdade()
return
	