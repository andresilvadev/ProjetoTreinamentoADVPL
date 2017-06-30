//Bibliotecas
#include "Protheus.ch"
#include "RwMake.ch"
#include "TBIConn.ch"
 
/*/{Protheus.doc} zExecAuto
Exemplo de gravação via ExecAuto
@author Andre Silva
@since 30/06/2017
@version 1.0
    @example
    u_zExecAuto()
/*/
 
User function zExecAuto()
    local aArea		:= GetArea()
    local aVetor	:= {}
    //Variáveis utilizadas pelo ExecAuto (caso queira gravar o log em arquivo texto, utilize as duas variáveis abaixo
    /*
    Private lMSHelpAuto   	:= .T.  //Usado mais em casos de arquivos texto, onde não mostra o erro para o usuário 
    Private lAutoErrNoFile  := .T.	//Usado mais no caso de importações de vários registros
    */
    private lMsErroAuto     := .F.	//Identifica se tem algum erro no ExecAuto, se tiver algum erro ela automaticamente fica como verdadeira
     
    
    //Adicionando dados no produto, conforme os campos da tabela SB1, para testar inclusão
    aVetor :=   {;
                    {"B1_COD",      "PTD0011",                              Nil},;
                    {"B1_DESC",     "PRODUTO 11 - ROTINA AUTOMATICA",   	Nil},;
                    {"B1_TIPO",     "GN",                                   Nil},;
                    {"B1_UM",       "UN",                                   Nil},;
                    {"B1_LOCPAD",   "01",                                   Nil},;
                    {"B1_GRUPO",	"0007",									Nil},;
                    {"B1_PICM",     0,                                      Nil},;
                    {"B1_IPI",      0,                                      Nil},;
                    {"B1_CONTRAT",  "N",                                    Nil},;
                    {"B1_LOCALIZ",  "N",                                    Nil};
                }
     
    //Iniciando controle de transação
    Begin Transaction
    	//ExecAuto geralmente é um array que a gente manda pra ele, onde aqui montamos um da SB1, que vai chamar a Mata010 cadastro de produtos
    	//MSExecAuto é similiar a um bloco de código, onde passa as váriaveis, x,y, no caso o aVetor e o 3, (3) é a operação
    	//Onde 3, é inclusão; 4 é alteração; 5 é exclusão
        //Chamando o cadastro de produtos de forma automática
        MSExecAuto({|x,y| Mata010(x,y)},aVetor,3)
         
        //Se houve erro
        If lMsErroAuto
            //Caso queira gravar o log em arquivo texto, não se deve usar a rotina MostraErro, mas sim o trecho abaixo:
            /*
            aLogAuto    := {}
            cLogTxt := ""
                         
            aLogAuto := GetAutoGRLog()   	//Pegando log do ExecAuto             
            
            For nAux:=1 To Len(aLogAuto)	//Percorrendo o Log
                cLogTxt += aLogAuto[nAux] + Chr(13)+Chr(10)
            Next
            */
         
            //Mostrando a janela de erro
            MostraErro()            
             
            //Disarmando a transação
            DisarmTransaction()
            
            Else
            MsgAlert("Produto inserido com sucesso!")
        EndIf
        
        
                  
    End Transaction
 
    RestArea(aArea)
return