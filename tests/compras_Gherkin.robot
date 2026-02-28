*** Settings ***
Resource    ../resource/main.robot

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador

*** Test Cases ***
Cenário 1: Validar fluxo de login
    Dado que estou na página de login
    Quando eu preencher o usuario e senha
    Então devo acessar o sistema com sucesso

Cenário 2: Adicionar produto ao carrinho
    Dado que estou na página inicial
    Quando eu selecionar um produto
    Então o carrinho deve conter o produto

Cenário 3: Finalizar compra
    Dado que estou na página meu carrinho
    Quando eu clico em checkout
    E preencho as minhas informações
    E valido os dados e informações da compra
    Então devo conseguir finalizar a compra com sucesso