*** Settings ***
Library    SeleniumLibrary

# Keywords Procedural
Resource    pages/loginPage.robot
Resource    pages/produtosPage.robot
Resource    pages/checkoutPage.robot

# Keywords Gherkin
Resource    ../resource/pages_gherkin/loginPage_Gherkin.robot
Resource    ../resource/pages_gherkin/produtosPage_Gherkin.robot
Resource    ../resource/pages_gherkin/checkoutPage_Gherkin.robot

# Variables
Resource    variable.robot

# Navegador
Resource    navegador.robot