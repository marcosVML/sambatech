#language: pt

Funcionalidade: Upload de video
    Sendo um usuário do sistema http://web1.qa.sambatech.com:10000/auth/login
    Posso execultar um upload de video
    Para disponibiliza-los aos meus clientes

Contexto: Acesso a página de upload
   * Usuario logado acessa a pagina de upload de video

Cenario: Realizar um upload com sucesso

    Dado que eu tenha um arquivo suportavel pela plataforma 
    Quando faço o upload desse video para minha conta
    Então consigo vizualiza-lo na lista de conteudos
        E posso disponibilizado para meus clientes.

Cenario: Upload de arquivo não suportado pela plataforma

    Dado que eu tenha o arquivo "teste.bin" 
    Quando faço o upload desse arquivo para minha conta
    Então o sistema retorna uma mensagem de erro
        E o arquivo não aparece na minha listagem de conteudo.  

Cenario: Realizando download do video carregado

    Dado que eu tenha um arquivo carregado na minha plataforma
    Quando acessa o funcionalidade de conteudo
        E clico em "Download Raw"
    Então o sistema realiza o download do arquivo para a minha maquina 
