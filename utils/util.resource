*** Settings ***

Library           AppiumLibrary

*** Keywords ***
Realizar swipe de cima para baixo e clique no card
    [Arguments]    ${NOME}
    IF      "${PLATAFORMA}"=="AND"
        Set Global Variable     ${PLATAFORMA_DEVICE}         xpath=//*[contains(@text, '${NOME}')]/..
        
    ELSE IF     "${PLATAFORMA}"=="IOS"
        Set Global Variable     ${PLATAFORMA_DEVICE}         xpath=//*[contains(@text, '${NOME}')]/..
    END
    
    FOR     ${a}    IN RANGE    10
        ${IsElementVisible}=    Run Keyword And Return Status       Element Should Be Visible       ${PLATAFORMA_DEVICE} 
        IF      '${IsElementVisible}'=='False'
            Swipe By Percent    50      50      50      10      2000
        ELSE
            Exit For Loop
        END
    END

    Click Element       ${PLATAFORMA_DEVICE} 