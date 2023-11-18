*** Settings ***
Documentation      = Exemplo de suite de testes com falha =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/2_builtin/2_9_falha.robot``
  
*** Variables ***
# robot -d ./results -L trace  .\src\2_builtin\2_9_failure_ky.robot
  
*** Test Cases ***

Teste - Fail
    Log To Console    OI
    Fail    deu erro
    Log To Console    Não será executado

Teste - Fatal error
    Fatal Error

Teste sem erro
    Log To Console    Este teste não possui erro

*** Keywords ***