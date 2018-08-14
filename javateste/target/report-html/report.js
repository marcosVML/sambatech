$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("inserir_conta.feature");
formatter.feature({
  "comments": [
    {
      "line": 1,
      "value": "# language:pt"
    }
  ],
  "line": 4,
  "name": "Inserir conta",
  "description": "Como um usuário\r\nEu quero cadastrar contas\r\nPara poder distribuir meu dinheiro de uma forma mais organizada",
  "id": "inserir-conta",
  "keyword": "Funcionalidade",
  "tags": [
    {
      "line": 3,
      "name": "@Funcionais"
    }
  ]
});
formatter.scenarioOutline({
  "line": 19,
  "name": "Deve validar regra de cadastros",
  "description": "",
  "id": "inserir-conta;deve-validar-regra-de-cadastros",
  "type": "scenario_outline",
  "keyword": "Esquema do Cenário"
});
formatter.step({
  "line": 20,
  "name": "informo a conta \"\u003cconta\u003e\"",
  "keyword": "E "
});
formatter.step({
  "line": 21,
  "name": "seleciono salvar",
  "keyword": "E "
});
formatter.step({
  "line": 22,
  "name": "recebo a \"\u003cmensagem\u003e\"",
  "keyword": "Então "
});
formatter.examples({
  "line": 24,
  "name": "",
  "description": "",
  "id": "inserir-conta;deve-validar-regra-de-cadastros;",
  "rows": [
    {
      "cells": [
        "conta",
        "mensagem"
      ],
      "line": 25,
      "id": "inserir-conta;deve-validar-regra-de-cadastros;;1"
    },
    {
      "cells": [
        "conta de teste",
        "Conta adicionada com sucesso!"
      ],
      "line": 26,
      "id": "inserir-conta;deve-validar-regra-de-cadastros;;2"
    },
    {
      "cells": [
        "",
        "Informe o nome da conta"
      ],
      "line": 27,
      "id": "inserir-conta;deve-validar-regra-de-cadastros;;3"
    },
    {
      "cells": [
        "Conta mesmo nome",
        "Já existe uma conta com esse nome!"
      ],
      "line": 28,
      "id": "inserir-conta;deve-validar-regra-de-cadastros;;4"
    }
  ],
  "keyword": "Exemplos"
});
formatter.background({
  "line": 10,
  "name": "",
  "description": "",
  "type": "background",
  "keyword": "Contexto"
});
formatter.step({
  "line": 11,
  "name": "que estou acessando a aplicação",
  "keyword": "Dado "
});
formatter.step({
  "line": 12,
  "name": "informo o usuairo \"saba@gmail.com\"",
  "keyword": "Quando "
});
formatter.step({
  "line": 13,
  "name": "a senha \"123\"",
  "keyword": "E "
});
formatter.step({
  "line": 14,
  "name": "seleciono entrar",
  "keyword": "E "
});
formatter.step({
  "line": 15,
  "name": "visualizo a pagina inicial",
  "keyword": "Então "
});
formatter.step({
  "line": 16,
  "name": "seleciono conta",
  "keyword": "Quando "
});
formatter.step({
  "line": 17,
  "name": "seleciono Adicionar",
  "keyword": "E "
});
formatter.match({
  "location": "InserirContasSteps.queEstouAcessandoAAplicação()"
});
formatter.result({
  "duration": 1055010737,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "saba@gmail.com",
      "offset": 19
    }
  ],
  "location": "InserirContasSteps.informoOUsuairo(String)"
});
formatter.result({
  "duration": 90756834,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "123",
      "offset": 9
    }
  ],
  "location": "InserirContasSteps.aSenha(String)"
});
formatter.result({
  "duration": 53774573,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoEntrar()"
});
formatter.result({
  "duration": 638041324,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.visualizoAPaginaInicial()"
});
formatter.result({
  "duration": 43922165,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoConta()"
});
formatter.result({
  "duration": 62273208,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoAdicionar()"
});
formatter.result({
  "duration": 280340987,
  "status": "passed"
});
formatter.scenario({
  "line": 26,
  "name": "Deve validar regra de cadastros",
  "description": "",
  "id": "inserir-conta;deve-validar-regra-de-cadastros;;2",
  "type": "scenario",
  "keyword": "Esquema do Cenário",
  "tags": [
    {
      "line": 3,
      "name": "@Funcionais"
    }
  ]
});
formatter.step({
  "line": 20,
  "name": "informo a conta \"conta de teste\"",
  "matchedColumns": [
    0
  ],
  "keyword": "E "
});
formatter.step({
  "line": 21,
  "name": "seleciono salvar",
  "keyword": "E "
});
formatter.step({
  "line": 22,
  "name": "recebo a \"Conta adicionada com sucesso!\"",
  "matchedColumns": [
    1
  ],
  "keyword": "Então "
});
formatter.match({
  "arguments": [
    {
      "val": "conta de teste",
      "offset": 17
    }
  ],
  "location": "InserirContasSteps.informoAConta(String)"
});
formatter.result({
  "duration": 71154484,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoSalvar()"
});
formatter.result({
  "duration": 560183520,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Conta adicionada com sucesso!",
      "offset": 10
    }
  ],
  "location": "InserirContasSteps.receboA(String)"
});
formatter.result({
  "duration": 31635786,
  "status": "passed"
});
formatter.after({
  "duration": 100304340,
  "status": "passed"
});
formatter.after({
  "duration": 68543627,
  "status": "passed"
});
formatter.background({
  "line": 10,
  "name": "",
  "description": "",
  "type": "background",
  "keyword": "Contexto"
});
formatter.step({
  "line": 11,
  "name": "que estou acessando a aplicação",
  "keyword": "Dado "
});
formatter.step({
  "line": 12,
  "name": "informo o usuairo \"saba@gmail.com\"",
  "keyword": "Quando "
});
formatter.step({
  "line": 13,
  "name": "a senha \"123\"",
  "keyword": "E "
});
formatter.step({
  "line": 14,
  "name": "seleciono entrar",
  "keyword": "E "
});
formatter.step({
  "line": 15,
  "name": "visualizo a pagina inicial",
  "keyword": "Então "
});
formatter.step({
  "line": 16,
  "name": "seleciono conta",
  "keyword": "Quando "
});
formatter.step({
  "line": 17,
  "name": "seleciono Adicionar",
  "keyword": "E "
});
formatter.match({
  "location": "InserirContasSteps.queEstouAcessandoAAplicação()"
});
formatter.result({
  "duration": 1009423242,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "saba@gmail.com",
      "offset": 19
    }
  ],
  "location": "InserirContasSteps.informoOUsuairo(String)"
});
formatter.result({
  "duration": 83165981,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "123",
      "offset": 9
    }
  ],
  "location": "InserirContasSteps.aSenha(String)"
});
formatter.result({
  "duration": 50828112,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoEntrar()"
});
formatter.result({
  "duration": 593224639,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.visualizoAPaginaInicial()"
});
formatter.result({
  "duration": 33204313,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoConta()"
});
formatter.result({
  "duration": 60491104,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoAdicionar()"
});
formatter.result({
  "duration": 270663951,
  "status": "passed"
});
formatter.scenario({
  "line": 27,
  "name": "Deve validar regra de cadastros",
  "description": "",
  "id": "inserir-conta;deve-validar-regra-de-cadastros;;3",
  "type": "scenario",
  "keyword": "Esquema do Cenário",
  "tags": [
    {
      "line": 3,
      "name": "@Funcionais"
    }
  ]
});
formatter.step({
  "line": 20,
  "name": "informo a conta \"\"",
  "matchedColumns": [
    0
  ],
  "keyword": "E "
});
formatter.step({
  "line": 21,
  "name": "seleciono salvar",
  "keyword": "E "
});
formatter.step({
  "line": 22,
  "name": "recebo a \"Informe o nome da conta\"",
  "matchedColumns": [
    1
  ],
  "keyword": "Então "
});
formatter.match({
  "arguments": [
    {
      "val": "",
      "offset": 17
    }
  ],
  "location": "InserirContasSteps.informoAConta(String)"
});
formatter.result({
  "duration": 45102470,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoSalvar()"
});
formatter.result({
  "duration": 281281877,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Informe o nome da conta",
      "offset": 10
    }
  ],
  "location": "InserirContasSteps.receboA(String)"
});
formatter.result({
  "duration": 30101081,
  "status": "passed"
});
formatter.after({
  "duration": 75885280,
  "status": "passed"
});
formatter.after({
  "duration": 68815429,
  "status": "passed"
});
formatter.background({
  "line": 10,
  "name": "",
  "description": "",
  "type": "background",
  "keyword": "Contexto"
});
formatter.step({
  "line": 11,
  "name": "que estou acessando a aplicação",
  "keyword": "Dado "
});
formatter.step({
  "line": 12,
  "name": "informo o usuairo \"saba@gmail.com\"",
  "keyword": "Quando "
});
formatter.step({
  "line": 13,
  "name": "a senha \"123\"",
  "keyword": "E "
});
formatter.step({
  "line": 14,
  "name": "seleciono entrar",
  "keyword": "E "
});
formatter.step({
  "line": 15,
  "name": "visualizo a pagina inicial",
  "keyword": "Então "
});
formatter.step({
  "line": 16,
  "name": "seleciono conta",
  "keyword": "Quando "
});
formatter.step({
  "line": 17,
  "name": "seleciono Adicionar",
  "keyword": "E "
});
formatter.match({
  "location": "InserirContasSteps.queEstouAcessandoAAplicação()"
});
formatter.result({
  "duration": 952844243,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "saba@gmail.com",
      "offset": 19
    }
  ],
  "location": "InserirContasSteps.informoOUsuairo(String)"
});
formatter.result({
  "duration": 76616564,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "123",
      "offset": 9
    }
  ],
  "location": "InserirContasSteps.aSenha(String)"
});
formatter.result({
  "duration": 55046046,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoEntrar()"
});
formatter.result({
  "duration": 605054296,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.visualizoAPaginaInicial()"
});
formatter.result({
  "duration": 31249513,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoConta()"
});
formatter.result({
  "duration": 56813743,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoAdicionar()"
});
formatter.result({
  "duration": 263767358,
  "status": "passed"
});
formatter.scenario({
  "line": 28,
  "name": "Deve validar regra de cadastros",
  "description": "",
  "id": "inserir-conta;deve-validar-regra-de-cadastros;;4",
  "type": "scenario",
  "keyword": "Esquema do Cenário",
  "tags": [
    {
      "line": 3,
      "name": "@Funcionais"
    }
  ]
});
formatter.step({
  "line": 20,
  "name": "informo a conta \"Conta mesmo nome\"",
  "matchedColumns": [
    0
  ],
  "keyword": "E "
});
formatter.step({
  "line": 21,
  "name": "seleciono salvar",
  "keyword": "E "
});
formatter.step({
  "line": 22,
  "name": "recebo a \"Já existe uma conta com esse nome!\"",
  "matchedColumns": [
    1
  ],
  "keyword": "Então "
});
formatter.match({
  "arguments": [
    {
      "val": "Conta mesmo nome",
      "offset": 17
    }
  ],
  "location": "InserirContasSteps.informoAConta(String)"
});
formatter.result({
  "duration": 88673857,
  "status": "passed"
});
formatter.match({
  "location": "InserirContasSteps.selecionoSalvar()"
});
formatter.result({
  "duration": 346026202,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Já existe uma conta com esse nome!",
      "offset": 10
    }
  ],
  "location": "InserirContasSteps.receboA(String)"
});
formatter.result({
  "duration": 30979419,
  "status": "passed"
});
formatter.after({
  "duration": 90665960,
  "status": "passed"
});
formatter.after({
  "duration": 72065043,
  "status": "passed"
});
});