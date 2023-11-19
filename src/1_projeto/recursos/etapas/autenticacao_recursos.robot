*** Settings ***
Library    RequestsLibrary

*** Keywords ***
#E
Autenticar Usuario com email: "${EMAIL}" e senha: "${SENHA}"

    ${header}    Create Dictionary    Content-Type=application/json
    ${RESPOSTA}    POST On Session    alias=api    url=/login    headers=${header}    data={"email":"${EMAIL}", "password":"${SENHA}"}    expected_status=200
    Log To Console    ${RESPOSTA}
   
    ${TOKEN}    Set Variable    ${RESPOSTA.json()['authorization']}
    Log To Console    ${TOKEN}
    RETURN     ${TOKEN}