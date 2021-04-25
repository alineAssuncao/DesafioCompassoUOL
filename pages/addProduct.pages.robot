*** Settings ***
Documentation       Teste na página que adiciona o produto ao carrinho de compras
Resource            ../components/addProduct.components.robot

*** Keywords ***
Quando Adiciona o item no carrinho de compra
    Wait Until Element Is Visible        ${BotaoProceder}         timeout=${TIME_TO_WAIT}
    Click Element                        ${BotaoProceder}
