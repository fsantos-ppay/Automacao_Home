*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de pagar boletos
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu pagar boletos deve ser exibido
    Page Should Contain Text    Contas em Dia


