*** Settings ***
Documentation      = Exemplo de suite de testes com condicionais =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/2_builtin/2_4_condicionais.robot``

*** Variables ***
# robot -d ./results -L trace  .\src\2_builtin\2_4_if-else.robot

${A}     234354346
*** Test Cases ***


Teste 1 - IF
    
    IF  ${A} == 1
        Log To Console  É igual a 1
    END

    IF  ${A} == 2
        Log To Console  É igual a 2
    END
    
Teste 2 - IF ELSE

    IF  ${A} == 1
        Log To Console  É igual a 1

    ELSE IF    ${A} == 2
        Log To Console  É igual a 2
    ELSE
        Log To Console  É diferente de 1 e 2
    END