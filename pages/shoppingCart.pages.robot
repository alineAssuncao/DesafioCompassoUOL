*** Settings ***
Documentation       Validação do carrinho de compra
Resource            ../components/shoppingCart.components.robot

*** Keywords ***
Então valida o carrinho de compra quanto aos seguintes dados: descrição, preço por unidade, preço do envio e preço total
    Wait Until Element Is Visible       ${TituloCarrinho}          timeout=${TIME_TO_WAIT}
    Page Should Contain Image           ${ValidaProduto}
    Page Should Contain Element         ${ValidaDescricaoCar}
    Page Should Contain Element         ${ValidaPrecoUnid} 
    Page Should Contain Element         ${ValidaPrecoEnvio}
    Page Should Contain Element         ${ValidaPrecoTotal}
    

