*** Settings ***
Documentation     Verificando testes de argumentos
Library    String

*** Variables ***
&{PESSOA}      nome=Joao Gabriel   sobrenome=Monteiro
${email}
${VALOR}
*** Keywords ***
gerar email
    [Arguments]   ${NOME}    ${SOBRENOME}
    ${RANDOM_STRING}   Generate Random String
    ${email}   Set Variable   JoaoGabrielMonteiro${RANDOM_STRING}@testerobot.com
    Log To Console    ${email}

*** Test Cases ***
teste1
    gerar email     ${PESSOA.nome}  ${PESSOA.sobrenome}
      
    




