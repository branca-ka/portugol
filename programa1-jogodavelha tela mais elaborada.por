programa
{	
	inclua biblioteca Util -->u
	inclua biblioteca Graficos --> g 
	inclua biblioteca Mouse --> m
	funcao inicio()
	{
		
     	//g.limpar()
		//g.renderizar()
		// declara variaveis
	 	cadeia jogador = "1"
	 	cadeia endereco = " "
	 	cadeia ganhador = "X"
	 	//variaveis do tabuleiro
	 	cadeia posA = "A"   	 	cadeia posB = "B"     	 	cadeia posC = "C"
	 	cadeia posD = "D"			cadeia posE = "E"			cadeia posF = "F"
	 	cadeia posG = "G"			cadeia posH = "H"			cadeia posI = "I"	 
          // inicia programa
          tela(posA, posB, posC, posD, posE, posF, posG, posH, posI, jogador, endereco)
          para (inteiro jogada = 1;jogada <10; jogada++) {
			limpa()
			endereco = leiaendereco()
			/// fazer atribuição não permitindo que o jogador sobreponha uma jogada anterior
			se ((endereco == "A" ou endereco == "a") e (posA =="A")) {posA = jogador}
			senao se ((endereco == "B" ou endereco == "b") e (posB =="B")) {posB = jogador}
			senao se ((endereco == "C" ou endereco == "c") e (posC =="C")) {posC = jogador}
			senao se ((endereco == "D" ou endereco == "d") e (posD =="D")) {posD = jogador}
			senao se ((endereco == "E" ou endereco == "e") e (posE =="E")) {posE = jogador}
			senao se ((endereco == "F" ou endereco == "f") e (posF =="F")) {posF = jogador}
			senao se ((endereco == "G" ou endereco == "g") e (posG =="G")) {posG = jogador}
			senao se ((endereco == "H" ou endereco == "h") e (posH =="H")) {posH = jogador}
			senao se ((endereco == "I" ou endereco == "i") e (posI =="I")) {posI = jogador}	
			senao {endereco = "N"
			       jogada--
			       Util.aguarde(500)}
	          // verifica se algum jogodor ganhou
               ganhador = vencedor(posA, posB, posC, posD, posE, posF, posG, posH, posI)
	          se (ganhador!= "X") {
	          	jogada = 10
	          }	          	                    
	          // alterna jogador
	          se(jogador == "1" e endereco != "N") {jogador = "2"}
	          senao se (jogador == "2" e endereco != "N") {jogador = "1"}
   			tela(posA, posB, posC, posD, posE, posF, posG, posH, posI,jogador, endereco)
		}
		telafinal(posA, posB, posC, posD, posE, posF, posG, posH, posI,ganhador)        
		u.aguarde(3000)  
	}
     funcao cadeia leiaendereco(){
       m.exibir_cursor()
       inteiro a, b
       a = m.posicao_x()
       b = m.posicao_y()
       u.aguarde(3000)
       //enquanto (m.BOTAO_DIREITO==0){
       se (m.posicao_x()>=100 e m.posicao_x()<237 e m.posicao_y()>=108 e m.posicao_y() <220 e m.BOTAO_DIREITO==1 )
          {retorne "A"}
       senao se (m.posicao_x()>=100 e m.posicao_x()<237 e m.posicao_y()>=221 e m.posicao_y() <336 e m.BOTAO_DIREITO==1 )
          {retorne "D"}
       senao se (m.posicao_x()>=100 e m.posicao_x()<237 e m.posicao_y()>=337 e m.posicao_y() <459 e m.BOTAO_DIREITO==1 )
          {retorne "G"}
       senao se (m.posicao_x()>=238 e m.posicao_x()<426 e m.posicao_y()>=108 e m.posicao_y() <220 e m.BOTAO_DIREITO==1 )
          {retorne "B"}
       senao se (m.posicao_x()>=238 e m.posicao_x()<426 e m.posicao_y()>=221 e m.posicao_y() <336 e m.BOTAO_DIREITO==1 )
          {retorne "E"}
       senao se (m.posicao_x()>=238 e m.posicao_x()<426 e m.posicao_y()>=337 e m.posicao_y() <459 e m.BOTAO_DIREITO==1 )
          {retorne "H"}               
       senao se (m.posicao_x()>=427 e m.posicao_x()<600 e m.posicao_y()>=108 e m.posicao_y() <220 e m.BOTAO_DIREITO==1 )
          {retorne "c"}
       senao se (m.posicao_x()>=427 e m.posicao_x()<600 e m.posicao_y()>=221 e m.posicao_y() <336 e m.BOTAO_DIREITO==1 )
          {retorne "F"}
       senao se (m.posicao_x()>=427 e m.posicao_x()<600 e m.posicao_y()>=337 e m.posicao_y() <459 e m.BOTAO_DIREITO==1 )
          {retorne "I"}
  	  senao {retorne "X"}     
     }
	funcao tabuleiro(cadeia posA, cadeia posB, cadeia posC, cadeia posD, cadeia posE, cadeia posF, 
				  cadeia posG, cadeia posH, cadeia posI) {
		escreva("     ------------------------\n")	
		escreva("          ",posA,"  |  ",posB,"  |  ",posC," \n")
		escreva("     ------------------------\n")
		escreva("          ",posD,"  |  ",posE,"  |  ",posF," \n")
		escreva("     ------------------------\n")		
		escreva("          ",posG,"  |  ",posH,"  |  ",posI," \n")
		escreva("     -----------------------\n")
	}

	funcao cadeia vencedor(cadeia posA, cadeia posB, cadeia posC, cadeia posD, cadeia posE, cadeia posF, 
				      cadeia posG, cadeia posH, cadeia posI) {
		se (posA == posB e posB == posC){retorne posA}  // horizontal
		senao se (posD == posE e posE == posF){retorne posD} //horizontal
		senao se (posG == posH e posH == posI){retorne posG} //horizontal
		senao se (posA == posD e posD == posG){retorne posA} //vertical
		senao se (posB == posE e posE == posH){retorne posB} //vertical
		senao se (posC == posF e posF == posI){retorne posC} //vertical
		senao se (posA == posE e posE == posI){retorne posA} //diagonal
		senao se (posC == posE e posE == posG){retorne posC} //diagonal		
		senao {retorne "X"}		      	
	}	
	funcao tela(cadeia posA, cadeia posB, cadeia posC, cadeia posD, cadeia posE, 
			  cadeia posF,cadeia posG, cadeia posH, cadeia posI, cadeia jogador, cadeia endereco) {
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(700, 500)
		g.definir_titulo_janela("Jogo da Velha - Proformar")
		g.definir_cor(g.COR_BRANCO)
		g.iniciar_modo_grafico(verdadeiro)
		g.desenhar_linha(100, 220, 600, 220)
		g.desenhar_linha(100, 350, 600, 350)
		g.desenhar_linha(240, 100, 240, 480)
		g.desenhar_linha(430, 100, 430, 480)	  	
		g.definir_estilo_texto(falso, verdadeiro, falso)
		g.definir_tamanho_texto(20)
		g.desenhar_texto(195, 8, "Bem  vindo  ao  jogo  da  velha")
		g.definir_cor(-65536)
		g.desenhar_texto(170, 29, "Por favor jogador " +jogador + " escolha o local")   
		g.definir_cor(-1)
          g.desenhar_texto(120, 50, "Escolha o local onde irá colocar o seu numero.")
          g.desenhar_texto(195, 70, "Para isso digite seu endereço.") 
          g.definir_tamanho_texto(50)
          g.desenhar_texto(150, 150, posA)
          g.desenhar_texto(320, 150, posB)
          g.desenhar_texto(500, 150, posC)
          g.desenhar_texto(150, 260, posD)
          g.desenhar_texto(320, 260, posE)
          g.desenhar_texto(500, 260, posF)
          g.desenhar_texto(150, 370, posG)
          g.desenhar_texto(320, 370, posH)
          g.desenhar_texto(500, 370, posI)  
          se (endereco == "N") {
              g.definir_tamanho_texto(20)
              g.definir_estilo_texto(falso, verdadeiro, falso)
              g.definir_cor(-65536)
              g.desenhar_texto(120, 450,"  Atenção!!! Endereço inválido ou já escolhido!!  ")     
          }
          g.renderizar()			      
	}
	funcao telafinal(cadeia posA, cadeia posB, cadeia posC, cadeia posD, cadeia posE, 
			  cadeia posF,cadeia posG, cadeia posH, cadeia posI, cadeia jogador) {
          g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(700, 500)
		g.definir_titulo_janela("Jogo da Velha - Proformar")
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_linha(100, 220, 600, 220)
		g.desenhar_linha(100, 350, 600, 350)
		g.desenhar_linha(240, 100, 240, 460)
		g.desenhar_linha(430, 100, 430, 460)	  	
		g.definir_estilo_texto(falso, verdadeiro, falso)
		g.definir_tamanho_texto(20)
		g.desenhar_texto(195, 10, "Bem vindo ao jogo da velha")
		//g.desenhar_texto(165, 30, "Por favor "+ jogador + " escolha o local")    
          g.desenhar_texto(120, 50, "O jogo chegou ao final e teve um vencendor!!!!")
          //g.desenhar_texto(195, 70, "Para isso digite seu endereço.") 
          g.definir_tamanho_texto(50)
          g.desenhar_texto(150, 150, posA)
          g.desenhar_texto(320, 150, posB)
          g.desenhar_texto(500, 150, posC)
          g.desenhar_texto(150, 260, posD)
          g.desenhar_texto(320, 260, posE)
          g.desenhar_texto(500, 260, posF)
          g.desenhar_texto(150, 370, posG)
          g.desenhar_texto(320, 370, posH)
          g.desenhar_texto(500, 370, posI)
          g.definir_tamanho_texto(20)
          g.definir_estilo_texto(falso, verdadeiro, falso)
          g.definir_cor(-65536)
          se (jogador != "X") {
          	g.desenhar_texto(195, 470,"O jogador " +  jogador + " ganhou!!   Parabéns!!!   ")} 
          senao {
          	g.desenhar_texto(22, 470,"NÃO HOUVE GANHADOR!! PARABÉNS PARA OS 2 JOGADORES!!!!")} 
          g.renderizar()	
          		      
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8271; 
 * @DOBRAMENTO-CODIGO = [49, 77, 88];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */