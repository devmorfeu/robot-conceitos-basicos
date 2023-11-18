*** Settings ***
Documentation      = Exemplo de suite de testes com lib String =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/4_strings/4_1_string.robot``
Library  String

*** Test Cases ***
Teste conversao minusculo maisculo
    ${var}    Set Variable    Esta É uma Variavel
    ${var_Max}     Convert To Lower Case    ${var} 
    ${var_Min}     Convert To Upper Case    ${var} 
    
    Log To Console    ${var_Max}-${var_Min}

Teste Strip
    ${stripped}     Strip String    ${SPACE}Teste${SPACE}

Replace String test    

    ${var}    Set Variable    Teste${\n}2 
    Log To Console    message=${var}
    ${var}     Replace String    ${var}    ${\n}    ${SPACE}
    Log To Console    message=${var}

Teste Random
    ${var}    Set Variable    ROBOT-
    ${random}    Generate Random String    length=8     chars=[NUMBERS]

    ${result}    Set Variable    ${var}${random}
    Log To Console    ${result} 