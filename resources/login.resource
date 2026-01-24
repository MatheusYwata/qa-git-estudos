*** Settings ***

Resource   ${CURDIR}/../common/main.resource

*** Variables ***
${LOGIN_URL}    https://example.com/login
${BROWSER}      Chrome


*** Keywords ***

o usuário acessa a tela de login
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window