*** Settings ***
Resource    ../Resources/geral.resource

*** Keywords ***

DADO que estou na página inicial do aplicativo Yodapp
    Expect Element    com.qaxperience.yodapp:id/mi_image    visible

QUANDO clico no botão "${NOME_BTN}"
    Tap    //android.widget.Button[@text="${NOME_BTN}"]

ENTÃO devo ser redirecionado para a tela "${TITULO_TELA}"
    Wait Until Page Contains    ${TITULO_TELA}

QUANDO arrasto a tela para a esquerda
    Swipe By Percent    start_x=80    start_y=30   end_x=15    end_y=30   duration=500ms