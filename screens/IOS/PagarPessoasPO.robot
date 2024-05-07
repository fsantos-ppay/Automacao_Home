*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de pagar pessoas
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu pagar pessoas deve ser exibido
    Page Should Contain Text    Comece informando quem você quer encontrar


Entao o menu pagar pessoas gavetao deve ser exibido
    Page Should Contain Text    Encontre o que você precisa