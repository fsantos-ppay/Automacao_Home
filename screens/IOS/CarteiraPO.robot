*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela carteira
Library    AppiumLibrary
*** Variables ***
    

${HeaderMinhasContas}        	accessibility_id=Minhas Contas
${HeaderMeusCartoes}            accessibility_id=//XCUIElementTypeButton[@name="Carteira"]

*** Keywords ***
Entao as informacoes da carteira do usuario devem ser exibidas
    Wait Until Page Contains Element    ${HeaderMinhasContas}
    Page Should Contain Element         ${HeaderMinhasContas} 