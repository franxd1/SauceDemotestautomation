*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        ../variables/Credenciais.resource
Resource        CommosResource.resource
*** Keywords ***
#DADO
Dado que o usuário realizou o login com sucesso
    Realizar login com sucesso
Dado que o usuário está na página de inventário
    Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
#QUANDO
Quando acessa a página de inventário
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
Quando clica no nome de um produto específico
    Click Element    ${Inventario_Sauce_Labs_backpack}
Quando seleciona a opção de ordenação "Name (Z to A)"
    Click Element    ${Inventario_Botao_de_ordenacao}
    Click Element    ${Inventario_Botao_de_ordenacao_Opçao_de_A_a_Z}
#E
#ENTÃO
Então o sistema deve exibir a lista de produtos disponíveis
    Wait Until Element Is Visible    ${Inventario_Grade_de_produtos}    timeout=10s
    Element Should Be Visible         ${Inventario_Grade_de_produtos}
    Close Browser
Então o sistema deve exibir os detalhes do produto selecionado
    Sleep    2s
    Wait Until Element Is Visible     ${Grade_de_detalhes_do_produto}
    Element Should Be Visible   ${Grade_de_detalhes_do_produto}
    Close Browser
Então o sistema deve exibir os produtos ordenados em ordem alfabética Decrescente
    validar se esta em ordem alfabética decrescente






validar se esta em ordem alfabética decrescente
    ${elementos}=    Get WebElements    css:.inventory_item_name
    ${nomes}=    Create List
    FOR    ${elemento}    IN    @{elementos}
        ${texto}=    Get Text    ${elemento}
        ${nomes}=    Evaluate    ${nomes} + [repr("""${texto}""")]
    END
    ${ordenado}=    Evaluate    sorted(${nomes}, reverse=True)
    Should Be Equal    ${nomes}    ${ordenado}
    Close Browser