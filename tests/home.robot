*** Settings ***
Resource    ../Resources/home.resource

Test Setup    Abrir aplicativo
Test Teardown    Fechar aplicativo

*** Test Cases ***

Cenário: Abrir o aplicativo com sucesso
    DADO que estou na página inicial do aplicativo Yodapp
    QUANDO clico no botão "QAX"
    ENTÃO devo ser redirecionado para a tela "Clique em Botões"