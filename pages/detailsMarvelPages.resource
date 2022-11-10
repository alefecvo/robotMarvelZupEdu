*** Settings ***

Library           AppiumLibrary

*** Keywords ***
Validar tela detalhes vindo do card
    [Arguments]    ${NOME}
    Wait Until Page Contains        ${NOME}
    