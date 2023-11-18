*** Settings ***
Documentation    = Teste utilizando conceitos de Suite Setup, Suite Teardown, Test Setup e Test Teardown =
...
...              _cmd_: ``robot -d ./results -L trace conceitos/1_secao_geral/setup_teardown.robot``


Suite Setup    Abrir página
Suite Teardown    Fechar página
Test setup    Fazer login
Test Teardown    Fazer Logout

    
*** Test Cases ***
Teste 1
    Log To Console    Hello world

Teste 2
    Log To Console    Hello world

Teste 3
    Log To Console    Hello world

Teste 4
    Log To Console    Hello world

*** Keywords ***
Abrir página
    Log To Console    Abrindo a página
Fechar página
    Log To Console    Fechando a página
Fazer login
    Log To Console    Fazendo login
Fazer Logout
    Log To Console    Fazendo logout