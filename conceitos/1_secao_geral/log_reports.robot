*** Settings ***
Documentation    = Exemplo de suite de testes com Validações =
...              
...              _cmd_: ``robot -d ./results -L trace  conceitos/1_secao_geral/log_reports.robot``
...    
...              List:
...              - Short item.
...              - Second item is pretty long and it is split to
...              multiple rows. Leading spaces are preserved.
...              - Another short item.

Suite Setup        Abrir página
Suite Teardown     Fechar página
Test setup         Fazer login
Test Teardown      Fazer Logout

*** Variables ***
# robot -L info .\1_introducao\log_reports.robot
# robot -L debug .\1_introducao\log_reports.robot
# robot -L trace .\1_introducao\log_reports.robot

# info - debug - trace
*** Test Cases ***
Teste 1
    Log To Console    Hello world
    ${X}    Set Variable     3
    ${Y}    Set Variable     3.0

    ${X}    Convert To Number    ${X}
    Should Be Equal    ${X}    ${Y}

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