*** Settings ***
Documentation    Arquivo para as variaveis globais

*** Variables ***
${PLATFORM}        IOS
${CAPABILITIES}    ..resources/capabilities.json
${LT_USERNAME}     fabricio.santos
${LT_ACCESS_KEY}   qKjyRUVdbDo01XDl3qdK7hdbWHbCFTQNdknvqvbvHhjDLA8Dod
${REMOTE_URL}      https://${LT_USERNAME}:${LT_ACCESS_KEY}@${REMOTE_URL}/wd/hub
