*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de adicionar cartao
Library    AppiumLibrary
*** Variables ***
${lblCadastroCartao}    xpath=//XCUIElementTypeButton[@value="Cadastrar cartão"]

*** Keywords ***

     
Entao o menu adicionar cartao deve ser exibido
   Element Should Contain Text    ${lblCadastroCartao}      Cadastrar cartão

