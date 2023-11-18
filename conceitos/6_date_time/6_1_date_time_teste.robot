*** Settings ***
Documentation      = Exemplo de suite de testes com lib Json =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/6_date_time/6_1_date_time_teste.robot``
Library  DateTime

*** Test Cases ***
Teste
    Get Current Date    time_zone=local
    Get Current Date    time_zone=UTC

    ${time} =	Convert Time	10 minutes
    ${time} =	Convert Time	10 m

    ${time} =	Convert Time	10 hours
    ${time} =	Convert Time	10 h

    ${time} =	Convert Time	10 seconds
    ${time} =	Convert Time	10 s

    ${time} =	Convert Time	10 ms


*** Keywords ***