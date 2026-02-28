
*** Settings ***
Library     SeleniumLibrary
Resource    ../variable.robot

*** Keywords ***
Acessar a página de login
    Go To    ${URL}
    
Preencher o usuario e senha
    Wait Until Element Is Visible    ${LOGIN_USER_INPUT}   15s
    Input Text         ${LOGIN_USER_INPUT}    ${USER}
    Input Password     ${LOGIN_PASS_INPUT}    ${PASS}
    Click Button       ${LOGIN_BTN}

Validar acesso ao site
    Wait Until Element Is Visible    ${INVENTORY_LIST}   15s
