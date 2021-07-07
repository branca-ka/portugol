programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> tp
	inclua biblioteca Sons --> sn
funcao inicio()
	{
		inteiro jogada = 0
		caracter endereco, jogador = '1'
		caracter tabuleiro[3][3] = {{'A','B','C'},{'D','E','F'}, {'G','H','I'}} 
		escreva("       Preparem-se para realizar o jogo da velha entre dois jogadores\n")
		escMatriz(tabuleiro)
		enquanto (ganhou(tabuleiro) == 'X' e nao velha(tabuleiro)){
			se (jogada <= 9) {				
				jogadaJogador1(jogador,tabuleiro)
			     se (jogador == '1') {jogador = '2'} senao {jogador = '1'}
			     jogada = jogada + 1
			} senao {pare}
			
		}
		se (velha(tabuleiro)) {escreva("         Deu velha, que pena!!!\n\n\n")}
		senao {escreva("         O jogador ", ganhou(tabuleiro), " ganhou, Parabéns!!\n\n\n")}
	}

	funcao escMatriz(caracter m[][]){
		escreva("                     -----------------------\n")	
		escreva("                          ",m[0][0],"  |  ",m[0][1],"  |  ",m[0][2],"\n")
		escreva("                     -----------------------\n")
		escreva("                          ",m[1][0],"  |  ",m[1][1],"  |  ",m[1][2],"\n")
		escreva("                     -----------------------\n")
		escreva("                          ",m[2][0],"  |  ",m[2][1],"  |  ",m[2][2],"\n")
		escreva("                     -----------------------\n")
	}

	funcao setaEnd(caracter end, caracter jogador,caracter m[][]){
		escolha(end) {
			caso 'A':
			    se ((m[0][0] == '1') ou (m[0][0] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[0][0] = jogador}
			    pare
			caso 'B':
			    se ((m[0][1] == '1') ou (m[0][1] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[0][1] = jogador}
			    pare
			caso 'C':
			    se ((m[0][2] == '1') ou (m[0][2] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[0][2] = jogador}
			    pare
			caso 'D':
			    se ((m[1][0] == '1') ou (m[1][0] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[1][0] = jogador}
			    pare
			caso 'E':
			    se ((m[1][1] == '1') ou (m[1][1] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[1][1] = jogador}
			    pare
			caso 'F':
			    se ((m[1][2] == '1') ou (m[1][2] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[1][2] = jogador}
			    pare
			caso 'G':
			    se ((m[2][0] == '1') ou (m[2][0] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[2][0] = jogador}
			    pare
			caso 'H':
			    se ((m[2][1] == '1') ou (m[2][1] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[2][1] = jogador}
			    pare
			caso 'I':
			    se ((m[2][2] == '1') ou (m[2][2] == '2')){
			    	   escreva("         Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[2][2] = jogador}
			    pare
			caso contrario: 
			    jogadaJogador1(jogador,m)
		}
	}
	funcao jogadaJogador1(caracter jogador,caracter m[][]){		
		caracter endereco
	     escreva("         Por favor jogador ",jogador, " realize sua jogada!\n")
		escreva("         Escolha o local onde irá colocar o seu numero. \n")
		escreva("         Para isso digite seu endereço (letra em maiusculo): ")
		leia(endereco)
		setaEnd(endereco, jogador, m)
		limpa()
		escMatriz(m)
	}
	funcao logico velha(caracter m[][]){
		se ((m[0][0] == m[2][1]) e (m[0][0] == m[0][2])){
		   retorne verdadeiro}
		senao se ((m[2][0] == m[0][1]) e (m[2][0] == m[2][2])){
		   retorne verdadeiro} 
		senao {retorne falso} 
	}

	funcao jogComp(caracter m[][], inteiro jogada) {
		se       (m[1][1] == 'E' e jogada == 1) {m[1][1] = '2'}
		senao se (m[0][0] == 'A' e jogada == 1) {m[0][0] = '2'}
		senao se (jogada == 2 ) {}
		limpa()
		escMatriz(m) 
	}

	funcao caracter ganhou(caracter m[][]){
		se ((m[0][0] == m[1][1]) e (m[1][1] == m[2][2])
		   ou ((m[0][0] == m[0][1]) e (m[0][1] == m[0][2]))
		   ou ((m[0][0] == m[1][0]) e (m[1][0] == m[2][0]))
		    ){		 
		   retorne m[0][0]}
		senao se ((m[0][2] == m[1][1]) e (m[1][1] == m[2][0])
		   ou ((m[0][2] == m[1][2]) e (m[1][2] == m[2][2]))
		    ){		 
		   retorne m[0][2]}
	     senao se ((m[2][0] == m[2][1]) e (m[2][1] == m[2][2])
		   ou ((m[2][0] == m[1][0]) e (m[1][0] == m[0][0]))
		   ou ((m[2][0] == m[1][1]) e (m[1][1] == m[0][2]))
		    ){		 
		   retorne m[2][0]}
		senao se ((m[1][0] == m[1][1]) e (m[1][1] == m[1][2]))
		     {retorne m[1][0]}
		senao se ((m[0][1] == m[1][1]) e (m[1][1] == m[2][1]))
		     {retorne m[0][1]}
		senao  {retorne 'X'}
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */