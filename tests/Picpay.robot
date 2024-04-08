*** Settings ***
Documentation    classe criada para a realização dos testes
Resource        /Volumes/HD - Mac/Automação Home/resources/base.resource
Resource        /Volumes/HD - Mac/Automação Home/screens/HomePO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/CarteiraPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/AreaPixPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/PagarBoletosPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/PagarPessoasPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/QRCodePO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/RecargaCelularPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/PagarFaturaPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/GiftCardPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/AdicionarCartaoPO.robot
Resource        /Volumes/HD - Mac/Automação Home/screens/CofrinhosPO.robot




Test Setup      Start session
Test Teardown   Finish session

*** Test Cases ***

Exibição dos itens 
    [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu scrolar ate os item pro dia a dia 
    Entao os itens devem ser exibidos em lista
 
 Item com tag
     [Tags]    dia_a_dia
     Dado que eu esteja na home do app
     Quando eu scrolar ate os item pro dia a dia
     Entao deve possuir um item com tag

Exibição dos itens no carrossel
   
    Dado que eu esteja na home do app
    E o carrossel esteja sendo exibido
    Entao o carossel deve conter 10 elementos

Validar menu pix
     [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu pix
    Entao o menu pix deve ser exibido

Validar menu pagar boletos
     [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu pagar boletos
    Entao o menu pagar boletos deve ser exibido

Validar menu pagar pessoas
     [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu pagar pessoas
    Entao o menu pagar pessoas deve ser exibido

Validar menu QRCode
     [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu QR Code
    Entao o menu QR code deve ser exibido

Validar menu Recarga de celular
    [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu recarga de celular
    Entao o menu recarga de celular deve ser exibido

Validar menu cofrinho
    [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu cofrinhos
    Entao o menu cofrinhos deve ser exibido

Validar menu pagar fatura
    
    Dado que eu esteja na home do app
    Quando eu selecionar o menu pagar faturas
    Entao o menu de fatura deve ser exibido

Validar menu cartao de transporte
    Dado que eu esteja na home do app
    Quando eu selecionar o menu Cartao de transporte

Validar menu gift cards
    
    Dado que eu esteja na home do app
    Quando eu selecionar o menu compras de gift card
    Entao o menu de gift card deve ser exibido

Validar menu adicionar cartao
    [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu adicionar cartao
    Entao o menu adicionar cartao deve ser exibido