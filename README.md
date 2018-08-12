**Teste da Samba Tech**

Este documento tem como finalidade explicar como foi realizado os testes e como configurar os ambientes para execução dos teste automatizados. 

---

# Primeira Fase do Teste

A primeira fase do teste que foi os teste manuais na aplicação foram realizados seguindo a metodologia BDD similar ao que foi aplicado na fase de automação.
Os arquivos BDD com os descritivos da primeira fase se encontra dentro do diretorio sambatech/cucumberteste/tests/features/specs/

Nele sera encontrado o cenario aplicado para a execução do teste manual, os criterios de aceitação levantados.

Os bugs e melhorias encontrados durante o primeira fase estão descritos como issues dentro do projeto do github e indentificadas por tags.

---

# Segunda Fase do teste - Automação

Na segunda fase do teste, foi realizado uma automação em funcionalidades que apresentaram algum bug e outras partes do sistema que apresentaram ser de maior criticidade, foram ultilizados alguns BDDs da primeira fase para especificações de cenarios para automatizaçao.

O diretorio cucumberteste possui os cenarios codificados em liguagem Ruby e o Selenium para interação com webdrive.
O diretorio javateste possui os memso cenarios porem codificados em java e o Selenium para interação com webdrive.

Todo o teste foi realizado usando o Fedora 28 como SO.

Abaixo segue os passos para montar o ambiente e execução deste teste ultlizando cucumber e Ruby.

## Montando o Ambiente em Ruby

1. Faça a Clonagem do repositorio sambatech para um repositorio de sua preferencia em sua maquina.
2. Acesse a pasta /sambatech/cucumberteste/tests.
3. Dentro da pasta execulte o comando "bundle install" para instalar todas as dependencias do projeto.
4. Feito a instalação, acesse o site do [geckodriver](https://github.com/mozilla/geckodriver/releases) e baixe a versão v0.20.1 de acordo com o sistema operacional.
5. Apos o termino do Download, extraia o executável do geckodriver e copie ele para a pasta /bin/.

Apos a execução destes 5 passos, o ambiente para execução dos testes esta pronto.

---

## Rodando os Teste e Coletando Evidencias em Ruby

1. Acesse a pasta /sambatech/cucumberteste/tests
2. Execulte o comando "cucumber features/specs/xxxxxx.feature"
3. Apos o termino da execução, todas as evidencias coletadas poderam ser vista no arquivo sambatech/cucumberteste/tests/results/report.html
4. Em casos de falha no teste, e coletado uma evidencia no formato print que pode ser vista clicando em "Clique aqui para ver a evidência", no final de todos os steps presente no arquivo report.htm

## Estrutura Dos Testes

Todos os cenarios e especificações realizadas podem ser encontradas dentro da pasta /sambatech/cucumberteste/tests/features/specs.

Toda condificação do teste automatizado pode ser encontrada dentro da pasta /sambatech/cucumberteste/tests/features/step_definitions e sua strutura de pageobjects dentro da pasta /sambatech/cucumberteste/tests/features/pages.

Demais pastas são ultilizadas como strutura de configuração e suporte para o projeto. 


## Montando o Ambiente em Java

1. Faça a Clonagem do repositorio sambatech para um repositorio de sua preferencia em sua maquina.
2. Acesse a pasta /sambatech/javateste/tests.
3. 
4. 
5. 

Apos a execução destes 5 passos, o ambiente para execução dos testes esta pronto.

---

## Rodando os Teste e Coletando Evidencias em Ruby

1. 
2. 
3. 
4. 

## Estrutura Dos Testes

