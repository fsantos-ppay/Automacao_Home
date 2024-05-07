*** Settings ***
Documentation    Arquivo de configuração geral da automação
Library          AppiumLibrary
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/resources/env.resource


*** Keywords ***

Start session
    Run Keyword If      '${PLATFORM}' == 'IOS'  
    ...    Open Application     http://localhost:4723
    ...    automationName=XCUItest
    ...    platformName=IOS
    ...    DeviceName=iPhone
    ...    platformVersion=16.7.7
    ...    bundleId=com.picpay.PicPay-Development
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