*** Settings ***

Library           AppiumLibrary
Resource          ../utils/util.resource 

# *** Variables ***
# ${AND_BTN_CARD}       xpath=//*[contains(@text, '3-D Man')]
# ${IOS_BTN_CARD}       xpath=//*[contains(@text, '3-D Man')]

*** Keywords ***
Aguardar tela carregamento
    [Arguments]    ${NOME}
    # Wait Until Element Is Visible        ${${PLATAFORMA}_BTN_CARD_3D_MAN}
    Wait Until Element Is Visible        xpath=//*[contains(@text, '${NOME}')]

Tocar no card
    [Arguments]    ${NOME}
    # Click Element       ${${PLATAFORMA}_BTN_CARD_3D_MAN}
    # Click Element       xpath=//*[contains(@text, '${NOME}')]/..
    util.Realizar swipe de cima para baixo e clique no card     ${NOME}
    