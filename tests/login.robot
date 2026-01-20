*** Settings ***

Resource    ${CURDIR}/../common/main.resource
Resource    ${CURDIR}/../resources/login.resource
Resource    ${CURDIR}/../share/gherkin.robot

*** Test Cases ***
Cenário: Login com dados válidos
    Dado que o usuário acessa a tela de login
    Quando informa credenciais válidas
    Então o login é realizado com sucesso