
*** Settings ***
Resource     ../main.robot

*** Keywords ***
Dado que estou na página inicial
    Dado que estou na página de login
    Quando eu preencher o usuario e senha

Quando eu selecionar um produto
    Element Should Be Visible    ${ADD_TO_CARRINHO}    Sauce Labs Backpack
    Click Element    ${ADD_TO_CARRINHO}
    Wait Until Element Is Visible    ${CARRINHO_ITEM}    10s
    Wait Until Element Is Visible    ${SHOPPING_CART_LINK}    10s

Então o carrinho deve conter o produto
    Element Should Contain    ${CARRINHO_ITEM}     1
    Element Should Be Visible    ${SHOPPING_CART_LINK}
