#language: pt

Funcionalidade: Login
    Sendo um usuário
    Posso logar no http://web1.qa.sambatech.com:10000/auth/login
    Para ultilizar a funcionalides do sistema

Cenario: Usuario faz login
    Dado que eu acesso a aplicação
    Quando informo o usuario "avaliacao_qa_samba@sambatech.com.br"
    	E a senha "123456789"
    	E seleciono entrar
    Então vejo o painel

    
Esquema do Cenario: Tentativa de login
    Dado que eu acesso a aplicação
    Quando informo o usuario <email> 
    	E a senha <senha>
    	E seleciono entrar
    Então vejo a mensagem <msg>
    
    Exemplos:
        | email                                 | senha       | msg                                     |
        | "avaliacao_qa_samba@sambatech.com.br" | " "         | "Email ou senha incorretos. Saiba Mais" |
        | " "                                   | "123456789" | "Email ou senha incorretos. Saiba Mais" |
        | " "                                   | " "         | "Email ou senha incorretos. Saiba Mais" |
        | "marcos.vmlopes@gmail.com"            | "12345678 " | "Email ou senha incorretos. Saiba Mais" |