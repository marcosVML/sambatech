#language:pt

Funcionalidade: Pesquisa de voos
    Como cliente da MaxMilhas
    Gostaria de realizar uma pesquisa de voos a partir da página inicial da MaxMilhas

    Criterios de aceitação
        - Preenchimento dos campos obrigatórios;
        - Seleção de mais de um passageiro;
        - Seleção de uma classe de voo;
        - Na tela de resultados de voo, realizar o refinamento da busca através de algum dos filtros disponíveis.


Cenario: Pesquisar um voo especifico
    
    Dado que eu tenha que viajar de "Belo Horizonte" para "São Paulo" no dia 28 de julho com meu filho e minha esposa.
    Quando realizo a busca por voo
    Então Consigo visualizar a lista de voos
        E consigo aplicar um filtros adicionais

