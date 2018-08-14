# language:pt

@Funcionais
Funcionalidade: Inserir conta
  Como um usuário
  Eu quero cadastrar contas
  Para poder distribuir meu dinheiro de uma forma mais organizada


	Contexto: 
		Dado que estou acessando a aplicação
    Quando informo o usuairo "saba@gmail.com"
    	E a senha "123"
    	E seleciono entrar
    Então visualizo a pagina inicial
		Quando seleciono conta
			E seleciono Adicionar
	
  Esquema do Cenário: Deve validar regra de cadastros
			E informo a conta "<conta>"
			E seleciono salvar
		Então recebo a "<mensagem>"

	Exemplos:
	| conta 			     | mensagem 										      |
	| conta de teste   | Conta adicionada com sucesso!      |
	|                	 | Informe o nome da conta            |
	| Conta mesmo nome | Já existe uma conta com esse nome! |
