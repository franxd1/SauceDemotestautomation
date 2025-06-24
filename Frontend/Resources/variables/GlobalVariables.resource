*** Settings ***

*** Variables ***

${Link_Pagina_De_Login}        https://www.saucedemo.com/v1/
${Login_input_username}    xpath=/html/body/div[2]/div[1]/div/div/form/input[1]
${Login_input_Password}    xpath=/html/body/div[2]/div[1]/div/div/form/input[2]
${Login_Botao_Login}    xpath=/html/body/div[2]/div[1]/div/div/form/input[3]
${Inventario_Link_Pagina_Inventario}    https://www.saucedemo.com/v1/inventory.html
${Login_Mensagem_de_Erro}    xpath=/html/body/div[2]/div[1]/div/div/form/h3 
${Inventario_Menu_lateral}    xpath=/html/body/div/div[1]/div/div[3]/div/button
${Menu_Lateral_Opcao_Logout}    xpath=/html/body/div/div[1]/div/div[2]/div[1]/nav/a[3]
${Inventario_Grade_de_produtos}    xpath=//*[@id="inventory_container"]/div
${Inventario_Sauce_Labs_backpack}    xpath=/html/body/div/div[2]/div[2]/div/div[2]/div/div[1]/div[2]/a/div
${Inventario_Sauce_Labs_backpack_preco}    xpath=/html/body/div/div[2]/div[2]/div/div[2]/div/div[1]/div[3]/div
${Grade_de_detalhes_do_produto}    xpath=/html/body/div/div[2]/div[2]
${Inventario_Botao_de_ordenacao}    xpath=/html/body/div/div[2]/div[2]/div/div[1]/div[3]/select
${Inventario_Botao_de_ordenacao_Opçao_de_A_a_Z}    xpath=/html/body/div/div[2]/div[2]/div/div[1]/div[3]/select/option[2]
${Inventario_Botao_Add_to_Cart}    xpath=//*[@id="inventory_container"]/div/div[1]/div[3]/button
${Inventario_Carrinho}    xpath=//*[@id="shopping_cart_container"]/a
${Url_Pagina_Carrinho}    xpath=https://www.saucedemo.com/v1/cart.html
${Carrinho_Botao_Remove}    xpath=/html/body/div/div[2]/div[3]/div/div[1]/div[3]/div[2]/div[2]/button
${Carrinho_Sauce_Labs_Backpack_No_Carrinho}    xpath=/html/body/div/div[2]/div[3]/div/div[1]/div[3]/div[2]/a/div
${Carrinho_Sauce_Labs_Backpack_No_Carrinho_preco}    xpath=/html/body/div/div[2]/div[3]/div/div[1]/div[3]/div[2]/div[2]/div
${Carrinho_titulo_Your_cart}    xpath=//*[@id="contents_wrapper"]/div[2]
${Inventario_Icone_Carrinho}    css:.shopping_cart_badge
${Carrinho_Botao_checkout}    xpath=/html/body/div/div[2]/div[3]/div/div[2]/a[2]
${Checkout_input_First_Name}    xpath=//*[@id="first-name"]
${Checkout_Input_Last_Name}    xpath=//*[@id="last-name"]    
${Checkout_Input_Postal_Code}    xpath=//*[@id="postal-code"]
${Checkout_Botao_Continue}    xpath=//*[@id="checkout_info_container"]/div/form/div[2]/input
${Checkout_Item_Adicionados}    xpath=//*[@id="checkout_summary_container"]/div/div[1]/div[3]
${Checkout_Valor_Total_do_Item}    xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[5]/text()[2]
${Checkout_Valor_Taxa}    xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[6]/text()[2]
${Checkout_Valor_Total}    xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[5]
${Checkout_Botao_Finish}    xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[8]/a[2]
${Finish_THANK_YOU_FOR_YOUR_ORDER}    xpath=//*[@id="checkout_complete_container"]/h2