*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Pix
Library    AppiumLibrary
*** Variables ***
${BtnTransferir}      xpath=//XCUIElementTypeButton[@value="Transferir"]




*** Keywords ***

Entao o menu pix deve ser exibido
    Page Should Contain Text        Enviar ou receber
    Page Should Contain Element     ${BtnTransferir}