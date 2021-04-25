*** Settings ***
Documentation       Teste e validação da página com o resultadop da busca
Resource            ../components/search.components.robot

*** Keywords ***
Valida o resultado da busca com sucesso 
    Wait Until Element Is Visible       ${TituloSearch}         timeout=${TIME_TO_WAIT}
    Page Should Contain Image           ${ValidaImagemProduto}
    Page Should Contain Element         ${ValidaDescricaoProduto}
    Capture Page Screenshot
    Click Element                       ${VisaoLista}
    Wait Until Element Is Visible       ${BotaoMore}           timeout=${TIME_TO_WAIT}
    Click Element                       ${BotaoMore} 

Valida o resultado da busca com '${MSG_INEXISTENTE}'
    Wait Until Element Is Visible       ${ValidaProdutoInexistente}         timeout=${TIME_TO_WAIT}
    Page Should Contain Element         ${ValidaProdutoInexistente}