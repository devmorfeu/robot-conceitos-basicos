*** Settings ***
Documentation      = Exemplo de suite de testes com manipulação de arquivos =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/3_manipulacao_arquivos/3_1_operacao_sistema.robot``
Library   OperatingSystem

*** Test Cases ***
Teste de Operation system
    
    Create File    ${EXECDIR}/conceitos/3_manipulacao_arquivos/example.txt	Hello, world!\n

    Append To File    ${EXECDIR}/conceitos/3_manipulacao_arquivos/example.txt    Teste\n
    Append To File    ${EXECDIR}/conceitos/3_manipulacao_arquivos/example.txt    Teste\n

    #Sobrescreve o arquivo caso ja exista
    #Create File    ${EXECDIR}/conceitos/3_manipulacao_arquivos/example.txt	   BANANA\n

    ${file}    Get File    ${EXECDIR}/conceitos/3_manipulacao_arquivos/example.txt
    Log To Console    ${file}

    ${file_2}    Get File    ${EXECDIR}/conceitos/3_manipulacao_arquivos/teste.json
    Log To Console    ${file_2}

    ${tipo}    Evaluate    type($file_2)

*** Keywords ***