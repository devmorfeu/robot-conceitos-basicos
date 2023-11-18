*** Settings ***
Documentation      = Exemplo de suite de testes com logs =
...                ---
...                _cmd_: ``robot -L trace -d ./results conceitos/2_builtin/2_8_logs.robot``
  
*** Test Cases ***

Teste - Tipos de LOG

    Log To Console    Esse é um log que aparece no console

    Log    Esse é um log que só aparece no reports

    Log Many    Esse     é um     log que só     aparece     no reports    e vai    ficar    separado

    Log Variables