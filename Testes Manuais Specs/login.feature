#language: pt

Funcionalidade: Login
    Sendo um usuário
    Posso logar no http://web1.qa.sambatech.com:10000/auth/login
    Para ultilizar a funcionalides do sistema
        
#Cenarios validos        
Cenario: Acesso 
    * acessa a pagina login

@logout
Cenario: Usuario faz login
    Dado que eu tenho um usuário:
        | email | avaliacao_qa_samba@sambatech.com.br|
        | senha | 123456789                          |
    Quando faço login
    Então vejo o painel 
        E o texto "aa $$$ 123"


#Cenarios invalidos    

Esquema do Cenario: Tentativa de login
    Dado que eu tenho o usuario <email> e <senha>
    Quando faço login
    Então vejo a mensagem <msg>

    Exemplos:
        | email                                 | senha       | msg                                     |
        | "avaliacao_qa_samba@sambatech.com.br" | " "         | "Email ou senha incorretos. Saiba Mais" |
        | " "                                   | "123456789" | "Email ou senha incorretos. Saiba Mais" |
        | " "                                   | " "         | "Email ou senha incorretos. Saiba Mais" |
        | "marcos.vmlopes@gmail.com"            | "12345678 " | "Email ou senha incorretos. Saiba Mais" |