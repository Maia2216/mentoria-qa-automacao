*** Settings ***
Resource    ../resource/main.robot

*** Variables ***
${URL}                https://www.saucedemo.com/
${USER}               standard_user
${PASS}               secret_sauce
${BROWSER}            chrome
${LOGIN_USER_INPUT}   id=user-name
${LOGIN_PASS_INPUT}   id=password
${LOGIN_BTN}          id=login-button