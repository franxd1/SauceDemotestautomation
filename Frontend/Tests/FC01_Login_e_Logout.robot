*** Settings ***
Resource    ../Resources/Steps/FC01_Login_e_Logout_Resource.resource

*** Test Cases ***
C01 - Login com credenciais válidas
    Dado que o usuário acessa a página de login
    E informa o usuário "standard_user"
    E informa a senha "secret_sauce"
    Quando clica no botão de login
    Então o sistema deve redirecionar o usuário para a página de inventário

CN02 - Login com credenciais inválidas
    Dado que o usuário acessa a página de login
    E informa o usuário "usuario_invalido"
    E informa a senha "senha_incorreta"
    Quando clica no botão de login
    Então o sistema deve exibir a mensagem de erro "Username and password do not match"

CN03 - Logout após login bem-sucedido
    Dado que o usuário realizou o login com sucesso
    Quando acessa o menu lateral
    E clica na opção "Logout"
    Então o sistema deve redirecionar o usuário para a página de login
