*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de pagar pessoas
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu pagar pessoas deve ser exibido
    Page Should Contain Text    Pagar Pessoas


