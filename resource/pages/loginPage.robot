*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***
Dado que estou na página de login
    Go To    ${URL}
Quando eu preencher o usuario e senha
    Input Text         ${LOGIN_USER_INPUT}    ${USER}
    Input Password     ${LOGIN_PASS_INPUT}    ${PASS}
    Click Button       ${LOGIN_BTN}
Então devo acessar o sistema com sucesso
    Fechar Navegador