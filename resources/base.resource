*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Start session

    Open Application     http://localhost:4723
    ...    automationName=XCUItest
    ...    platformName=IOS
    ...    DeviceName=iPhone
    ...    platformVersion=16.7
    ...    bundleId=com.picpay.PicPay-Development
    ...    udid=4a18fdb2b0e6a3e07adc857f54f1ca6e1b09810e
    ...    autoAcceptAlerts=true

Finish session
    Capture Page Screenshot
    Close All Applications