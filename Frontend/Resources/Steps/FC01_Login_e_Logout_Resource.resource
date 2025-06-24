*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        ../variables/Credenciais.resource
Resource        CommosResource.resource

*** Keywords ***
#DADO
Dado que o usuário acessa a página de login
    ${options}=    Create Dictionary    args=--user-data-dir=C:/TempProfile
    Open Browser    https://www.saucedemo.com/v1/    chrome    chrome_options=${options}

    Validar Que Estou Na Pagina     ${Link_Pagina_De_Login}
Dado que o usuário realizou o login com sucesso
    Realizar login com sucesso
#E
E informa o usuário "standard_user"
    Adicionar texto ao input    ${Login_input_username}    ${Email_valido}

E informa o usuário "usuario_invalido"
    Adicionar texto ao input    ${Login_input_username}    ${Email_invalido}
    
E informa a senha "secret_sauce"
    Adicionar texto ao input    ${Login_input_Password}        ${Senha_valida}
E informa a senha "senha_incorreta"   
    Adicionar texto ao input    ${Login_input_Password}        ${Senha_invalida}
E clica na opção "Logout"
    clicar em Logout
#QUANDO
Quando clica no botão de login
    Click Button    ${Login_Botao_Login}
Quando acessa o menu lateral
    Acessar menu lateral
    
#ENTÃO
Então o sistema deve redirecionar o usuário para a página de inventário
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}
    Close Browser
Então o sistema deve exibir a mensagem de erro "Username and password do not match"
    Validar mensagem de erro credenciais invalidas 
    Close Browser
Então o sistema deve redirecionar o usuário para a página de login
    Sleep    2s
    Location Should Be    https://www.saucedemo.com/v1/index.html
    Close Browser


Validar mensagem de erro credenciais invalidas
   
    #Wait Until Element Is Visible  ${Login_Mensagem_de_Erro}    7s       
    Set Focus To Element    ${Login_Mensagem_de_Erro}
    ${texto}    Get Text    ${Login_Mensagem_de_Erro}
    Should Be Equal    ${texto}  Epic sadface: Username and password do not match any user in this service

Acessar menu lateral
    Click Element    ${Inventario_Menu_lateral}
clicar em Logout
    Click Element    ${Menu_Lateral_Opcao_Logout}
    