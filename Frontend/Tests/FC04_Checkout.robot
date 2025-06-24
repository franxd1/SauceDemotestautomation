*** Settings ***
Resource    ../Resources/Steps/FC04_Checkout_Resource.resource
*** Test Cases ***
Cenário 10: Iniciar processo de checkout
    Dado que o usuário está na página do carrinho com pelo menos um produto
    Quando clica no botão "Checkout"
    Então o sistema deve redirecionar o usuário para a página de informações de checkout
Cenário 11: Preencher dados obrigatórios do checkout
    Dado que o usuário está na página de checkout
    Quando preenche o campo "First Name" com "João"
    E preenche o campo "Last Name" com "Silva"
    E preenche o campo "Postal Code" com "12345"
    E clica no botão "Continue"
    Então o sistema deve exibir o resumo da compra
Cenário 12: Validar resumo da compra 
    Dado que o usuário está na página de checkout
    E preenche os campos obrigatórios com dados válidos
    Quando clica no botão "Continue"
    Então o sistema deve exibir o resumo da compra com os produtos adicionados
    E deve exibir o subtotal, o imposto e o total corretamente calculados
Cenário 13: Finalizar compra com sucesso
    Dado que o usuário está na página de resumo da compra
    Quando clica no botão "Finish"
    Então o sistema deve exibir a mensagem de sucesso "THANK YOU FOR YOUR ORDER"
