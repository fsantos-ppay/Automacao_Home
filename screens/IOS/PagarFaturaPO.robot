*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de pagar fatura
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu de fatura deve ser exibido
    Page Should Contain Text    Selecione o cartão

