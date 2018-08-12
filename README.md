**Teste da Maxmilhas**

Este documento tem como finalidade explicar como foi realizado os testes e como configurar o ambiente Cucumber para execução dos teste automatizados. 

---

# Primeira Fase do Teste

A primeira fase do teste foi realizada seguindo a metodologia BDD similar ao que foi aplicado na segunda fase.
O arquivo com os descritivos da primeira fase se encontra dentro do diretorio maxmilhas/cucumberteste/tests/features/specs/comprarPassagem.feature.

Nele sera encontrado o cenario aplicado para a execução do teste manual, os criterios de aceitação levantados, uma tag @melhorias contendo uma possivel melhoria encontrada para o processo, e uma tag bugs contendo todos os bugs encontrados durante o teste.

---

# Segunda Fase do teste - Automação

Na segunda fase do teste, foi realizado uma automação na busca de voos da pagina principal da MaxMilhas ultilizando a ferramenta Cucumber para especificação de cenarios, liguagem Ruby para a condificação do teste e o Selenium para interação com webdrive.

Todo o teste foi realizado usando o Fedora 28 como SO.

Abaixo segue os passos para montar o ambiente e execução deste teste.

## Montando o Ambiente

1. Faça a Clonagem do repositorio maxmilhas para um repositorio de sua preferencia em sua maquina.
2. Acesse a pasta /maxmilhas/cucumberteste/tests.
3. Dentro da pasta execulte o comando "bundle install" para instalar todas as dependencias do projeto.
4. Feito a instalação, acesse o site do [geckodriver](https://github.com/mozilla/geckodriver/releases) e baixe a versão v0.20.1 de acordo com o sistema operacional.
5. Apos o termino do Download, extraia o executável do geckodriver e copie ele para a pasta /bin/.

Apos a execução destes 5 passos, o ambiente para execução dos testes esta pronto.

---

## Rodando os Teste e Coletando Evidencias

1. Acesse a pasta /maxmilhas/cucumberteste/tests
2. Execulte o comando "cucumber features/specs/buscarVoo.feature"
3. Apos o termino da execução, todas as evidencias coletadas poderam ser vista no arquivo maxmilhas/cucumberteste/tests/results/report.html
4. Em casos de falha no teste, e coletado uma evidencia no formato print que pode ser vista clicando em "Clique aqui para ver a evidência", no final de todos os steps presente no arquivo report.htm

## Estrutura Dos Testes

Todos os cenarios e especificações realizadas podem ser encontradas dentro da pasta /maxmilhas/cucumberteste/tests/features/specs.

Toda condificação do teste automatizado pode ser encontrada dentro da pasta /maxmilhas/cucumberteste/tests/features/step_definitions e sua strutura de pageobjects dentro da pasta /maxmilhas/cucumberteste/tests/features/pages.

Demais pastas são ultilizadas como strutura de configuração e suporte para o projeto. 
