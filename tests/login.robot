*** Settings ***

Resource    ${CURDIR}/../common/main.resource
Resource    ${CURDIR}/../resources/login.resource
Resource    ${CURDIR}/../share/gherkin.robot

*** Test Cases ***
Cenário: Login com dados válidos
    Dado que o usuário acessa a tela de login
    Quando informa credenciais válidas
    Então o login é realizado com sucesso

Cenário: Login com senha inválida
    Dado que o usuário acessa a tela de login
    Quando informa senha inválida
    Então uma mensagem de erro é exibida

Cenário: Login com usuário inválido
    Dado que o usuário acessa a tela de login
    E Loga com usuario invalido
    Então uma mensagem de erro é exibida

Cenário: Login com usuário bloqueado
    Dado que o usuário acessa a tela de login
    Quando informa usuário bloqueado
    Então o acesso é negado

Cenário: Login com senha expirada
    Dado que o usuário acessa a tela de login
    Quando informa senha expirada
    Então o sistema solicita a troca de senha

Cenário: Login com campos vazios
    Dado que o usuário acessa a tela de login
    Quando deixa os campos vazios
    Então uma mensagem de erro é exibida solicitando o preenchimento dos campos

Cenário: Login com usuário inativo
    Dado que o usuário acessa a tela de login
    Quando informa usuário inativo
    Então o acesso é negado
