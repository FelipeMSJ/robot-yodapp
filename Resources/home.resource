*** Settings ***
Resource    ../Resources/geral.resource

*** Keywords ***

DADO que estou na página inicial do aplicativo Yodapp
    Wait Until Page Contains    Yodapp

QUANDO clico no botão "${NOME_BTN}"
    Tap    //android.widget.Button[@text="${NOME_BTN}"]

ENTÃO devo ser redirecionado para a tela "${TITULO_TELA}"
    Wait Until Page Contains    ${TITULO_TELA}