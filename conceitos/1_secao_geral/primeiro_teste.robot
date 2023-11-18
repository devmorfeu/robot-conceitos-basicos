*** Settings ***
Documentation      = Exemplo de suite de testes com Tags =
...                ---
...                _cmd_: ``robot -L trace -d ./results -i smoke_test conceitos/1_introducao/primeiro_teste.robot``

*** Test Cases ***
Teste 1
    [Tags]    smoke_test    test_1
    [Documentation]    Documentação do teste 1
    ...                Continuando a escrever
    Log To Console    Hello world
    KY - teste

Teste 2
    [Tags]    smoke_test    test_2
    Log To Console    Hello world
    KY - teste

Teste 3
    [Tags]    smoke_test    test_3
    Log To Console    Hello world

Teste 4
    [Tags]    smoke_test    test_4
    Log To Console    Hello world

*** Keywords ***
KY - teste
    Log To Console    Passei no teste