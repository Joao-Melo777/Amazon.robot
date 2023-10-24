*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}  https://www.amazon.com.br
${MENU_ELETRONICOS}     //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}   //h1[.='Eletrônicos e Tecnologia']
${TEXTO_HEADER_ELETRONICOS}     Eletrônicos e Tecnologia

*** Keywords ***

Abrir o navegador
   Open Browser  ${URL}   browser=${BROWSER}    options=add_experimental_option("detach", True)
   Maximize Browser Window


Fechar o navegador
    Capture page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
#    go to  url=${URL}
    Wait Until Element Is Visible   ${MENU_ELETRONICOS}  10

Entrar no menu "Eletronicos"
    Click Element    ${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains Element  ${HEADER_ELETRONICOS}      10
    Wait Until Page Contains  ${TEXTO_HEADER_ELETRONICOS}

Verificar se o titulo da pagina fica "${TITULO}"
    Sleep    time_=10
   Title Should Be     title=${TITULO}     

 Verificar se aparece a categoria "Computadores e Informatica"
    Element Should Be Visible    locator=//a[@aria-label='Computadores e Informática']

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text   locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa 
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]

#gherkin-step

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o titulo da pagina fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletronicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br
    Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informatica"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o titulo da pagina fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

#Exercicioudemy

Adicionar o Produto "${PRODUTO}" no carrinho
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]
    Click Element    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]
    Wait Until Element Is Visible    locator=//input[@id='add-to-cart-button']
    Click Element    locator=//input[@id='add-to-cart-button']

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//a[contains(@data-csa-c-type,'button')]
    Click Element     locator=//span[@aria-hidden='true'][contains(.,'Carrinho')]
    Wait Until Element Is Visible    locator=//span[@class='a-truncate-cut'][contains(.,'${PRODUTO}')]


Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=//input[@aria-label='Excluir Console Xbox Series S']

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]

#gherkin_exercicios

Quando adicionar o produto "${PRODUTO}" no carrinho
    Quando pesquisar pelo produto "Xbox Series S"
    Adicionar o Produto "${PRODUTO}" no carrinho

Então o produto "${PRODUTO}" deve ser mostrado no carrinho
    Verificar se o produto "${PRODUTO}" foi adicionado com sucesso

E existe o produto "Console Xbox Series S" no carrinho
    Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio


















    


