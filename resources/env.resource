*** Settings ***
Documentation    Arquivo para as variaveis globais

*** Variables ***
${PLATFORM}        IOS
${CAPABILITIES}    ..resources/capabilities.json
${REMOTE_URL}      https://%{LT_USERNAME}:%{LT_ACCESS_KEY}@${REMOTE_URL}/wd/hub
