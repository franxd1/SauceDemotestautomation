*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        ../variables/Credenciais.resource
Resource        CommosResource.resource

*** Keywords ***
Dado que o usuário está na página de inventário
    Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}

Dado que o usuário tem produtos adicionados ao carrinho
    Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
    Click Element    ${Inventario_Botao_Add_to_Cart}  

Dado que o usuário adicionou produtos ao carrinho
    Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
    Click Element    ${Inventario_Botao_Add_to_Cart} 

Quando clica no botão "Add to cart" de um ou mais produtos
    Click Element    ${Inventario_Botao_Add_to_Cart}

Quando acessa a página do carrinho
    Click Element    ${Inventario_Carrinho}
    Wait Until Element Is Visible    ${Carrinho_titulo_Your_cart}    

E clica no botão "Remove" de um produto
    Click Element    ${Carrinho_Botao_Remove}

Então o sistema deve atualizar o ícone do carrinho exibindo a quantidade correta de itens
     ${quantidade_carrinho}=    Get Text    ${Inventario_Icone_Carrinho}
    Should Be Equal As Integers    ${quantidade_carrinho}    1
    Close Browser
Então o sistema deve remover o produto do carrinho
    Wait Until Element Is Not Visible    ${Carrinho_Sauce_Labs_Backpack_No_Carrinho}
    Close Browser
    
Então o sistema deve exibir corretamente os nomes e preços dos produtos adicionados
    ${nome_do_produto_no_carrinho}    Get Text    ${Carrinho_Sauce_Labs_Backpack_No_Carrinho}
    Should Be Equal     ${nome_do_produto_no_carrinho}    Sauce Labs Backpack
    ${preco_do_produto_no_carrinho}    Get Text    ${Carrinho_Sauce_Labs_Backpack_No_Carrinho_preco} 
    Should Be Equal    ${preco_do_produto_no_carrinho}    29.99
    Close Browser




