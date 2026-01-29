*** Settings ***
Resource    ../resource/main.robot

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador

*** Test Cases ***
Cenário 1: Validar fluxo de login
    Dado que estou na página de login
    Quando eu preencher o usuario e senha
    Então devo acessar o sistema com sucesso