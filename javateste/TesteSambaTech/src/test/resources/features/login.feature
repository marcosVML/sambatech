#language: pt

Funcionalidade: Login
    Sendo um usuário
    Posso logar no http://web1.qa.sambatech.com:10000/auth/login
    Para ultilizar a funcionalides do sistema
            
Esquema do Cenario: Tentativa de login
    Dado informo o usuario <email> 
        E a senha <senha>
    Quando seleciono entrar
    Então vejo a mensagem <msg>

    Exemplos:
        | email                                 | senha       | msg                                       |
        | "avaliacao_qa_samba@sambatech.com.br" | " "         | "Incorrect email or password. Learn more" |
        | " "                                   | "123456789" | "Incorrect email or password. Learn more" |
        | " "                                   | " "         | "Incorrect email or password. Learn more" |
        | "marcos.vmlopes@gmail.com"            | "12345678 " | "Incorrect email or password. Learn more" |

#Cenario: Usuario faz login
    #Dado que eu acesso a aplicação
    #Quando informo o usuario "avaliacao_qa_samba@sambatech.com.br"
    #	E a senha "123456789"
    #	E seleciono entrar
    #Então vejo o painel
  #

