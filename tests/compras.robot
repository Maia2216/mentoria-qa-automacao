*** Settings ***
Resource    ../resource/main.robot

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador

*** Test Cases ***
Cenário 1: Validar fluxo de login
    Acessar a página de login
    Preencher o usuario e senha
    Validar acesso ao site

Cenário 2: Adicionar produto ao carrinho
    Acessar a página de login
    Preencher o usuario e senha
    Selecionar um produto
    Validar produto no carrinho

Cenário 3: Finalizar compra
    Acessar a página de login
    Preencher o usuario e senha
    Selecionar um produto
    Ir para o carrinho
    Clicar em checkout
    Preencher as informações do checkout
    Validar o resumo da compra
    Finalizar a compra