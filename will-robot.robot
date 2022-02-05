*** Settings ***

Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***

Create a Login in Taskman App
    Comment    This is my first RobotFramework test case!
    Open Taskman Login Page
    Input Text  name:username   teste
    Input Text  name:password   123
    Click Button   Entrar
    Assert
    [Teardown]    Close Browser
    #comments to add extra information to the code

*** Keywords ***

Open Taskman Login Page
    Open Browser  ${Taskman URL}  ${BROWSER}

Assert
    Page Should Contain  As credenciais do usuário estão incorretas

*** Variables ***

${Taskman URL}      https://taskman-django.herokuapp.com/logar_usuario?next=/listar_tarefas/
${BROWSER}        Chrome