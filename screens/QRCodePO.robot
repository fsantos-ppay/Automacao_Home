*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de QR Code
Library    AppiumLibrary
*** Variables ***
${LblTituloQrCOde}     xpath=//XCUIElementTypeButton[@value="Cobrar com QR Code"]

*** Keywords ***

     
Entao o menu QR code deve ser exibido
    Wait Until Element Is Visible     ${LblTituloQrCOde}
    Element Should Contain Text   ${LblTituloQrCOde}    Cobrar com QR Code


