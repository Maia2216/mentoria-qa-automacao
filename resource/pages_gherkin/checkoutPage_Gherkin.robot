*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***
Dado que estou na página meu carrinho
    Dado que estou na página inicial
    Quando eu selecionar um produto
    Click Element     ${SHOPPING_CART_LINK}
    Wait Until Element Is Visible    ${BTN_CHECKOUT}   10s

Quando eu clico em checkout
    Wait Until Element Is Enabled    ${BTN_CHECKOUT}   10s
    Click Button    ${BTN_CHECKOUT}
    Wait Until Element Is Visible    ${INPUT_FIRSTNAME}   10s

E preencho as minhas informações
    Input Text       ${INPUT_FIRSTNAME}    ${CHECKOUT_FIRSTNAME}
    Input Text       ${INPUT_LASTNAME}     ${CHECKOUT_LASTNAME}
    Input Text       ${INPUT_ZIPCODE}      ${CHECKOUT_ZIPCODE}
    Click Element    ${BTN_CONTINUE}
    Wait Until Element Is Visible    ${SUMARY_TOTAL}   10s

E valido os dados e informações da compra
    Element Should Be Visible    ${SUMARY_SUBTOTAL}
    Element Should Be Visible    ${SUMARY_TAX}
    Element Should Be Visible    ${SUMARY_TOTAL}
    Element Should Be Visible    ${BTN_FINISH}

Então devo conseguir finalizar a compra com sucesso
    Click Button    ${BTN_FINISH}
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE}   10s
    Element Text Should Be    ${CHECKOUT_COMPLETE}    Thank you for your order!