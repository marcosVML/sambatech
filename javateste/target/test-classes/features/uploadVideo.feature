#language: pt

Funcionalidade: Upload de video
    Sendo um usuário do sistema http://web1.qa.sambatech.com:10000/auth/login
    Posso execultar um upload de video
    Para disponibiliza-los aos meus clientes

Contexto: Acesso a página de upload
   * Usuario logado acessa a pagina de conteudo

Cenario: Realizando download do video carregado

    Dado que eu tenha um video carregado na minha plataforma
    Quando realizo o download do video clicando em Download Raw
    Então o sistema realiza o download do arquivo para a minha maquina 