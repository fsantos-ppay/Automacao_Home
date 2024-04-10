*** Settings ***
Documentation    Pagina para a documentação dos elementos da tela de Home
Library    AppiumLibrary
*** Variables ***
${BtnHome}        	           xpath=//XCUIElementTypeImage[@name="apl3_ic_home"]/XCUIElementTypeOther
${BtnCarteira}                 xpath=//XCUIElementTypeButton[@name="Carteira"]
${Card360}                     xpath=//XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther
${BtnCofrinho}                 xpath=//XCUIElementTypeButton[@value="Cofrinhos"]
${BtnEmprestimos}              xpath=//XCUIElementTypeButton[@value="Empréstimo"]
${BtnInvestir}                 xpath=//XCUIElementTypeButton[@value="Investir"]
${BtnSeguros}                  xpath=//XCUIElementTypeButton[@value="Seguros"]
${BtnPixTag}                   xpath=//XCUIElementTypeButton[@value="Pix, EM ATÉ 12X"]
${BtnPagarBoleto}              xpath=//XCUIElementTypeButton[@value="Pagar boleto"]
${BtnPagarPessoas}             xpath=//XCUIElementTypeButton[@value="Pagar pessoas"]
${BtnQRCode}                   xpath=//XCUIElementTypeButton[@value="QR Code"]
${BtnRecargaCelular}           xpath=//XCUIElementTypeButton[@value="Recarga de Celular"]
${BtnPagarFatura}              xpath=//XCUIElementTypeButton[@value="Pagar fatura"]
${BtnCartaoTransporte}         xpath=//XCUIElementTypeButton[@value="Cartão de Transporte"]
${BtnGiftCards}                xpath=//XCUIElementTypeButton[@value="Comprar Gift Cards"]
${BtnAdicionarCartao}          xpath=//XCUIElementTypeButton[@value="Adicionar Cartão"]
${BtnMonitorarCPF}             xpath=//XCUIElementTypeButton[@value="Monitorar CPF"]
${BtnCofrinhos}                xpath=//XCUIElementTypeButton[@value="Cofrinhos"]
${HeaderProDiaDia}             xpath=//XCUIElementTypeOther[@value="Pro dia a dia"]
${CardEmprestimo}              xpath=//XCUIElementTypeOther[@value="Empréstimo, Você tem uma parcela em atraso. Evite a negativação, , "]
${BtnCarteiraFooter}           xpath=//XCUIElementTypeButton[@value="Carteira"] 
${BtnCartãoFoorter}            xpath=//XCUIElementTypeButton[@value="Cartão"]
${BtnPagamentosETransacoes}    xpath=//XCUIElementTypeButton[@value="Pagamentos e transações"]
${BtnInvestimentos}            xpath=//XCUIElementTypeButton[@value="Investimentos"]
${BtnComprasEVantantagens}     xpath=//XCUIElementTypeButton[@value="Investimentos"]
${BtnSegurosFooter}            xpath=//XCUIElementTypeButton[@value="Seguros"]
${BtnEmpréstimosFooter}        xpath=//XCUIElementTypeButton[@value="Empréstimos, PRÉ-APROVADO"]
${BtnAjuda}                    xpath=//XCUIElementTypeButton[@value="Ajuda"]

*** Keywords ***
Entao as informacoes da home devem ser exibidas
     Wait Until Page Contains Element       ${BtnHome}
     Wait Until Page Contains               text=Pro dia a dia

Dado que eu esteja na home do app
    Wait Until Page Contains Element       ${BtnHome}

E selecionar o menu carteira
     Click Element                         ${BtnCarteira}

Quando eu escrolar o carrossel para o card de conta
     Swipe     start_x=211     start_y=242       offset_x=107     offset_y=248
     Swipe     start_x=211     start_y=242       offset_x=107     offset_y=248
     Swipe     start_x=211     start_y=242       offset_x=107     offset_y=248 

Entao devem ser exibidas as informacoes da conta do usuario
    Wait Until Element Is Visible         ${Card360}
    Element Should Contain Text    ${Card360}     Saldo em conta

Quando eu scrolar ate os item pro dia a dia 
    Scroll down          ${HeaderProDiaDia}

Quando eu scrolar ate o menu footer
    Scroll Down    ${BtnCartãoFoorter}

Entao as informacoes do menu footer devem ser exibidas
    Page Should Contain Element    ${BtnCarteiraFooter}
    Page Should Contain Element    ${BtnSegurosFooter}


Entao os itens devem ser exibidos em lista
    Page Should Contain Element        ${BtnCofrinho}
    Page Should Contain Element        ${BtnEmprestimos}
    Page Should Contain Element        ${BtnInvestir}
    Page Should Contain Element        ${BtnSeguros}

Entao deve possuir um item com tag
    Page Should Contain Element        ${BtnPixTag} 

E o carrossel esteja sendo exibido
    Page Should Contain Element        ${Card360}

Entao o carossel deve conter 10 elementos
    ${value}    Get Variable Value    ${CardEmprestimo}
    Element Should Contain Text        ${value}    Empréstimo
    Swipe     start_x=211     start_y=242       offset_x=107     offset_y=248
    Element Should Contain Text    ${Card360}    Renegociação
    Swipe     start_x=211     start_y=242       offset_x=107     offset_y=248
    Element Should Contain Text    ${Card360}    Cartão de crédito

Quando eu selecionar o menu pix
    Click Element    ${BtnPixTag}

Quando eu selecionar o menu pagar boletos
    Click Element    ${BtnPagarBoleto} 

Quando eu selecionar o menu pagar pessoas
    Click Element    ${BtnPagarPessoas}

Quando eu selecionar o menu QR Code
    Click Element    ${BtnQRCode}

Quando eu selecionar o menu recarga de celular
    Click Element    ${BtnRecargaCelular}

Quando eu selecionar o menu Cartao de transporte
    Click Element    ${BtnCartaoTransporte}

Quando eu selecionar o menu pagar faturas
    Click Element     ${BtnPagarFatura}

Quando eu selecionar o menu compras de gift card
    Click Element    ${BtnGiftCards}

Quando eu selecionar o menu adicionar cartao
    Click Element    ${BtnAdicionarCartao}

Quando eu selecionar o menu monitorar CPF
    Click Element    ${BtnMonitorarCPF}

Quando eu selecionar o menu cofrinhos
    Click Element    ${BtnCofrinho}