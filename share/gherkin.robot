*** Settings ***

Resource    ${CURDIR}/../common/main.resource


*** Keywords ***
Dado que ${keyword}
    Run Keyword  ${keyword}

Quando ${keyword}
    Run Keyword  ${keyword}

E ${keyword}
    Run Keyword  ${keyword}

Então ${keyword}
    Run Keyword  ${keyword}

Cuando ${keyword}
    Run Keyword  ${keyword}

Y ${keyword}
    Run Keyword  ${keyword}

Luego ${keyword}
    Run Keyword  ${keyword}
