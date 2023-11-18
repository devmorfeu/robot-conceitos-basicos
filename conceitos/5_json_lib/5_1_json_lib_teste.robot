*** Settings ***
Documentation      = Exemplo de suite de testes com lib Json =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/5_json_lib/5_1_json_lib_teste.robot``
Library  JSONLibrary

*** Test Cases ***
Teste
    ${file}    Load Json From File    ${EXECDIR}/conceitos/5_json_lib/teste.json
    Log To Console    ${file}
    ${tipo}    Evaluate    type($file)
    
    ${file_first_name}    Set Variable    ${file}[nome]
    ${file_last_nome}    Set Variable    ${file}[sobrenome]

*** Keywords ***