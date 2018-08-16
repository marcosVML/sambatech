#language: pt

Funcionalidade: Login
    Sendo um usuário
    Posso logar no http://web1.qa.sambatech.com:10000/auth/login
    Para ultilizar a funcionalides do sistema
        
#Cenarios validos        
Cenario: Acesso a pagina login
    * acessa a pagina login

@logout
Cenario: Usuario faz login
    Dado que eu tenho um usuário "teste"
    Quando faço login
    Então vejo o painel


#Cenarios invalidos    

Esquema do Cenario: Tentativa de login
    Dado que eu tenho o usuário <email> e <senha>
    Quando faço login
    Então vejo a mensagem <msg>

    Exemplos:
        | email                                 | senha       | msg                                       |
        | "avaliacao_qa_samba@sambatech.com.br" | " "         | "Incorrect email or password. Learn more" |
        | " "                                   | "123456789" | "Incorrect email or password. Learn more" |
        | " "                                   | " "         | "Incorrect email or password. Learn more" |
        | "marcos.vmlopes@gmail.com"            | "12345678 " | "Incorrect email or password. Learn more" |