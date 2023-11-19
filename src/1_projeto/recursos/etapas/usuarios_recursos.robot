*** Settings ***
Library    RequestsLibrary

*** Keywords ***

## Dado
Criação de Usuario com email: "${EMAIL}" e senha: "${SENHA}"
    #Cria Usuario
    ${header}    Create Dictionary    Content-Type=application/json

    ${RESPOSTA}    POST On Session    alias=api    url=/usuarios    headers=${header}    data={"nome":"EU QA Teste", "email":"${EMAIL}", "password":"${SENHA}","administrador":"true"}    expected_status=201
    ${ID_USUARIO}    Set Variable    ${RESPOSTA.json()['_id']}
    Log To Console    ${ID_USUARIO}

    [Return]    ${ID_USUARIO}

Buscar Usuario
    [Arguments]    ${ID_USUARIO}    ${expected_status}

    #Busca Usuario
    ${RESPOSTA}    GET On Session    alias=api    url=/usuarios/${ID_USUARIO}    expected_status=${expected_status}
    ${RESPOSTA_BUSCA}    Set Variable    ${RESPOSTA.json()}
    
    IF    ${expected_status} == 200
        ${EMAIL}    Set Variable    ${RESPOSTA.json()['email']}
        Should Be Equal    ${EMAIL}    testes_qa@teste.com 
    END
    
    Log To Console    ${RESPOSTA_BUSCA}

Atualizar Usuario
    [Arguments]    ${ID_USUARIO}

    #Att Usuario
    ${header}    Create Dictionary    Content-Type=application/json
    ${RESPOSTA}    PUT On Session    alias=api    url=/usuarios/${ID_USUARIO}    headers=${header}    data={"nome":"EU QA Teste 2", "email":"testes_qa@teste.com", "password":"teste","administrador":"true"}    expected_status=200
    ${RESPOSTA_ATT}    Set Variable    ${RESPOSTA.json()}
    Log To Console    ${RESPOSTA_ATT}

Deletar "${ID_USUARIO}"

    #Deleta usuario
    ${header}    Create Dictionary    Content-Type=application/json
    ${RESPOSTA}    DELETE On Session    alias=api    url=/usuarios/${ID_USUARIO}    headers=${header}    expected_status=200
    ${RESPOSTA_DELETE}    Set Variable    ${RESPOSTA.json()}
    Log To Console    ${RESPOSTA_DELETE}

    Buscar Usuario    ${ID_USUARIO}    expected_status=400

Criar Sessao
    #Cria Sessao
    Create Session    alias=api    url=https://serverest.dev    disable_warnings=1

Encerrar Sessao
    Delete All Sessions