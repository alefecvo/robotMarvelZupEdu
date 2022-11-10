*** Settings ***

Library     AppiumLibrary
Variables        environments/env.yml


*** Variables ***
${PLATAFORMA}           ${APPIUM.PLATAFORMA}

*** Keywords ***
# Open session appium
Open Session
    Set Log Level       TRACE
    IF    "${PLATAFORMA}"=="AND"
            Set Appium Timeout           ${APPIUM.TIMEOUT} 
            Open Application    ${APPIUM.BASE_URL} 
            ...                 platformName=Android
            ...                 automationName=uiautomator2
            ...                 appPackage=com.ali.marvelapp
            # ...                 appActivity=com.ali.marvelapp
            ...                 app=${EXECDIR}/${APPIUM.${PLATAFORMA}.APP}
            ...                 deviceName=${APPIUM.${PLATAFORMA}.DEVICE_NAME}
            ...                 udid=${APPIUM.${PLATAFORMA}.DEVICE}
            ...                 autoGrantPermissions=true
            ...                 skipUnlock=true
            ...                 noReset=false
            ...                 noSign=true
            
    ELSE IF    "${PLATAFORMA}"=="IOS"
            Set Appium Timeout           ${APPIUM.TIMEOUT} 
            Open Application    ${APPIUM.BASE_URL} 
            ...                 platformName=iOS
            ...                 platformVersion=${APPIUM.${PLATAFORMA}.DEVICE}
            ...                 automationName=XCUITest
            # ...                 bundleId=com.zup.marvel
            ...                 app=${EXECDIR}/${APPIUM.${PLATAFORMA}.APP}
            ...                 deviceName=${APPIUM.${PLATAFORMA}.DEVICE_NAME}
            ...                 autoGrantPermissions=true
            ...                 showIOSLog=false
            ...                 noReset=false
            ...                 noSign=true
            ...                 useNewWDA=false
            ...                 autoAcceptAlerts=true
               
    END

# Close session appium
Close Session
    Capture Page Screenshot
    Close Application