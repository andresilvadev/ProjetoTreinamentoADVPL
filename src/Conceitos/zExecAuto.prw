//Bibliotecas
#include "Protheus.ch"
#include "RwMake.ch"
#include "TBIConn.ch"
 
/*/{Protheus.doc} zExecAuto
Exemplo de grava��o via ExecAuto
@author Andre Silva
@since 30/06/2017
@version 1.0
    @example
    u_zExecAuto()
/*/
 
User function zExecAuto()
    local aArea		:= GetArea()
    local aVetor	:= {}
    //Vari�veis utilizadas pelo ExecAuto (caso queira gravar o log em arquivo texto, utilize as duas vari�veis abaixo
    /*
    Private lMSHelpAuto   	:= .T.  //Usado mais em casos de arquivos texto, onde n�o mostra o erro para o usu�rio 
    Private lAutoErrNoFile  := .T.	//Usado mais no caso de importa��es de v�rios registros
    */
    private lMsErroAuto     := .F.	//Identifica se tem algum erro no ExecAuto, se tiver algum erro ela automaticamente fica como verdadeira
     
    
    //Adicionando dados no produto, conforme os campos da tabela SB1, para testar inclus�o
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
     
    //Iniciando controle de transa��o
    Begin Transaction
    	//ExecAuto geralmente � um array que a gente manda pra ele, onde aqui montamos um da SB1, que vai chamar a Mata010 cadastro de produtos
    	//MSExecAuto � similiar a um bloco de c�digo, onde passa as v�riaveis, x,y, no caso o aVetor e o 3, (3) � a opera��o
    	//Onde 3, � inclus�o; 4 � altera��o; 5 � exclus�o
        //Chamando o cadastro de produtos de forma autom�tica
        MSExecAuto({|x,y| Mata010(x,y)},aVetor,3)
         
        //Se houve erro
        If lMsErroAuto
            //Caso queira gravar o log em arquivo texto, n�o se deve usar a rotina MostraErro, mas sim o trecho abaixo:
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
             
            //Disarmando a transa��o
            DisarmTransaction()
            
            Else
            MsgAlert("Produto inserido com sucesso!")
        EndIf
        
        
                  
    End Transaction
 
    RestArea(aArea)
return