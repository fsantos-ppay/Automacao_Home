*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Cartao de Transporte
Library    AppiumLibrary
*** Variables ***
${PaginaCartaoDeTransporte}        xpath=///XCUIElementTypeStaticText[@name="Informe sua cidade"]
*** Keywords ***

     
Entao o menu cartao de transporte deve ser exibido
   Element Should Contain Text    ${PaginaCartaoDeTransporte}    Informe sua cidade

