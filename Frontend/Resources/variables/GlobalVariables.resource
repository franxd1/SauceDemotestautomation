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
${Inventario_Carrino}    xpath=//*[@id="shopping_cart_container"]/a
${Url_Pagina_Carrinho}    xpath=https://www.saucedemo.com/v1/cart.html
${Carrinho_Botao_Remove}    xpath=/html/body/div/div[2]/div[3]/div/div[1]/div[3]/div[2]/div[2]/button
${Carrinho_Sauce_Labs_Backpack_No_Carrinho}    xpath=/html/body/div/div[2]/div[3]/div/div[1]/div[3]/div[2]/a/div
${Carrinho_Sauce_Labs_Backpack_No_Carrinho_preco}    xpath=/html/body/div/div[2]/div[3]/div/div[1]/div[3]/div[2]/div[2]/div
${Carrinho_titulo_Your_cart}    xpath=//*[@id="contents_wrapper"]/div[2]