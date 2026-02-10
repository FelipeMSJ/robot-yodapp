*** Settings ***
Resource    ../Resources/home.resource

Test Setup    Abrir aplicativo
Test Teardown    Fechar aplicativo

*** Test Cases ***
Cenário: Acessar tela "Clique em Botões" com arrasto
    DADO que estou na página inicial do aplicativo Yodapp
    QUANDO arrasto a tela para a esquerda
    ENTÃO devo ser redirecionado para a tela "Clique em Botões"

Cenário: Acessar tela "Clique em Botões" com toque
    DADO que estou na página inicial do aplicativo Yodapp
    QUANDO clico no botão "QAX"
    ENTÃO devo ser redirecionado para a tela "Clique em Botões"