*** Settings ***
Resource    ../Resources/Steps/FC03_Carrinho_de_Compras_Resource.resource
*** Test Cases ***
Cenário 07: Adicionar produtos ao carrinho
    Dado que o usuário está na página de inventário
    Quando clica no botão "Add to cart" de um ou mais produtos
    Então o sistema deve atualizar o ícone do carrinho exibindo a quantidade correta de itens
Cenário 08: Remover produtos do carrinho
    Dado que o usuário tem produtos adicionados ao carrinho
    Quando acessa a página do carrinho
    E clica no botão "Remove" de um produto
    Então o sistema deve remover o produto do carrinho 
Cenário 09: Validar itens no carrinho
    Dado que o usuário adicionou produtos ao carrinho
    Quando acessa a página do carrinho
    Então o sistema deve exibir corretamente os nomes e preços dos produtos adicionados
