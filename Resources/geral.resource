*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Abrir aplicativo
    Open Application    http://localhost:4723
        ...                 platformName=Android
        ...                 deviceName=Android Emulator
        ...                 automationName=UIAutomator2
        ...                 app=${EXECDIR}/app/yodapp-beta.apk
        ...                 udid=emulator-5554
        ...                 autoGrantPermissions=true

Fechar aplicativo
    Close Application

Acessar página principal
    Abrir aplicativo
    Tap    //android.widget.Button[@text="QAX"]