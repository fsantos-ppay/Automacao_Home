*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de pagar boletos
Library    AppiumLibrary
*** Variables ***
${TitlePagarBoletos}     xpath=//XCUIElementTypeStaticText[@name="Boletos e contas"]
    

*** Keywords ***

     
Entao o menu pagar boletos deve ser exibido
    Page Should Contain Text    ${TitlePagarBoletos}     Boletos e Contas


