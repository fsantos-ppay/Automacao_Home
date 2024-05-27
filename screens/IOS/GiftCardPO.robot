*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Gift card
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu de gift card deve ser exibido
    Page Should Contain Text   Gift Cards

