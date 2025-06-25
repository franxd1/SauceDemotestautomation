*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        ../variables/Credenciais.resource

*** Keywords ***
Validar Que Estou Na Pagina
    [Arguments]    ${url_da_pagina}
    Wait Until Keyword Succeeds    10s    1s    Location Should Be    ${url_da_pagina}

Adicionar texto ao input
    [Arguments]    ${input}     ${texto}
    Set Focus To Element    ${input}
    Input Text    ${input}    ${texto}

    
Realizar login com sucesso
    Open Browser    ${Link_Pagina_De_Login}   
    Adicionar texto ao input    ${Login_input_username}    ${Email_valido}
    Adicionar texto ao input    ${Login_input_Password}        ${Senha_valida}
    Click Button    ${Login_Botao_Login}
    Validar Que Estou Na Pagina     ${Inventario_Link_Pagina_Inventario}