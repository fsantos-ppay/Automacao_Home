*** Settings ***
Documentation    Arquivo de configuração geral da automação
Library          AppiumLibrary
Resource        ../resources/env.resource

*** Variables ***
${platformName}         ios
${deviceName}           iPhone.*
${visual}               True
${network}              True
${isRealMobile}         True
${devicelog}            True
${LT_APP_ID}            lt://proverbial-ios
${LT_GRID_URL}          https://mobile-hub.lambdatest.com/wd/hub
${TIMEOUT}              3000
${version}              15

*** Keywords ***

Open lambda test app
    [Timeout]   ${TIMEOUT}
    ${CAPABILITIES}=    Create Dictionary
    ...   platformName=${platformName}
    ...   platformVersion=${version}
    ...   deviceName=${deviceName}
    ...   visual=${visual}
    ...   network=${network}
    ...   devicelog=${devicelog}
    ...   isRealMobile=${isRealMobile}
    ...   name=LT_Appium_Robot_App_iOS
    ...   build=LT_Appium_Robot_App_Automation
    ...   app=${LT_APP_ID}
    ${REMOTE_URL}=   Set Variable       https://${LT_USERNAME}:${LT_ACCESS_KEY}@${LT_GRID_URL}

    Open Application  ${REMOTE_URL}  ${CAPABILITIES}

Start session
    Run Keyword If      '${PLATFORM}' == 'IOS'  
    ...    Open Application     http://localhost:4723
    ...    automationName=XCUItest
    ...    platformName=IOS
    ...    DeviceName=iPhone
    ...    platformVersion=16.7.7
    ...    bundleId=com.picpay.PicPay
    ...    udid=4a18fdb2b0e6a3e07adc857f54f1ca6e1b09810e
    ...    autoAcceptAlerts=true

    Run Keyword If      '${PLATFORM}' == 'Android'  
    ...    Open Application     http://localhost:4723
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    DeviceName=SM-G570M
    ...    platformVersion=8.0.0
    ...    bundleId=com.picpay.PicPay-Development
    ...    udid=42006644d49f646b
    ...    autoAcceptAlerts=true

Finish session
    Capture Page Screenshot
    Close All Applications