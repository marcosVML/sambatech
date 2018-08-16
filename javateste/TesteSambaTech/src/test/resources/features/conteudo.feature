#language: pt

Funcionalidade: Conteudo de video
    Sendo um usuário do sistema http://web1.qa.sambatech.com:10000/auth/login
    Posso execultar um download
    Para salvar na minha maquina

Contexto: Acesso a página de upload
    Dado que eu acesso a aplicação
    Quando informo o usuario "avaliacao_qa_samba@sambatech.com.br"
    	E a senha "123456789"
    Então seleciono entrar

Cenario: Realizando download do video carregado

    Dado que acesso o menu conteudo
    	E possua um video carregado
    Quando realizo o download do video clicando em Download Raw
    Então o sistema realiza o download do arquivo para a minha maquina