#language: pt

Funcionalidade: Upload de video
    Sendo um usuário do sistema http://web1.qa.sambatech.com:10000/auth/login
    Posso execultar um upload de video
    Para disponibiliza-los aos meus clientes

Contexto: Acesso a página de upload
   * Usuario logado acessa a pagina de upload de video

Cenario: Realizar um upload com sucesso

    Dado que eu tenha o video "teste.mp4" 
    Quando faço o upload desse video para minha conta
    Então consigo vizualiza-lo na lista de videos
        E posso disponibilizado para meus clientes.

Cenario: Upload de arquivo não suportado pela plataforma

    Dado que eu tenha o video "teste.bin" 
    Quando faço o upload desse video para minha conta
    Então o sistema retorna uma mensagem de erro
        E o video não aparece na minha listagem de videos.  