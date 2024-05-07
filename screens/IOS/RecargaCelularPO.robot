*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de recarga de celular
Library    AppiumLibrary
*** Variables ***
    

*** Keywords ***

     
Entao o menu recarga de celular deve ser exibido
    Page Should Contain Text    Para qual número você quer fazer a recarga?


