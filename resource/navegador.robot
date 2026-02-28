*** Settings ***
Resource    ../resource/main.robot

*** Keywords ***
Abrir Navegador
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()  sys
    ${prefs}=    Create Dictionary
    ...     credentials_enable_service=${False}
    ...     profile.password_manager_enabled=${False}
    ...     profile.password_manager_leak_detection=${False}
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${chrome_options}    add_argument    --disable-notifications
    Create Webdriver    Chrome    options=${chrome_options}
    Go To    ${URL}
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close Browser