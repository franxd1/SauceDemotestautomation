*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        ../variables/Credenciais.resource
Resource        CommosResource.resource

*** Keywords ***
#DADO
Dado que o usuário está na página do carrinho com pelo menos um produto
    Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
    Click Element    ${Inventario_Botao_Add_to_Cart}
    Click Element    ${Inventario_Carrinho}
    Wait Until Element Is Visible    ${Carrinho_titulo_Your_cart} 
Dado que o usuário está na página de checkout
    Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
    Click Element    ${Inventario_Botao_Add_to_Cart}
    Click Element    ${Inventario_Carrinho}
    Wait Until Element Is Visible    ${Carrinho_titulo_Your_cart} 
    Click Element       ${Carrinho_Botao_checkout}
    Validar Que Estou Na Pagina    ${Url_Pagina_Checkout_Step1}
Dado que o usuário está na página de resumo da compra
     Realizar login com sucesso
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
    Click Element    ${Inventario_Botao_Add_to_Cart}
    Click Element    ${Inventario_Carrinho}
    Wait Until Element Is Visible    ${Carrinho_titulo_Your_cart} 
    Click Element       ${Carrinho_Botao_checkout}
    Validar Que Estou Na Pagina    ${Url_Pagina_Checkout_Step1}
    Adicionar texto ao input   ${Checkout_input_First_Name}    Lionel
    Adicionar texto ao input   ${Checkout_Input_Last_Name}    Tester
    Adicionar texto ao input   ${Checkout_Input_Postal_Code}    22780-080
    Click Element    ${Checkout_Botao_Continue}

#QUANDO
Quando clica no botão "Checkout"
    Click Element       ${Carrinho_Botao_checkout}
Quando preenche o campo "First Name" com "Lionel"
    Adicionar texto ao input   ${Checkout_input_First_Name}    Lionel
    
Quando clica no botão "Finish"
    Click Element    ${Checkout_Botao_Finish}
#E
E preenche o campo "Last Name" com "Tester"
    Adicionar texto ao input   ${Checkout_Input_Last_Name}    Tester
E preenche o campo "Postal Code" com "22780-080"
    Adicionar texto ao input   ${Checkout_Input_Postal_Code}    22780-080
    
E clica no botão "Continue"
    Click Element    ${Checkout_Botao_Continue}

E preenche os campos obrigatórios com dados válidos
    Adicionar texto ao input   ${Checkout_input_First_Name}    Lionel
    Adicionar texto ao input   ${Checkout_Input_Last_Name}    Tester
    Adicionar texto ao input   ${Checkout_Input_Postal_Code}    22780-080
E deve exibir o subtotal, o imposto e o total corretamente calculados
    
    ${Texto_valor_Total}    Get Text    ${Checkout_Valor_Total_do_Item}
    Should Be Equal    ${Texto_valor_Total}     Item total: $29.99
    ${Texto_taxa}    Get Text    ${Checkout_Valor_Taxa}
    Should Be Equal     ${Texto_taxa}    Tax: $2.40
    ${Texto_valor_Total_com_taxa}    Get Text     ${Checkout_Valor_Total_Com_taxa}
    Should Be Equal    ${Texto_valor_Total_com_taxa}    Total: $32.39    
    Close Browser
Quando clica no botão "Continue"
    Click Element    ${Checkout_Botao_Continue}
 
#ENTÃO

Então o sistema deve redirecionar o usuário para a página de informações de checkout
     Validar Que Estou Na Pagina    ${Url_Pagina_Checkout_Step1}
     Close Browser
Então o sistema deve exibir o resumo da compra
    Validar Que Estou Na Pagina    ${Url_Pagina_Checkout_Step2}
     Close Browser
Então o sistema deve exibir o resumo da compra com os produtos adicionados
    Wait Until Page Contains Element    ${Carrinho_titulo_Your_cart}
    Wait Until Page Contains Element    ${Checkout_Item_Adicionados}
Então o sistema deve exibir a mensagem de sucesso "THANK YOU FOR YOUR ORDER"
   ${text}    Get Text    ${Finish_THANK_YOU_FOR_YOUR_ORDER}    
    Should Be Equal    ${text}    THANK YOU FOR YOUR ORDER
    Close Browser