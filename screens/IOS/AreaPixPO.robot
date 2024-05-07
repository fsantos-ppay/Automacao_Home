*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Pix
Library    AppiumLibrary
*** Variables ***
${BtnTransferir}      xpath=//XCUIElementTypeButton[@value="Transferir"]
${HeaderPix}          xpath=//XCUIElementTypeStaticText[@name="Área Pix"]



*** Keywords ***

Entao o menu pix deve ser exibido
    Element Should Contain Text     ${HeaderPix}        Área Pix
    Page Should Contain Element     ${BtnTransferir}