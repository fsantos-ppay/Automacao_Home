*** Settings ***
Documentation    classe criada para a realização dos testes
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/resources/env.resource
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/resources/base.resource
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/HomePO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/CarteiraPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/AreaPixPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/PagarBoletosPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/PagarPessoasPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/QRCodePO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/RecargaCelularPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/PagarFaturaPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/GiftCardPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/AdicionarCartaoPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/CofrinhosPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/GavetaoPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/CobrarAlguemPO.robot
Resource        /Volumes/Macintosh HD/Users/Automacao_Home/screens/${PLATFORM}/CartaoDeTransportePO.robot





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
    [Tags]   robot:skip
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
    [Tags]    robot:skip
    Dado que eu esteja na home do app
    Quando eu selecionar o menu pagar faturas
    Entao o menu de fatura deve ser exibido

Validar menu cartao de transporte
     [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu Cartao de transporte
    Entao o menu cartao de transporte deve ser exibido

Validar menu Gift Cards
    [Tags]    dia_a_dia
    Dado que eu esteja na home do app
    Quando eu selecionar o menu compras de gift card
    Entao o menu de gift card deve ser exibido

Validar menu footer
    [Tags]    footer
    Dado que eu esteja na home do app
    Quando eu scrolar ate o menu footer
    Entao as informacoes do menu footer devem ser exibidas

Acessar Pix pelo gavetao
    [Tags]    gavetao
    Dado que eu esteja na home do app
    Quando eu acessar o menu gavetao
    E selecionar menu Pix
    Entao o menu pix deve ser exibido

Acessar menu pagar Boletos pelo gavetao
    [Tags]    gavetao
    Dado que eu esteja na home do app
    Quando eu acessar o menu gavetao
    E selecionar o menu Pagar Boletos
    Entao o menu pagar boletos deve ser exibido

Acessar o menu pagar com QR Code pelo gavetao
    [Tags]    gavetao
    Dado que eu esteja na home do app
    Quando eu acessar o menu gavetao
    E selecionar o menu Pagar com QR Code
    Entao o menu QR code deve ser exibido
    
Acessar o menu pagar pessoas pelo gavetao
    [Tags]    gavetao
    Dado que eu esteja na home do app
    Quando eu acessar o menu gavetao
    E selecionar o menu Pagar Pessoas
    Entao o menu pagar pessoas deve ser exibido

Acessar o menu cobrar alguem pelo gavetao
    [Tags]    gavetao
    Dado que eu esteja na home do app
    Quando eu acessar o menu gavetao
    E selecionar o menu Cobrar Alguém
    Entao o menu Cobrar alguem deve ser exibido
