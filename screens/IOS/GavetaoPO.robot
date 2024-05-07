*** Settings ***
Documentation    Pagina para a documentação dos elementos do menu gavetão
Library    AppiumLibrary
*** Variables ***
${BtnPix}               xpath=//XCUIElementTypeButton[@value="Pix"]    
${BtnPagarBoletos}      xpath=//XCUIElementTypeButton[@value="Pagar boletos"]
${BtnPagarComQRCode}    xpath=//XCUIElementTypeButton[@value="Pagar com QR Code"]
${BtnPagarPessoas}      xpath=(//XCUIElementTypeButton[@value="Pagar pessoas"])[2]
${BtnCobrarAlguem}      xpath=//XCUIElementTypeButton[@value="Cobrar alguém"]
${BtnCofrinhos}         xpath=(//XCUIElementTypeButton[@value="Cofrinhos"])[2]
*** Keywords ***

E selecionar menu Pix
    Click Element    ${BtnPix}

E selecionar o menu Pagar Boletos
    Click Element    ${BtnPagarBoletos}

E selecionar o menu Pagar com QR Code
    Click Element    ${BtnPagarComQRCode}

E selecionar o menu Pagar Pessoas
    Click Element    ${BtnPagarPessoas}

E selecionar o menu Cobrar Alguém
    Click Element    ${BtnCobrarAlguem}

E selecionar o menu Cofrinhos
    Click Element    ${BtnCofrinhos}