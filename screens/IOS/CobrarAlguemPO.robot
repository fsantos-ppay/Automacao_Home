*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Cobrar Alguem
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu Cobrar alguem deve ser exibido
    Page Should Contain Text    Cobrar
