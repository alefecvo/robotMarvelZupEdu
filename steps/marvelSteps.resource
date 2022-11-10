*** Settings ***

Library        AppiumLibrary
Resource       ../pages/allPagesMarvel.resource 

***Keywords***
Dado que acesso a tela home da marvel até card
    [Arguments]    ${NOME}
    homeMarvelPages.Aguardar tela carregamento      ${NOME}

Quando clicar no card
    [Arguments]    ${NOME}
    homeMarvelPages.Tocar no card       ${NOME}

Então será exibido detalhes do herói
    [Arguments]    ${NOME}
    detailsMarvelPages.Validar tela detalhes vindo do card      ${NOME}