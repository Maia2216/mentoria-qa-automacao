
*** Settings ***
Library     SeleniumLibrary
Resource    ../variable.robot

*** Keywords ***
Clicar em checkout
    Wait Until Element Is Enabled    ${BTN_CHECKOUT}   10s
    Click Button     ${BTN_CHECKOUT}
    Wait Until Element Is Visible    ${INPUT_FIRSTNAME}   10s

Preencher as informações do checkout
    Input Text       ${INPUT_FIRSTNAME}    ${CHECKOUT_FIRSTNAME}
    Input Text       ${INPUT_LASTNAME}     ${CHECKOUT_LASTNAME}
    Input Text       ${INPUT_ZIPCODE}      ${CHECKOUT_ZIPCODE}
    Click Element    ${BTN_CONTINUE}
    Wait Until Element Is Visible    ${SUMARY_TOTAL}   10s

Validar o resumo da compra
    Element Should Be Visible    ${SUMARY_SUBTOTAL}
    Element Should Be Visible    ${SUMARY_TAX}
    Element Should Be Visible    ${SUMARY_TOTAL}
    Element Should Be Visible    ${BTN_FINISH}

Finalizar a compra
    Click Button    ${BTN_FINISH}
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE}   10s
    Element Text Should Be    ${CHECKOUT_COMPLETE}    Thank you for your order!
