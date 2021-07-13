programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Util 
funcao inicio()
	{
		inteiro jogada = 0
		caracter endereco, jogador
		caracter tabuleiro[3][3] = {{'A','B','C'},{'D','E','F'}, {'G','H','I'}} 
		escreva("Quem irá começar( 1-jogador ou 2-computador)? ")
		leia(jogador)
	     escMatriz(tabuleiro)

	     enquanto (ganhou(tabuleiro) == 'X' e jogada < 9){
			se (jogada <= 9) {							
				se (jogador == '1') {
				   jogadaJogador1(jogador,tabuleiro)
				   jogador = '2'} 
				senao { 
				  se    (ataca(tabuleiro) != 'X'){setaEnd(ataca(tabuleiro), '2', tabuleiro)}
				  senao se (bloqueio(tabuleiro) != 'X'){setaEnd(bloqueio(tabuleiro), '2', tabuleiro)}
				  senao {setaEnd(continua(jogada, tabuleiro), '2', tabuleiro)}
				  limpa()
				  escMatriz(tabuleiro)
				  jogador = '1'}
			     jogada++
			} senao {pare}
			
		}
		se (velha(tabuleiro)) {escreva("         Deu velha, que pena!!!\n\n\n")}
		senao {escreva("         O jogador ", ganhou(tabuleiro), " ganhou, Parabéns!!\n\n\n")}
	}


	funcao escMatriz(caracter m[][]){
		escreva("--------------------\n")	
		escreva("  ",m[0][0],"  |  ",m[0][1],"  |  ",m[0][2],"\n")
		escreva("--------------------\n")
		escreva("  ",m[1][0],"  |  ",m[1][1],"  |  ",m[1][2],"\n")
		escreva("--------------------\n")
		escreva("  ",m[2][0],"  |  ",m[2][1],"  |  ",m[2][2],"\n")
		escreva("--------------------\n")
	}

	funcao setaEnd(caracter end, caracter jogador,caracter m[][]){
		escolha(end) {
			caso 'A':
			    se (m[0][0] != 'A'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[0][0] = jogador}
			    pare
			caso 'B':
			    se (m[0][1] != 'B'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[0][1] = jogador}
			    pare
			caso 'C':
			    se (m[0][2] != 'C'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[0][2] = jogador}
			    pare
			caso 'D':
			    se (m[1][0] != 'D'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[1][0] = jogador}
			    pare
			caso 'E':
			    se ((m[1][1] != 'E') ou (m[1][1] == '1')){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[1][1] = jogador}
			    pare
			caso 'F':
			    se (m[1][2] != 'F'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[1][2] = jogador}
			    pare
			caso 'G':
			    se (m[2][0] != 'G'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[2][0] = jogador}
			    pare
			caso 'H':
			    se (m[2][1] != 'H'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[2][1] = jogador}
			    pare
			caso 'I':
			    se (m[2][2] != 'I'){
			    	   escreva("Endereço já escolhido!")
			    	   jogadaJogador1(jogador,m)}
			    senao {m[2][2] = jogador}
			    pare
		}
	}
	
	funcao jogadaJogador1(caracter jogador,caracter m[][]){		
		caracter endereco
		escreva("Jogador, escolha o local onde irá colocar o seu numero. \n")
		escreva("Para isso digite seu endereço (letra em maiusculo): ")
		leia(endereco)
		setaEnd(endereco, '1', m)
		limpa()
		escMatriz(m)
	}
	
	funcao logico velha(caracter m[][]){
		se ((m[0][0] == m[2][1]) e (m[0][0] == m[0][2])){
		   retorne verdadeiro}
		senao se ((m[2][0] == m[0][1]) e (m[2][0] == m[2][2])){
		   retorne verdadeiro} 
		senao se ((m[0][0] == m[1][2]) e (m[1][2] == m[2][0])){
		   retorne verdadeiro}    
		senao se ((m[0][2] == m[1][0]) e (m[1][0] == m[2][2])){
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
	
	funcao caracter bloqueio(caracter m[][]){
			se (m[0][0] == '1' e m[0][1] == '1') {retorne 'C'}    // trata linha
			senao se (m[0][0] == '1' e m[0][2] == '1'e m[0][1] == 'B') {retorne 'B'}
			senao se (m[0][1] == '1' e m[0][2] == '1'e m[0][0] == 'A') {retorne 'A'}
			
			senao se (m[0][0] == '1' e m[1][0] == '1'e m[2][0] == 'G') {retorne 'G'}// trata coluna
			senao se (m[0][0] == '1' e m[2][0] == '1'e m[0][1] == 'D') {retorne 'D'}
			senao se (m[1][0] == '1' e m[2][0] == '1'e m[0][0] == 'A') {retorne 'A'}

			senao se (m[1][0] == '1' e m[1][1] == '1'e m[1][2] == 'F') {retorne 'F'}    // trata linha
			senao se (m[1][0] == '1' e m[1][2] == '1'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '1' e m[1][2] == '1'e m[1][0] == 'D') {retorne 'D'}
			
			senao se (m[0][1] == '1' e m[1][1] == '1'e m[2][1] == 'H') {retorne 'H'}// trata coluna
			senao se (m[0][1] == '1' e m[2][1] == '1'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '1' e m[2][1] == '1'e m[0][1] == 'B') {retorne 'B'}

			senao se (m[2][0] == '1' e m[2][1] == '1'e m[2][2] == 'I') {retorne 'I'}    // trata linha
			senao se (m[2][0] == '1' e m[2][2] == '1'e m[2][1] == 'H') {retorne 'H'}
			senao se (m[2][1] == '1' e m[2][2] == '1'e m[2][0] == 'G') {retorne 'G'}
			
			senao se (m[0][2] == '1' e m[1][2] == '1'e m[2][2] == 'I') {retorne 'I'}// trata coluna
			senao se (m[0][2] == '1' e m[2][2] == '1'e m[1][2] == 'F') {retorne 'F'}
			senao se (m[1][2] == '1' e m[2][2] == '1'e m[0][2] == 'C') {retorne 'C'}

			senao se (m[0][0] == '1' e m[1][1] == '1'e m[2][2] == 'I') {retorne 'I'}// trata vertical
			senao se (m[0][0] == '1' e m[2][2] == '1'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '1' e m[2][2] == '1'e m[0][0] == 'A') {retorne 'A'}

			senao se (m[0][2] == '1' e m[1][1] == '1'e m[0][2] == 'G') {retorne 'G'}// trata coluna
			senao se (m[0][2] == '1' e m[2][0] == '1'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '1' e m[2][0] == '1'e m[2][0] == 'C') {retorne 'C'}
			
		     senao {retorne 'X'}			
		
	}

	funcao caracter ataca(caracter m[][]){
			se (m[0][0] == '2' e m[0][1] == '2'e m[0][2] == 'C') {retorne 'C'}    // trata linha
			senao se (m[0][0] == '2' e m[0][2] == '2'e m[0][1] == 'B') {retorne 'B'}
			senao se (m[0][1] == '2' e m[0][2] == '2'e m[0][0] == 'A') {retorne 'A'}
			
			senao se (m[0][0] == '2' e m[1][0] == '2'e m[2][0] == 'G') {retorne 'G'}// trata coluna
			senao se (m[0][0] == '2' e m[2][0] == '2'e m[0][1] == 'D') {retorne 'D'}
			senao se (m[1][0] == '2' e m[2][0] == '2'e m[0][0] == 'A') {retorne 'A'}

			senao se (m[1][0] == '2' e m[1][1] == '2'e m[1][2] == 'F') {retorne 'F'}    // trata linha
			senao se (m[1][0] == '2' e m[1][2] == '2'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '2' e m[1][2] == '2'e m[0][1] == 'D') {retorne 'D'}
			
			senao se (m[0][1] == '2' e m[1][1] == '2'e m[2][1] == 'H') {retorne 'H'}// trata coluna
			senao se (m[0][1] == '2' e m[2][1] == '2'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '2' e m[2][1] == '2'e m[0][1] == 'B') {retorne 'B'}

			senao se (m[2][0] == '2' e m[2][1] == '2'e m[2][2] == 'I') {retorne 'I'}    // trata linha
			senao se (m[2][0] == '2' e m[2][2] == '2'e m[2][1] == 'H') {retorne 'H'}
			senao se (m[2][1] == '2' e m[2][2] == '2'e m[2][0] == 'G') {retorne 'G'}
			
			senao se (m[0][2] == '2' e m[1][2] == '2'e m[2][2] == 'I') {retorne 'I'}// trata coluna
			senao se (m[0][2] == '2' e m[2][2] == '2'e m[1][2] == 'F') {retorne 'F'}
			senao se (m[1][2] == '2' e m[2][2] == '2'e m[0][2] == 'C') {retorne 'C'}
			
			senao se (m[0][0] == '2' e m[1][1] == '2'e m[2][2] == 'I') {retorne 'I'}// trata vertical
			senao se (m[0][0] == '2' e m[2][2] == '2'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '2' e m[2][2] == '2'e m[0][0] == 'A') {retorne 'A'}

			senao se (m[0][2] == '2' e m[1][1] == '2'e m[2][0] == 'G') {retorne 'G'}// trata vertical
			senao se (m[0][2] == '2' e m[2][0] == '2'e m[1][1] == 'E') {retorne 'E'}
			senao se (m[1][1] == '2' e m[2][0] == '2'e m[0][2] == 'C') {retorne 'C'}			
		     senao {retorne 'X'}
			
		
	}
	
	funcao caracter continua(inteiro jogada,caracter m[][]){
		inteiro i
		i = Util.sorteia(1,9)
		se (jogada == 1) {
			se (m[1][1]=='E') {retorne('E')}
			senao se (m[2][0]=='G') {retorne('G')}
			senao se (m[2][2]=='I') {retorne('I')}
			senao se (m[0][2]=='C') {retorne('C')}
			senao se (m[0][0]=='A') {retorne('A')}
			senao se (m[0][1]=='B') {retorne('B')}
			senao se (m[1][0]=='D') {retorne('D')}
			senao se (m[1][2]=='F') {retorne('F')}
			senao {retorne('H')}
			}
		senao se (jogada == 0) {
			se (i==1) {retorne 'A'}
			senao se (i==2) {retorne 'A'}
			senao se (i==3) {retorne 'B'}
			senao se (i==4) {retorne 'C'}
			senao se (i==5) {retorne 'D'}
			senao se (i==6) {retorne 'E'}
			senao se (i==7) {retorne 'F'}
			senao se (i==8) {retorne 'G'}
			retorne 'H'}
		senao {			
			se       (m[0][0] == '2' e m[0][1] == 'B' e m[0][2] == 'C') {retorne 'C'}    // trata linha
			senao se (m[0][0] == 'A' e m[0][1] == '2' e m[0][2] == 'C') {retorne 'A'}
			senao se (m[0][0] == 'A' e m[0][1] == 'B' e m[0][2] == '2') {retorne 'A'}
			
			senao se (m[1][0] == '2' e m[1][1] == 'E' e m[1][2] == 'F') {retorne 'F'}// trata coluna
			senao se (m[1][0] == 'D' e m[1][1] == '2' e m[1][2] == 'F') {retorne 'D'}
			senao se (m[1][0] == 'D' e m[1][1] == 'E' e m[1][2] == '2') {retorne 'D'}

			senao se (m[2][0] == '2' e m[2][1] == 'H' e m[2][2] == 'I') {retorne 'I'}    // trata linha
			senao se (m[2][0] == 'G' e m[2][1] == '2' e m[2][2] == 'I') {retorne 'G'}
			senao se (m[2][0] == 'G' e m[2][1] == 'H' e m[2][2] == 'C') {retorne 'G'}
			
			senao se (m[0][0] == '2' e m[1][0] == 'D' e m[2][0] == 'G') {retorne 'G'}    // trata linha
			senao se (m[0][0] == 'A' e m[1][0] == '2' e m[2][0] == 'G') {retorne 'A'}
			senao se (m[0][0] == 'A' e m[1][0] == 'D' e m[2][0] == '2') {retorne 'A'}

			senao se (m[0][1] == '2' e m[1][1] == 'E' e m[2][1] == 'H') {retorne 'H'}    // trata linha
			senao se (m[0][1] == 'B' e m[1][1] == '2' e m[2][1] == 'H') {retorne 'B'}
			senao se (m[0][1] == 'B' e m[1][1] == 'E' e m[2][1] == '2') {retorne 'B'}
			
			senao se (m[0][2] == '2' e m[1][2] == 'F' e m[2][2] == 'I') {retorne 'I'}    // trata linha
			senao se (m[0][2] == 'C' e m[1][2] == '2' e m[2][2] == 'I') {retorne 'C'}
			senao se (m[0][2] == 'C' e m[1][2] == 'F' e m[2][2] == '2') {retorne 'C'}
			
			senao se (m[0][0] == '2' e m[1][1] == 'E' e m[2][2] == 'I') {retorne 'E'}    // trata VERTICAL
			senao se (m[0][0] == 'A' e m[1][1] == '2' e m[2][2] == 'I') {retorne 'A'}
			senao se (m[0][0] == 'A' e m[1][1] == 'E' e m[2][2] == '2') {retorne 'A'}

			senao se (m[2][0] == '2' e m[1][1] == 'E' e m[0][2] == 'G') {retorne 'E'}    // trata VERTICAL
			senao se (m[2][0] == 'G' e m[1][1] == '2' e m[0][2] == 'G') {retorne 'G'}
			senao se (m[2][0] == 'G' e m[1][1] == 'E' e m[0][2] == '2') {retorne 'G'}
			senao {
				para (inteiro a = 0; a < 3; a++){
					para (inteiro b = 0; b < 3; b++){
						se (m[a][b] != '1' e m[a][b]!= '2') {retorne m[a][b]}
					}
				}
				retorne 'X'						    
			}
		}
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
 * @POSICAO-CURSOR = 10989; 
 * @DOBRAMENTO-CODIGO = [34, 103, 113, 125, 133, 170, 274];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */