programa
{
	
	funcao inicio()
	{
		inteiro num
		faca {
			escreva("Digite um valor até 10: ")
			leia(num)
		} enquanto (num < 0 ou num > 10)
		limpa()
		escreva("Tabuada do ", num, "\n")
		para (inteiro I = 1; I <= 10; I++){
			escreva (num, " x ", I, " = " , num*I , "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */