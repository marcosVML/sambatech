#language: pt

Funcionalidade: Criar video campanha 
    Sendo um usuário do sistema http://web1.qa.sambatech.com:10000/auth/login
    Posso acessar a funcionalidade de monetização
    Para criar videos campanha 

Contexto: Acesso a página monetização
   * Usuario logado acessa menu monetização

Cenario: criar uma campanha 

    Dado que eu tenha um video de ate 30s 
    Quando carrego este video na funcionalidade campanha 
        E preencho todas as informações adicionais
    Então consigo criar a campanha com links direcionados para minhas webpaginas
        E consigo visualizar a monetização desta campanha

Cenario: tentar criar campanha um formato de arquivo não suportavel 

    Dado que eu tenha um arquivo .pdf 
    Quando carrego este video na funcionalidade campanha 
    Então o sistema retorna a mensagem informando que o tipo de arquivo não e suportavel