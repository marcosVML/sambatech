# language: pt

@unitario

Funcionalidade: Alugar Filme 
	Como um usuario 
	Eu quero cadastrar alugueis de filmes
	Para controlar preços e datas de entrega
	
Cenário: Deve alugar um filme com sucesso
	Dado um filme 
		|estoque | 2 |
		|preço   | 3 |	

	Quando alugar
	Então o preço do aluguel sera R$ 3
	E a data de entrega sera em 1 dias
	E o estoque do filme sera 1 unidade 
	
Cenário: Não deve alugar filme sem estoque
	Dado um filme com stoque de 0 unidades
	Quando alugar
	Então não sera possivel por falta de estoque
		E o estoque do filme sera 0 unidade

Esquema do Cenario: Deve dar condições conforme tipo de aluguel
	Dado um filme com stoque de 2 unidades
		E que o preço de aluguel seja R$ <preco>
		E que o tipo do aluguel seja <tipo>
	Quando alugar
	Então o preço do aluguel sera R$ <valor>
		E a data de entrega sera em <qtdDias> dias
		E a pontuação recebida sera <pontuacao> pontos

Exemplos:
	| preco | tipo      | valor | qtdDias | pontuacao |
	| 4     | extendido | 8     | 3	      | 2         |
	| 4     | comum     | 4     | 1 	    | 1         |
	| 5 	  | semanal		| 15    | 7       | 3					|
