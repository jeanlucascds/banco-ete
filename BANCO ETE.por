/* Atividade ClassRoom BANCO ETE 	
Alunos: Jean Lucas e Jhonatas Adriano 
Turma: 1°A - DS - Subsequente 	
Matéria: LPC 
Prof.: Silvio Monte	
 				
        1 - Apenas um cliente por execução;
        2 - Ao criar conta corrente, obrigatório perguntar se deseja realizar deposito inicial e criar automaticamente conta poupança;
        3 - Necessário saldo para transferência entre contas;
        4 - As contas precisam ter: nome titular, agência, número da conta e dígito verificador;
        5 - Operações na CC: saque, depósito e exibir conta;
        6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
        7 - Comentar todo trecho do código.
        8 - Postar no GitHub
        
*/   

    programa
{
        
     //Biblioteca

     inclua biblioteca Util --> u

     //Começo
        
        funcao inicio()
	{
	
	//Declaração das Variaveis 

	cadeia titular
	inteiro opcao, agencia, digitoCC, contaCC, contaCP, deposito
	real valor, saldoDP = 0.0, saldoCC = 0.0, saldoCP = 0.0
	logico menu = verdadeiro, usuario = falso

	//Tela Inicial do Banco ETE
	
	          faca {
					escreva(" ==================== BANCO ETE ===================="+"\n")
				 	escreva("|                                                   |"+"\n") 				
				 	escreva("|Escolha uma opção:                                 |"+"\n")
				 	escreva("|1. Criar Conta                                     |"+"\n") 				
				 	escreva("|2. Consultar Saldo                                 |"+"\n")
				 	escreva("|3. Saque da Conta Corrente                         |"+"\n") 				
				 	escreva("|4. Transferência entre contas                      |"+"\n") 				
				 	escreva("|5. Depósito Conta Corrente                         |"+"\n")
				 	escreva("|6. Resgate                                         |"+"\n") 				
				 	escreva("|7. Sair                                            |"+"\n")
				 	escreva(" =================================================="+"\n")
				 	leia(opcao)
				 	limpa()

		 		     escolha(opcao){

	               //Criação da conta do titular

		 			caso 1: 
						escreva("Insira o Nome do Titular: ")
						leia(titular)
						escreva("\nBem vindo(a) ao Banco ETE, " + titular + "\n")
						escreva("\nInsira o número da sua agência:\n")
						leia(agencia)
						escreva("\nInsira o número da Conta Corrente:\n")
						leia(contaCC)
						escreva("\nInsira o número Verificador da sua conta:\n")
						leia(digitoCC)
						limpa()

						
				//Definição da conta do titular
				
						escreva("\nConta Corrente criada com êxito!", "\n")
						usuario = verdadeiro
						escreva("Agência: " + agencia + "\n")
						escreva("Conta Corrente: " + contaCC +"-" + digitoCC +"\n")
						escreva("Saldo da conta: " + saldoDP + "\n")
				

				//Primeiro Depósito
				
			      		escreva("Deseja realizar um deposito inicial na sua conta? 1 - SIM ; 2 - NÃO\n")
			     		leia(deposito)

	     		escolha(deposito){

	     	             caso 1:
				     		escreva("\nInsira o valor que você deseja depositar! R$ ")
					 		leia(valor)
					 		saldoCC = saldoCC + valor
					   		escreva("\nO saldo atual é de: R$ " + saldoCC + "\n")
					   		escreva("\n")
					   		pare
	     			
	     		        caso 2:
				     		escreva("\nDeseja escolher outra opção do menu? 1 - SIM; 2 - NÃO\n")
				     		inteiro parar
				     		leia(parar)

	     		       escolha(parar){

	     		              caso 1:
					     		escreva("\nEscolha outra opção do menu.\n")
					     		pare

	     		              caso 2:
					     		escreva("\nDigite 7 para SAIR.\n")
					     		pare
					     			
					     		}

	     		pare
	     		     }
	     		pare

	     		//Consulta do saldo

	     		caso 2:
	     		        se (usuario == falso) {
	     		        	escreva("\nÉ necessário uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     				
	     				pare
	     				}

	     			   senao
			     		escreva("O saldo da Conta Corrente é de: " + saldoCC + "\n")
						escreva("O saldo da Conta Poupança é de: " + saldoCP + "\n")
			     		pare

	     		

	     		//Saque da conta Corrente

	     		caso 3:
	     			 se (usuario == falso) {
	     			  	escreva("\nÉ necessário uma conta para acessar o banco.\n")
	     			  	escreva("\n")
	     			  	
		     			pare
		     			}

		     		senao
		     			limpa()
	     				escreva("\nInsira o valor que você deseja sacar! \n")
	     				leia(valor)
	     		    
	     			se((saldoCC - valor) >= 0){
						saldoCC = saldoCC - valor
						escreva("O saldo atual é de: R$ " + saldoCC + "\n")
	     				}
	     			senao
	     			escreva("\nSaldo inválido para saque! \n")
	     			pare

	     		//Transferência entre contas 

	     		caso 4:
	     			se (usuario == falso) {
	     				escreva("\nVocê precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     				
	     				pare
	     				}
	     				
	     			senao	     		 
	     				escreva("\nInsira o valor que deseja transferir! \n")
						leia(valor)

					se(valor <= 0){
						escreva("Não é possível aplicar valor igual ou menor que zero")}
				 
					senao se ((saldoCC - valor) >= 0){
			 			saldoCC =  saldoCC -valor
			 			saldoCP = saldoCP + valor
			   			escreva("\nSeu saldo atual da Conta Corrente é de: R$ " + saldoCC + "\n")
			   			escreva("\nSeu saldo atual da Conta Poupança é de: R$ " + saldoCP + "\n")
			   			} 
			   	     senao
			   			escreva("\nValor insuficiente na Conta Corrente para transferir para Conta Poupança.\n")
			   			pare

			     //Deposito Conta Corrente

			     caso 5:			     
			     	se (usuario == falso) {
	     				escreva("\nVocê precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     					     			
	     				pare
	     			}

	     			senao
	     				limpa()
	     				escreva("\nInsira o valor que deseja depositar! R$ ")
		 				leia(valor)
		 				saldoCC = saldoCC + valor
		   				escreva("\nSeu saldo atual é de: R$ " + saldoCC + "\n")
		   				escreva("\n")
		   				pare

			     //Resgate

			     caso 6:
			     	se (usuario == falso) {
	     				escreva("\nVocê precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     					     			
	     				pare
	     				}

	     			senao
			     		escreva("\nInsira o valor que deseja resgatar! \n")
						leia(valor)
				 
					se((saldoCP - valor) >= 0){
										
			 			saldoCC = saldoCC + valor
			 			saldoCP = saldoCP - valor
			   			escreva("\nSeu saldo atual da Conta Corrente é de: R$ " + saldoCC + "\n")
			   			escreva("\nSeu saldo atual da Conta Poupança é de: R$ " + saldoCP + "\n")
					}
					senao
			   	     escreva("\nValor insuficiente para resgate.\n")
			   		pare

			     //Saída

			     caso 7:	     			
			    		 escreva("\nVolte sempre!!!\n")
     				 menu = falso
			   		 pare

			   	 caso contrario:
					escreva("Digite uma opção válida","\n")
	     				
		 	     } 
		 	
	          }    enquanto(menu == verdadeiro) 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */