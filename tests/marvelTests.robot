*** Settings ***
Library        AppiumLibrary
Resource         ../resources/main.resource
Resource         ../steps/marvelSteps.resource

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Cenário 1: Deve validar tela detalhes do 3-D Man
    [Tags]      marvel
    Dado que acesso a tela home da marvel até card  3-D Man
    Quando clicar no card   3-D Man
    Então será exibido detalhes do herói    3-D Man

Cenário 2: Deve validar tela detalhes do Aaron Stack
    [Tags]      marvel
    Dado que acesso a tela home da marvel até card  3-D Man
    Quando clicar no card   Aaron Stack
    Então será exibido detalhes do herói    Aaron Stack