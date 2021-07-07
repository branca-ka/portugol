programa
{
	
	funcao inicio()
	{
		inteiro numA, numB
		caracter opcao
		escreva("Digite o 1o. numero: ")
		leia(numA)
		escreva("Digite o 2o. numero: ")		
		leia(numB)
		escreva("Escolha uma operação +,-,*,/: ")	
		leia(opcao)
		escolha(opcao){
			caso '+':
			 	escreva("A soma da: ", numA+numB)
			 	pare
			caso '-':
			 	escreva("A subtracao da: ", numA-numB)
			 	pare
			caso '*':
			 	escreva("A multiplicacao da: ", numA*numB)
			 	pare	
			caso '/':
			 	escreva("A divisao da: ", numA/numB)	
			 	pare		 	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */