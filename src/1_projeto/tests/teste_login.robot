*** Settings ***
Documentation      = Exemplo de suite de testes Realizando login =
...                ---
...                _cmd_: ``robot -L trace -d ./results src/1_projeto/tests/teste_login.robot``

Resource    ../recursos/central.robot

Suite Setup     Criar Sessao
Suite Teardown    Encerrar Sessao

*** Variables ***
${EMAIL}    qa32@qa.com.br
${SENHA}    teste

*** Test Cases ***

TC01: Realizar autenticacao

    ${ID_USUARIO}    Dado Criação de Usuario com email: "${EMAIL}" e senha: "${SENHA}"
    Quando Autenticar Usuario com email: "${EMAIL}" e senha: "${SENHA}"
    Então Deletar "${ID_USUARIO}"

# TC02: Verificar erro ao se autenticar

#     Autenticar Usuario    email_invalido@email.com    321323241    401