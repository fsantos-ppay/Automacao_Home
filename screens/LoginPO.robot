*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Login
Library    AppiumLibrary
*** Variables ***
    
${BtnEntrar}    	xpath=//XCUIElementTypeButton[@value="Entrar"]
${BtnCriarConta}    //XCUIElementTypeButton[@value="Criar conta"]
${BtnLogin}        	accessibility_id=loginButton


*** Keywords ***
Dado que eu insira um usuario valido
     Click Element        ${BtnEntrar}
     Input Text           accessibility_id=loginTextField    009.538.478-29
     Input Password       accessibility_id=passwordTextField    47586900
     Click Element        ${BtnLogin}
