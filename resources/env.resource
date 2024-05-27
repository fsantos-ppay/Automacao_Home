*** Settings ***
Documentation    Arquivo para as variaveis globais

*** Variables ***
${PLATFORM}        IOS
${LT_USERNAME}     ${0ENV:LT_USERNAME}
${LT_ACCESS_KEY}   ${ENV:LT_ACCESS_KEY}
${REMOTE_URL}      ${LT_GRID_URL}