*** Settings ***
Documentation      = Exemplo de suite de testes realizando CRUD =
...                ---
...                _cmd_: ``robot -L trace -d ./results src/1_projeto/tests/teste_usuarios.robot``

Resource    ../recursos/central.robot

Suite Setup    Criar Sessao
Suite Teardown    Encerrar Sessao

*** Variables ***

*** Test Cases ***

TC01: Teste Crud

    ${ID_USUARIO}    Dado Criação de Usuario com email: "testes_qa@teste.com" e senha: "teste"
    Buscar Usuario    ${ID_USUARIO}    200
    Atualizar Usuario    ${ID_USUARIO}
    Buscar Usuario    ${ID_USUARIO}    200
    Então Deletar "${ID_USUARIO}"