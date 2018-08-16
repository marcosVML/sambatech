#language: pt

Funcionalidade: Conteudo de video
    Sendo um usuário do sistema http://web1.qa.sambatech.com:10000/auth/login
    Posso execultar um download
    Para salvar na minha maquina

Contexto: Acesso a página de upload
   * Usuario logado acessa a pagina de conteudo

Cenario: Realizando download do video carregado

    Dado que eu tenha um video carregado na minha plataforma
    Quando realizo o download do video clicando em Download Raw
    Então o sistema realiza o download do arquivo para a minha maquina 