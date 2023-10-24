* Settings *
Documentation   Essa suite testa o site Amazon.com.br
Resource        amazon.resources.robot
Test Setup      Abrir o navegador
Task Teardown   Fechar o navegador


* Test Cases *
Caso de Teste 01 - Acesso ao menu "Eletronicos"
     [Documentation]  Esse teste verifica o menu eletronicos do site Amazon.com.br
     ...      e verifica a categoria Computadores e Informatica
     [Tags]     menus    categorias
     Acessar a home page do site Amazon.com.br
     Verificar se o titulo da pagina fica "Amazon.com.br | Tudo pra você, de A a Z."
     Entrar no menu "Eletronicos"
     Verificar se aparece a frase "Eletrônicos e Tecnologia"
     Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"
     Verificar se aparece a categoria "Computadores e Informatica"

Caso de Teste 2 - Pesquisa de um produto
     [Documentation]   Esse teste verifica a busca de um produto
     [Tags]         busca_produtos    lista_busca
     Acessar a home page do site Amazon.com.br
     Digitar o nome do produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa
     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
      [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Remover o produto "Console Xbox Series S" do carrinho
    Verificar se o carrinho fica vazio




