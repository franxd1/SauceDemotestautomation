*** Settings ***
Resource    ../Resources/Steps/FC02_Produtos_Resource.resource
*** Test Cases ***
Cenário 04: Exibição da lista de produtos após login
    Dado que o usuário realizou o login com sucesso
    Quando acessa a página de inventário
    Então o sistema deve exibir a lista de produtos disponíveis
Cenário 05: Visualizar detalhes de um produto
    Dado que o usuário está na página de inventário
    Quando clica no nome de um produto específico
    Então o sistema deve exibir os detalhes do produto selecionado

Cenário 06: Ordenar produtos por nome (A-Z)
    Dado que o usuário está na página de inventário
    Quando seleciona a opção de ordenação "Name (A to Z)"
    Então o sistema deve exibir os produtos ordenados em ordem alfabética crescente