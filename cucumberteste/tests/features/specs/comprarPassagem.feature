#language:pt

Funcionalidade: Comprar uma passagem por transferencia bancaria
    Como cliente da MaxMilhas
    Gostaria de realizar um compra de uma passagem nacional através de transferência bancária
    Para poder realizar uma viagem tranquila

    Criterios de aceitação
        - Usuario deve esta cadastrado e logado no site da MaxMilhas para efetuar compra de passagem
        - Usuario deve ter as informações de local de "origem/destino", "data da ida", "passageiro e classe de voo" para realizar 
        a pesquisa por passagens.
        - Usuario deve respeita os criterios de pesquisa como "1 passagem de bebe por pessoa", "minimo 1 passagem de adulto", "maximo 9 
        passagens no total".
        - Usuario deve respeitar o tempo de seção da compra para finalização, caso esse tempo expire, o processo de compra e reiniciado.
        - Usuaario deve reponder "sim" para confirmação da compra

Cenario: Comprar passagem
    * usario "passageiro" deve esta cadastrado e logado no site da MaxMilhas

    Dado que eu tenha as informações de "origem/destino", "data da ida" e "passageiro e classe de voo"
    Quando realizo a busca por voo
        E seleciono o melhor voo para o meu perfil
        E preencho as informações adicionais
    Então Consigo selecionar a forma de pagamento como transferencia bancaria 
       E vejo o codigo de compra do voo

 
@melhorias
    Durante a tela de pequisa, poderia ter um filtro de despacho com as opções por exemplo "Apenas bagagem de mão incluída",
    "Despacho gratuito de bagagem comprando com a MaxMilhas" ou "Regras de bagagem no site da companhia", para que o usuario 
    possa selecionar a melhor opção que lhe convem.


@bugs
    Funcionalidade "Detalhes do voo" não esta funionando, ao clicar sobre a pagina apresenta o rodape do site.
    Passos para reprodução do erro.
        Acesse o sistema https://www-qa.maxmilhas.com.br.
        Efetue uma busca de voos inserindo as informações de origem Belo Horizonte e destino Rio de Janeiro e a data de ida dia 28/06/2018
        O sistema exibe uma lista de possiveis voos a serem escolhidos.
        Aplique um filtro para passagens apensa da AZUL
        Selecione o voo AZUL AD2550 das 06:25 CNF.
        Clique sobre "Detalhes do voo" e observe o erro ocorrer.
    
    Funcionalidade de "comprar ida por X" apresentando retorno vazio pela API em alguns casos.
    Passos para reprodução do erro.
        Acesse o sistema https://www-qa.maxmilhas.com.br.
        Efetue uma busca de voos inserindo as informações de viagem
        O sistema exibe uma lista de possiveis voos a serem escolhidos.
        Clique em "preço" para efetuar uma ordenação por preço.
        Logo apos clique na funcionalidade "comprar ida por X" e observe que a pagina exibe o rodape do site.
        Ao observa o log do navegador, todas a chamadas para a API retornaram codigo 200 normal porem todos os retornos foram vazios.

    Funcionalidade de finalização da compra esta redirecionado o usuario para um pagina de codigos ao clicar em "clique aqui" 
    na descrção de cancelamento ou remarcação.
    Passos para reprodução do erro.
        Acesse o sistema https://www-qa.maxmilhas.com.br.
        Efetue uma busca de voos inserindo as informações de origem Belo Horizonte e destino Rio de Janeiro e a data de ida dia 28/06/2018
        O sistema exibe uma lista de possiveis voos a serem escolhidos.
        Aplique um filtro para passagens apensa da AVIAÇÂO
        Selecione o voo AVIANCA O66149 das 15:05 CNF.
        Clique sobre "comprar ida por X" e logo apos clique em "comprar no site maxmilhas".
        Preencha os dados do passageiro e confirme os dados
        Selecione o meio de pagamento como transferencia bancaria
        Logo apo clique em "Clique aqui " pressente no texto de cancelamento.
        Observe o erro.
        
